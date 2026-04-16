#!/usr/bin/env bash
# codex-continue-novel.sh
# Run from the project root:
#   bash ./codex-continue-novel.sh
#
# Context strategy: each chapter runs in a fresh codex exec session (--ephemeral).
# The skill reads project files to rebuild context every chapter,
# so no session history is needed — and context never accumulates.

set -u
set -o pipefail

follow_up=$(cat <<'EOF'
使用novel-control-station技能继续小说的疯狂创作。
必须直接写回项目文件，不要只在标准输出中返回正文。

硬性要求：
1. 继续当前章节链，按顺序创作下一章。
2. 每完成一章，都必须把正文保存到 chapters/ 下对应的下一章文件，并遵守项目当前命名规则。
3. 每完成一章，都必须同步创建或更新对应的 control-cards/ 章节控制卡。
4. 每完成一章，都必须同步更新：
   - 08-dynamic-state.md（每章必更新）
   - logs/writing-log.md（每章必更新）
   - 07-chapter-roadmap.md、06-foreshadow-ledger.md、05-main-plotlines.md（有实质变化时更新）
   - 04-relationship-map.md、02-worldbuilding.md、03-cast-bible.md（内容有变化时更新）
5. 标准输出只保留简短进度说明，不要直接输出整章正文。
6. 如果无法写入上述项目文件，请直接回复 FileWriteBlocked。
7. 如果整本小说已经完成（不是当前章节完成），请直接回复 AllNovelDone。
EOF
)

project_root="__PROJECT_ROOT__"
log_file="$project_root/codex-continue.log"

initialize_utf8_runtime() {
  export LANG="C.UTF-8"
  export LC_ALL="C.UTF-8"
  export PYTHONIOENCODING="UTF-8"
}

ensure_runtime_prerequisites() {
  if ! command -v codex >/dev/null 2>&1; then
    printf 'codex command not found in PATH\n' >&2
    exit 127
  fi

  if [[ "$project_root" == "__PROJECT_ROOT__" ]]; then
    printf 'project_root placeholder has not been replaced\n' >&2
    exit 2
  fi

  if [[ ! -d "$project_root" ]]; then
    printf 'project_root does not exist: %s\n' "$project_root" >&2
    exit 2
  fi
}

ensure_log_file() {
  mkdir -p "$(dirname "$log_file")"
  touch "$log_file"
}

append_log_line() {
  printf '%s\n' "$1" >> "$log_file"
}

log() {
  local line
  line="[$(date '+%Y-%m-%d %H:%M:%S')] $1"
  printf '%s\n' "$line"
  append_log_line "$line"
}

write_command_output() {
  local output_file="$1"
  while IFS= read -r line || [[ -n "$line" ]]; do
    printf '%s\n' "$line"
    append_log_line "$line"
  done < "$output_file"
}

test_stop_signal() {
  local output_file="$1"
  local signal="$2"
  local line trimmed

  while IFS= read -r line || [[ -n "$line" ]]; do
    trimmed="${line#"${line%%[![:space:]]*}"}"
    trimmed="${trimmed%"${trimmed##*[![:space:]]}"}"
    if [[ "$trimmed" == "$signal" ]]; then
      return 0
    fi
  done < "$output_file"

  return 1
}

get_tracked_project_snapshot() {
  local relative_path full_path relative_dir file

  for relative_path in \
    '08-dynamic-state.md' \
    'logs/writing-log.md' \
    '07-chapter-roadmap.md' \
    '06-foreshadow-ledger.md' \
    '05-main-plotlines.md' \
    '04-relationship-map.md' \
    '02-worldbuilding.md' \
    '03-cast-bible.md'; do
    full_path="$project_root/$relative_path"
    if [[ -f "$full_path" ]]; then
      stat -c '%n|%Y|%s' "$full_path"
    fi
  done

  for relative_dir in 'chapters' 'control-cards'; do
    full_path="$project_root/$relative_dir"
    if [[ -d "$full_path" ]]; then
      find "$full_path" -maxdepth 1 -type f -name '*.md' -print | sort | while IFS= read -r file; do
        [[ -n "$file" ]] || continue
        stat -c '%n|%Y|%s' "$file"
      done
    fi
  done
}

run_codex_turn() {
  local output_file="$1"
  local last_msg_file="$2"

  # --ephemeral: 不持久化会话，每章独立，上下文不累积
  # --full-auto: 自动批准工具调用（等价于 hermes --yolo）
  # -C: 指定工作目录
  # --output-last-message: 捕获最后一条消息，用于停止信号检测
  codex exec \
    --full-auto \
    --ephemeral \
    -C "$project_root" \
    --output-last-message "$last_msg_file" \
    "$follow_up" \
    >"$output_file" 2>&1
}

initialize_utf8_runtime
ensure_runtime_prerequisites
ensure_log_file
cd "$project_root" || exit 2
log "开始 marathon 模式（每章独立会话，上下文不累积）"

while true; do
  cd "$project_root" || exit 2
  before_snapshot="$(get_tracked_project_snapshot)"
  output_file="$(mktemp)"
  last_msg_file="$(mktemp)"

  run_codex_turn "$output_file" "$last_msg_file"
  code=$?

  after_snapshot="$(get_tracked_project_snapshot)"
  write_command_output "$output_file"

  # 优先检查最后一条消息（更精准），回退到全量输出扫描
  if test_stop_signal "$last_msg_file" "AllNovelDone" || test_stop_signal "$output_file" "AllNovelDone"; then
    log "收到 AllNovelDone，整本小说已完成，停止脚本"
    rm -f "$output_file" "$last_msg_file"
    break
  fi

  if test_stop_signal "$last_msg_file" "FileWriteBlocked" || test_stop_signal "$output_file" "FileWriteBlocked"; then
    log "收到 FileWriteBlocked，当前会话未能写入项目文件，停止脚本"
    rm -f "$output_file" "$last_msg_file"
    break
  fi

  rm -f "$output_file" "$last_msg_file"

  if [[ $code -eq 0 ]]; then
    if [[ "$before_snapshot" == "$after_snapshot" ]]; then
      log "Codex 会话正常结束，但未检测到项目文件写入，停止脚本"
      break
    fi

    log "章节完成，项目文件已更新，继续下一章"
    continue
  fi

  log "检测到 Codex 异常退出，退出码: $code，准备自动继续"
  sleep 2
done
