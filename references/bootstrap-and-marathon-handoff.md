# 项目启动与马拉松交接 (Bootstrap And Marathon Handoff)

新建项目或准备进入马拉松模式时使用。

## 启动检查清单

- 标准文件已创建：`00-project-overview.md` 到 `09-style-guide.md`
- 标准目录已创建：`chapters/`、`drafts/`、`control-cards/`、`logs/`
- `codex-continue-novel.sh` 已存在于项目根目录
- 脚本来自 `assets/codex-continue-novel.sh`
- 脚本里的项目根路径已经替换成真实路径
- 脚本保留平台对应的 UTF-8 和日志处理
- 用户已经看过并接受完整大纲与人物档案
- `08-dynamic-state.md` 已有可供下一章读取的当前状态

## 交接检查清单

进入马拉松模式前，对用户明确说明：

- 当前会话可以关闭
- 下一步在项目根目录运行命令
- `Ctrl+C` 可以停止循环
- 每一章都会重新读取项目文件，不依赖聊天历史
- 每一章仍会生成控制卡、草稿、接受稿、动态状态和日志
- 只有大纲自然收束时才停，不因固定章数或字数机械收尾

## 示例

```bash
bash ./codex-continue-novel.sh
```

如果自动创建脚本失败，直接把这条命令和缺失的脚本状态告诉用户，不要用含糊说法代替可执行步骤。
