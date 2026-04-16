# Bootstrap And Marathon Handoff

Use this reference only when:

- starting a new novel project
- preparing crazy-writing or auto-continuation handoff

## Startup checklist

1. Create the standard project files first.
2. Read `assets/codex-continue-novel.sh`.
3. Replace `__PROJECT_ROOT__` with the actual absolute project root.
4. Keep the written runner aligned with the current runtime.
   - On Windows PowerShell, keep `UTF-8 with BOM`, not `UTF-8 without BOM`.
   - On Linux or macOS shell, keep the Bash shebang and UTF-8 environment exports intact.
5. Preserve the template's UTF-8 runtime setup and log-writing behavior.
6. Verify that `codex-continue-novel.sh` exists in the project root.
7. Verify that the written script no longer contains `__PROJECT_ROOT__`.
8. Record the launch command in the handoff wording:

```bash
bash ./codex-continue-novel.sh
```

## Handoff checklist

1. Confirm the outline and cast dossier are already approved.
2. Confirm the root runner script exists and is current.
3. Tell the user to close the current session.
4. Tell the user to run:

```bash
bash ./codex-continue-novel.sh
```

5. Tell the user that `Ctrl+C` stops the looping runner.
6. If automatic bootstrap or automatic startup was blocked, say so plainly and present the same command as the manual fallback.

## Example

Example startup handoff:

- project root: `/home/user/novels/qing-ye-ji`
- action: write `/home/user/novels/qing-ye-ji/codex-continue-novel.sh` from the template, replacing only `__PROJECT_ROOT__`, and keep the Bash/UTF-8 runtime settings intact
- user-facing handoff: `关闭当前会话后，在项目根目录运行 bash ./codex-continue-novel.sh`

Example marathon handoff:

- user request: `开启疯狂写作`
- required response: confirm the runner script exists, tell the user to close the current session, then present the exact command block without paraphrasing it away

Note: the runner starts a fresh hermes session for each chapter. Context is rebuilt from project files every chapter rather than carried over from session history, so context does not accumulate across chapters.
