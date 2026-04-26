# Release Notes

## 0.3.0

叙述口音系统是本版本的核心新增。此前 de-AI 校正的第三轮"补回人味"缺乏方向——会在所有可选方向里取均值，导致干净但没口音。现在通过七个口音参数和四个参考类型（吐槽解构型、冷峻画面型、沉稳记叙型、混合过渡型），补写时有明确偏好方向。

质量检查与回写规则从 SKILL.md 中独立为专门文件，章节基准检查标准、权重自适应逻辑和回写流程现在有精确的操作定义。

SKILL.md 的结构完整性也得到了修补——此前多个参考文件（quality-and-writeback-checks.md、chapter-control-card.md、logging-rules.md）未被执行方法列表和阶段路由表覆盖，召回切片的强制/条件语义三处矛盾也已统一。

### 新增

- `references/narrative-voice-construction.md`：叙述口音构建系统
- `references/quality-and-writeback-checks.md`：章节基准检查与回写规则

### 修改

- `SKILL.md`：设定优化分支、直接修改分支、信息缺失分支；执行方法列表和阶段路由表补全；召回切片语义统一
- `references/authenticity-and-de-ai-pass.md`：比喻/拟人准入规则、口音参数集成
- `references/document-templates.md`：09-style-guide 模板增加口音参数字段

## 0.2.4

马拉松模式回写强化。修复了马拉松模式下结构文件（05/06/07）的更新频率模糊、伏笔和章节路线图缺少归档机制、动态状态中已解决项堆积等问题。

## 0.2.0

首次公开发布。完整的五阶段长篇小说控制系统。
