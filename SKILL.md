---
name: novel-control-station
description: Use when writing, planning, continuing, repairing, revising, or running marathon/"疯狂写作"/auto continuation mode for Chinese long-form fiction with recurring characters, multiple plotlines, persistent world rules, chapter-by-chapter continuity needs, or style-specific constraints.
---

# Novel Control Station

## 概览 (Overview)

把长篇小说项目当成一套持续运转的控制系统来做，不要把它当成一次性 prompt。先把项目方向对齐，再把设定、人物、主线、伏笔和章节规划写进标准文件。之后每一章都从这些文件出发，并在章后回写动态状态。角色多、线多、干扰多时，可以临时加一层图谱或召回视图辅助检索，但不能取代核心文档。

## 适用场景 (When to Use)

- 新建小说项目
- 继续连载中的长篇
- 修复设定漂移、人物走形、关系断线
- 重做主线、伏笔或章节规划
- 把连载草稿转成发布向修订稿
- 写作需要明确风格控制的类型小说，如悬疑、喜剧、言情、惊悚、奇幻等

不要把这个 skill 用在一次性的短诗、笑话、零散片段上。只要作品需要持续的世界规则、人物记忆和章节连续性，就适合用它。

## 硬规则 (Hard Rules)

- 除非用户明确要求其他语言，所有规划文档、控制文档和正文输出默认使用中文，优先简体。
- 在主线方向、核心人物张力和结局方向没有对齐前，不要正式进入小说设计。
- 如果大纲基准检查后仍然是口号化主题、人物单薄、线与线互不干扰、结局方向空心，这版大纲不能直接成立。
- 在完整大纲和完整人物档案拿出来之前，不要开始写章节。
- 没读完当前项目所需文件前，不要直接起章。
- 用户要写长篇时，不要把单线平推当成足够结构；默认至少有多条活线同时运行。
- 不要让套路方便、假深刻或装饰性结构压过人的真实、因果压力和社会质地。
- 不要把基准规则当教条。它只是校准用的参照系，必须服从用户目标、类型需求和读者定位。
- 不要照搬样本作品的招牌设定、角色壳、反转机制、场景结构或语言质感。
- 不要把马拉松模式当成可以跳过章节控制、改稿升级、动态更新和日志记录的许可。
- 不要让图谱、召回表或临时索引取代标准项目文件；它们只能做辅助层。
- 不要用点名式 cameo、装饰性提及或清单式回调来应付“元素别忘了”这件事。任何返场都必须改变压力、债务或预期。
- 去 AI 清理不能把文字整体洗平；要保住类型语感、时代质感、叙述立场和人物声音。
- 叙述或内心活动不能轻易滑成书评腔、理论腔或行业术语腔，除非视角人物、时代背景或场景本身真的需要这种词。
- 如果普通读者会被术语、抽象分析词或机构话术挡住阅读，而同样的信息又能通过动作、后果或场景关系表达出来，就不要强留这些词。
- 不要为了“显得有文采”硬塞比喻或拟人。一个比喻只有在它确实来自这个场景的压力、这个人物的看法、这个时刻的代价时，才值得留下；如果它原封不动换个场景也能用，就说明它太模块化。
- 不要靠比喻或直接点名情绪来传递情绪色彩；要让动作、选择、身体反应、对白节奏和沉默自己承担这层压力。
- 默认段落模式是 `web-serial-natural`，除非 `09-style-guide.md` 或当前控制卡明确切到 `long-paragraph`。
- 不要用装饰性空行假装强度。处于 `web-serial-natural` 模式时，叙述段一般保持 `2-4` 句；单句段只给揭示、重击、停顿、钩子这些真正需要的位置用，不能连着当习惯。
- 同一个说话人的连续语气、附带动作和短跟句，如果中间没有打断、调度变化或压力拐点，不要硬拆成多个段落。
- 不要把场景推进写成僵硬公式；控制场景是为了守住压力，不是为了做出“结构感”的假架子。
- 不要把章节标题写成剧透式总结、空洞谜语或与本章压力脱节的装饰标签。
- 如果项目使用章节标题，就要在项目层锁定一套命名系统；除非作品阶段真的变化，否则标题口气要保持一致。
- 信息缺失或互相矛盾时，要先说明风险，再让用户决定是补细节还是直接开写。
- 如果选择带着假设开写，必须把假设记进动态状态文件。
- 任何关键节点一旦确认或写成，就要立刻回写进项目文件，不要只停留在聊天上下文里。关键节点包括书名、核心设定、世界规则、人物档案、大纲决策、章节正文和续写断点。
- 每写完一章，都要先更新动态状态，再进入下一章。
- 写作日志只做审计记录，不是故事事实来源。

## 标准文件 (Standard Files)

每个小说项目都要维护这些文件：

- `00-project-overview.md`
- `01-theme-and-proposition.md`
- `02-worldbuilding.md`
- `03-cast-bible.md`
- `04-relationship-map.md`
- `05-main-plotlines.md`
- `06-foreshadow-ledger.md`
- `07-chapter-roadmap.md`
- `08-dynamic-state.md`
- `09-style-guide.md`
- `chapters/`
- `drafts/`
- `control-cards/`
- `logs/writing-log.md`

目录规则：

- 已接受的章节正文存入 `chapters/`
- 基准检查通过、去 AI 校正之前的结构稿存入 `drafts/`
- 每章一份持久化控制卡存入 `control-cards/`
- 默认文件命名：
  - `drafts/NN-<chapter-title>-draft.md`
  - `chapters/NN-<chapter-title>.md`
  - `control-cards/NN-<chapter-title>-control-card.md`
- 如果项目只用编号章节，把 `<chapter-title>` 替换成简短 slug，不要留空。

新建或恢复这些文件时，读 [document-templates.md](references/document-templates.md)。

基于既有项目重做的规则：

- 当用户基于已有项目说 `重新设定`、`重做` 或 `新建项目目录` 时，先把旧项目目录当成原始素材，不要从零重启。
- 如果项目路径含糊或缺失，先检查同级目录；只有一个明确候选时直接采用，并把新项目写到用户明确要求的新路径下。
- 当结构化文件搜索不稳时，改用终端 `find` 直接看磁盘，再按确切路径读，不要在弱搜索路径上反复重试。
- 重做工作至少要先读旧项目的 `00/01/02/03/04/05/09` 文件，再写新 canon；并记录缺失的标准文件，让重建版本明确补上。
- 把旧项目最强的故事核心保留到新项目里（核心设定、主角引擎、主要关系锚点、主冲突结构、风格目标），但要把 canon 重写成更紧的一版，避免两个版本互相打架。
- 如果旧项目除了标准文件外还有可用的语言或风格制品，要么转写进新项目，要么把约束合并进 `09-style-guide.md`，不要悄悄丢掉。
- 重建完成后，移交前验证新项目根目录里包含完整的标准文件集和续写脚本。

## 项目启动初始化 (Startup Project Bootstrap)

新建项目时，要把项目根目录视为运行控制面，而不是只放 markdown 的文件夹。

创建标准文件之外，还要创建：

- 项目根目录下的 `codex-continue-novel.sh`

这个脚本是马拉松模式的循环续写入口，必须在启动阶段结束前就准备好。
直接使用 [assets/codex-continue-novel.sh](assets/codex-continue-novel.sh) 中的模板，仅替换项目根路径占位符后写入项目根目录。
启动项目或交接进入马拉松模式时，读 [bootstrap-and-marathon-handoff.md](references/bootstrap-and-marathon-handoff.md)。

启动规则：

- 任何新建项目都必须在项目根目录下创建 `codex-continue-novel.sh`
- 必须基于 `assets/codex-continue-novel.sh` 模板生成
- 仅替换项目根路径占位符，不要改其他部分
- 修复脚本时，要保留对应平台的编码与运行时设置
- Windows PowerShell 环境下保留 `UTF-8 with BOM` 和 PowerShell 的 UTF-8 控制台/日志处理
- Linux 或 macOS shell 环境下保留 Bash shebang、UTF-8 环境变量导出和 shell-safe 日志逻辑
- 需要修复时基于模板重建，不要再生成第二份变体
- 马拉松交接前，验证根脚本存在且占位符已替换
- 如果自动写文件被阻断，明确告诉用户启动未能自动完成，让其手动创建或复制脚本后再交接
- 不要假设用户会记住启动命令；交接时把准确命令写进文档

## 二级控制视图 (Secondary Control View)

当人物密度、主线干扰或伏笔体量大到线性翻文档已经低效时，载入 [graph-and-recall-control.md](references/graph-and-recall-control.md)。

它的用途：

- 把当前 canon 转化成一份临时的节点-边控制视图
- 在写下一章前准备一份精简召回切片，避免盲翻
- 检测关系跳变、冷线、回收空悬、世界规则漂移
- 调度人物、主线、关系、伏笔的返场压力

这一层是从标准文件和 `08-dynamic-state.md` 派生出来的。

它可以是临时笔记或可选的 sidecar，但要遵守：

- 任何 canon 修复都先在标准文件里完成
- 不需要也不允许再立一个永久的事实源
- 二级视图与标准文件冲突时，以标准文件为准

## 基础与基准载入 (Canon And Benchmark Loading)

项目启动、重大修订、高层复盘时，读：

- [foundational-literary-principles.md](references/foundational-literary-principles.md)
- [critical-evaluation-standards.md](references/critical-evaluation-standards.md)
- [epoch-and-people-resonance.md](references/epoch-and-people-resonance.md)
- [reader-retention-and-ai-failure-modes.md](references/reader-retention-and-ai-failure-modes.md)
- [popular-fiction-common-laws.md](references/popular-fiction-common-laws.md)
- [genre-benchmark-rules.md](references/genre-benchmark-rules.md)
- [benchmark-trigger-matrix.md](references/benchmark-trigger-matrix.md)

基础类文件的作用是把抽象的写作技艺转成可执行的约束——人物欲望、因果压力、视角、意象纪律、社会压力、结局余味——并把它们落入 `01/02/03/05/09` 的项目事实，不要只当成评论留着。

基准类文件用于判断本项目应使用哪一组基准规则，目标是热度、口碑还是双高平衡，哪些节奏-强度检查保持硬约束，哪些应动态降权，以及哪些原创性和合规警报必须保持启用。

只有在需要追溯出处时，才读 [research-source-notes.md](references/research-source-notes.md) 和 [benchmark-source-trace.md](references/benchmark-source-trace.md)。

## 本地基准样本分析分支 (Local Benchmark Sample Analysis Branch)

当用户要求基于当前目录、当前项目文件夹或一批本地样本来研究小说后再立项时，不要靠泛泛的市场记忆或网文通论，要先看本地文件，再从这些真实样本出发做设计。

规则：

- 批量分析前先明确工作目录；shell 抽取更可靠时，使用固定 `workdir`，不要假设会话根目录就是项目根。
- 在统计趋势之前，分清楚是榜单聚合文件还是单本样本文件；先验证文件结构，不要假设每个文件都包含完整的多本数据集。
- 如果从聚合文件正则抽取的命中数明显异常少，就把这些文件视为统计层面不可靠，把核心分析转向单本样本文件。
- 批量本地文本抽取时，如果结构化读管线给出空或残缺输出，改用终端里的 Python 直读；一旦确认更可靠的本地读路径，不要再在弱路径上重试。
- 当任务是对本地小说样本做语言风格分析时，优先直读原始磁盘文件，而不是用带行号的分页读取，因为插入的行号、分页拼接和分块边界会扭曲段落/句子统计和章节正则识别。
- 至少抽取：标题、分类、标签、简介钩子、第一章开场压力，再对比标题打法、金手指清晰度、钩子速度、关系诱饵和长线可持续性。
- 如果用户明确要求排除某本作品，要把样本文件本身和它的设定影响一起从合成里去掉，不要保留其世界引擎、调子壳或冲突模板的伪装变体。
- 如果上一份立项文件是基于被污染的分析做的，且用户要求重做，就直接覆盖或明确替代旧的立项制品，不要让两份模糊版本同时流通。
- 重做被接受后，立刻把新立项写回磁盘，并通过重读文件头或关键段落进行验证。

下面这些表达通常意味着要走这一分支：

- `研究当前目录这些小说样本`
- `按这批样本重新构思一本新的`
- `排除某本样本后重做`

## 执行方法载入 (Execution Method Loading)

下列参考文件，仅在它们对应的阶段被激活时才载入：

- [power-system-and-golden-finger.md](references/power-system-and-golden-finger.md)
- [interview-and-handoff-flow.md](references/interview-and-handoff-flow.md)
- [character-construction-methods.md](references/character-construction-methods.md)
- [graph-and-recall-control.md](references/graph-and-recall-control.md)
- [dialogue-writing-rules.md](references/dialogue-writing-rules.md)
- [suspense-and-reveal-design.md](references/suspense-and-reveal-design.md)
- [chapter-architecture-rules.md](references/chapter-architecture-rules.md)
- [chapter-title-method.md](references/chapter-title-method.md)
- [scene-execution-patterns.md](references/scene-execution-patterns.md)
- [forgotten-elements-and-line-heat.md](references/forgotten-elements-and-line-heat.md)
- [authenticity-and-de-ai-pass.md](references/authenticity-and-de-ai-pass.md)
- [continuity-and-marathon-mode.md](references/continuity-and-marathon-mode.md)

不要默认把所有章节阶段的参考文件全读一遍。只把路由到真正在生效的那几份。

阶段路由：

- 启动访谈与确认交接：
  - `interview-and-handoff-flow.md`
  - `character-construction-methods.md`
  - 项目使用金手指或力量体系时，加 `power-system-and-golden-finger.md`
- 大纲与路线图设计：
  - `graph-and-recall-control.md`
  - `chapter-architecture-rules.md`
  - `chapter-title-method.md`
  - `character-construction-methods.md`
  - `scene-execution-patterns.md`
  - 项目使用金手指或力量体系时，加 `power-system-and-golden-finger.md`
- 章节起草与修订：
  - `chapter-architecture-rules.md` 始终载入
  - 项目使用章节标题或正在最终定标题时，载入 `chapter-title-method.md`
  - 返场密度高、人物轮换或干扰压力大时，载入 `graph-and-recall-control.md`
  - 对话承担压力时，载入 `dialogue-writing-rules.md`
  - 涉及隐藏与揭示公平时，载入 `suspense-and-reveal-design.md`
  - 章节任务范围太宽、单遍写不动时，载入 `scene-execution-patterns.md`
  - 连载返场风险显著时，载入 `forgotten-elements-and-line-heat.md`
  - 本章金手指或力量体系生效时，载入 `power-system-and-golden-finger.md` 的第 8 节（章节级问题），不要重新加载完整设计方法
  - 已经有结构合格的草稿后，再载入 `authenticity-and-de-ai-pass.md`
  - 续写长篇或马拉松模式运行时，载入 `continuity-and-marathon-mode.md`

## 启动访谈流程 (Startup Interview Flow)

项目启动时，按 [interview-and-handoff-flow.md](references/interview-and-handoff-flow.md) 和 [character-construction-methods.md](references/character-construction-methods.md) 执行访谈。

一次只问一个真正聚焦的问题。

## 有上下文的续写分支 (Context-Rich Continuation Branch)

如果用户在已经讨论了很多设定、人物和路线之后，才要求启用这个 skill，不要再从一套泛泛的开场访谈重来。

如果对话被压缩、部分丢失，或者是跨上下文窗口接力，也不要默认重做前面的分析。先按下面顺序尽量把已经完成的工作找回来：

1. 先看当前项目目录里的标准文件、章节文件、控制卡和草稿文件。
2. 再去搜索最近会话里本书的标题、章节名、路线图词和辨识度高的设定短语。
3. 把恢复出来的大纲、路线图、动态状态和正文续写断点整理成一个临时续写状态。
4. 只有在这些都找不回来时，才向用户要一个最小锚点，比如书名、上一章章名、最后一段或文件路径。

恢复失败时，遵守以下规则：

- 找不回来就找不回来，不要凭模糊记忆、零碎摘要或类型惯性硬编一个“恢复版 canon”。
- 不要把推测出来的设定、人物、主线或路线图直接写进标准文件，冒充原先已经确认过的方案。
- 最多只建立一个空项目骨架，或者明确标注为 `待用户提供锚点/待恢复原方案` 的临时笔记。
- 如果用户给了可靠锚点，就只从这个锚点继续，并明确标出这次续写的边界。
- 如果原项目事实确实无法恢复，就停下来要那个最小缺失锚点，不要擅自做替代版本。

因此，这个分支的正确做法是：

1. 先把当前对话里已经达成一致的内容收拢成一个临时项目方向。
2. 明确告诉用户：你正在沿用哪些已对齐的默认项。
3. 只补那些真正会影响大纲、结局、关系结构、风格强度或标题系统的锁定问题。
4. 这些问题一旦补齐，就直接进入标准文档、大纲和人物档案的正式交接。

以下表达通常意味着应该走这个分支：

- `结合前面讨论`
- `按刚才那些内容继续`
- `别再从头问了`
- `直接把前面的东西整理进去`

这一分支的重点不是重复发现，而是把已经谈妥的内容尽快落入项目 canon，只补真正缺的决策口。

完整的访谈问题集和分支逻辑参见 [interview-and-handoff-flow.md](references/interview-and-handoff-flow.md)。下面这一组锁定问题是进入设计前必须先答完的最小集合——用它来判断还缺什么，但不能用它替代完整访谈流程。

锁定问题：

1. 定位 —— 类型、目标读者、体量、发布模式、核心承诺、社会或时代压力
2. 人物 —— 主角设定、主角核心性格、核心人物群之间的张力；如果类型涉及金手指，要写明类型与核心优势
3. 体量 —— 目标长度、是否多线、预期密度
4. 结局方向 —— 情绪落点、代价、可能的结局形态
5. 风格 —— 主风格、段落模式、明令禁止的写作习惯；完整的风格对齐放到 `interview-and-handoff-flow.md` 的分支问题里继续做

人物压力、必要时的多线逻辑和结局方向没有对齐到足以避免盲写之前，不要进入正式设计。

## 大纲基准检查 (Outline Benchmark Check)

在完整大纲被接受或章节路线图被锁定之前，读 [chapter-architecture-rules.md](references/chapter-architecture-rules.md) 并执行大纲基准检查。

确认下面这些都成立：

- 主题通过选择落地，而不是口号
- 主角和核心人物群有欲望、阻力、代价和弧线方向
- 多条线之间是互相干扰，而不是各自平行漂浮
- 重要人物、主线、伏笔都有看得见的返场逻辑，而不是说断就断
- 所选类型的基准承诺看得见
- 结局方向能同时给出收束和余味
- 如果项目使用金手指或力量体系：金手指的代价与边界写明、绑定到主角核心性格、且至少有一段故事其主要优势不够用
- 如果项目使用主要伏笔线：每条线都有定义清晰的表层形态和回收窗口，并且表层形态在没有暗义时也独立成立

如果大纲基准检查没过：

- 先修大纲
- 同步更新项目文件
- 不要进入章节起草

## 大纲与人物档案交接 (Outline And Cast Handoff)

访谈对齐之后、章节起草之前：

- 给出完整大纲
- 给出完整人物档案

人物档案至少要展示：

- 角色定位
- 核心性格
- 看得见的目标
- 内在缺失
- 关键关系
- 内在矛盾
- 弧线方向
- 说话特征
- 上一次有意义出场的基线
- 已知的返场压力

主角部分如果有金手指，还要写：

- 金手指类型与核心优势
- 成长曲线与下一次突破条件
- 代价与边界
- 当前激活的压力层
- 与核心性格的绑定方式

大纲至少要展示：

- 全局承诺
- 主线与支线
- 核心冲突
- 阶段推进
- 关键转折
- 结局方向

这一交接没完成前，不要开始写章节。

## 直接修改分支 (Direct-Edit Branch)

大纲和人物档案交接之后，用户可能选择直接修改修订。

如果用户给出修改意见：

- 直接编辑当前大纲和人物档案
- 已对齐的内容除非与新改动冲突，否则保留
- 给出修复后的版本

除非用户明确要求重启，不要重新走一整轮访谈。

## 设定优化分支 (Setting Optimization Branch)

当用户说本次会话是要 `优化整体设定`、`修设定`、`统一口径`、`调整术语`，或者要求修动机、术语、世界规则、canon 一致性而不是改正文时，不要悄悄滑进章节级修稿。

规则：

- 先在已有文件里确认范围：分清 `整体设定优化` 与 `章节改稿`
- 用户明确说不要动 `chapters/` 现有稿时，章节文件只能当诊断证据使用
- 先读相关 canon 文件，通常是：
  - `00-project-overview.md`
  - `02-worldbuilding.md`
  - `03-cast-bible.md`
  - `05-main-plotlines.md`
  - `07-chapter-roadmap.md`
  - `08-dynamic-state.md`
  - `09-style-guide.md`
  - 被引用的章节及其控制卡，仅作为问题证据
- 在动正文前，先在 canon 层把设定问题解决

针对动机类问题，比如 `主角为什么要做X`：

- 当作品需要反复进行高风险介入时，不要拿一个泛化的道德形容词（`因为善良`、`因为正义`）当成长线引擎
- 如果问题是从已写章节里发现的，先把 `动作成立` 与 `动作归因偏软` 分开看；很多时候场景里证据足够，但 canon 解释让动作显得像通用美德
- 把驱动重新塑造成有选择性、有结构的触发机制，能撑得住连载
- 写明明确的行动条件，而不是道德形容词：主角看到什么、核实了什么、不能容忍什么、什么样的处境会真正让他动手
- 必要时把触发器形式化为短链：`[感知到信号 X] -> [核实条件 Y] -> [不能容忍 Z] -> [与旧债共振]`
- 把"主角在做什么"展开成不止一个动词；通常更强的 canon 表述是一个复合动作，包含他在拿走、阻挡或主张什么，连同表层动作一起
- 如果想要的长线引擎是某种本能或拒绝模式，就在 canon 里用直白话写明，并让后续章节逻辑都从这一句继承
- 把修复后的动机写进项目总览、人物档案、主线、风格指南，让后面章节继承同一口径

针对术语类问题，比如 `专有名词太突兀`：

- 不要靠盲删所有概念词来解决
- 用户引用了某一章但禁止改章时，把这一章和它的控制卡当作诊断证据，只在 canon 层修
- 先决定哪些词是：
  - 场景优先的日常词
  - 中层设定词
  - 核心世界词
- 强制执行规则：`先见现象，后给名字，再系统化`
- 当一个词读起来突兀时，先判断问题是词本身还是揭示顺序；很多核心词只要被压在具体现象之后就能成立
- 早期章节语言要保持可读，使用看得见、画面感强的标签去描述读者感受到的东西，再让人物和 canon 在后面把它系统化
- 如果一个词显得过于"作者腔"或出现得太早，把它从核心词降级，或者保留为有限的世界内俚语，而不是强行塞进通篇叙述
- 对于带有强烈作者声音的硬调标签，考虑它更适合放在人物对白里，而不是叙述者层面的世界 bible 术语
- 把术语分层结果写进 `09-style-guide.md`

设定优化的回写清单：

- `00-project-overview.md`：补上项目层的优化结论或新的核心承诺
- `02-worldbuilding.md`：更新核心概念定义和规则系统
- `03-cast-bible.md`：更新主角动机、触发逻辑和关系压力
- `05-main-plotlines.md`：用新口径重写长线冲突
- `09-style-guide.md`：锁定术语分层和动机表达规则
- 然后跑一遍一致性检查：搜旧用语残留、重复条目和那些会把项目悄悄拖回旧框架的句子

如果优化改了 canon 但用户仍然不希望改章节：

- canon 回写和复核完就停下
- 总结后续章节执行该如何遵循新设定
- 没有用户明确扩大范围前，不要悄悄改章节正文

## 信息缺失分支 (Missing Information Branch)

当文件或用户输入留有空缺时：

1. 列出缺失、冲突或风险项。
2. 说明每一项会带来什么威胁。
3. 只给出两个分支：
   - `补充细节`
   - `直接开写`

如果用户选择 `直接开写`：

- 做最小、最安全的假设
- 在文中标注为临时
- 写进 `08-dynamic-state.md` 的待确认区

## 章节标题控制 (Chapter Title Control)

当项目使用章节标题、用户要求给章节命名，或者原本的纯编号系统需要重新评估时，读取 [chapter-title-method.md](references/chapter-title-method.md)。

规则如下：

- 章节标题不是强制项。若作品更适合纯编号、更快节奏或更隐形的推进方式，纯编号完全成立。
- 一旦项目决定使用章节标题，就要把同一套命名系统锁进 `00-project-overview.md`、`07-chapter-roadmap.md` 和 `09-style-guide.md`。
- 每个标题只承担一个主要任务，最多再加一个次要任务：钩子、聚焦、定位、意象回环或声音提示。
- 起章前先依据章节控制卡生成 `3-5` 个标题候选，再选一个工作标题进入写作。
- 不要把标题写成钝总结、剧透标签、假诗意烟雾或连载填空用的空壳词。
- 章节通过结构检查和去 AI 检查后，要再跑一次“标题是否贴章”的复核；如果本章真正的重心已经变了，就要替换掉工作标题。

## 章节工作流 (Chapter Workflow)

每一章都按这个顺序走：

1. 如果项目刚启动、刚经历结构性转向，或者正在做高层复盘，先读基础 canon 文件。
2. 读取 `08-dynamic-state.md` 和 `09-style-guide.md`。
3. 用 [graph-and-recall-control.md](references/graph-and-recall-control.md) 先做一份召回切片：
   - 把本章相关的人物、关系、主线、伏笔、世界规则和情感债从动态状态里拉出来。
   - 标出哪些是热的、哪些在变冷、哪些本章绝对不能忘。
   - 只有当召回切片暴露了缺口时，才回头去读完整的 `03-cast-bible.md`、`05-main-plotlines.md`、`06-foreshadow-ledger.md`、`07-chapter-roadmap.md`。
   - `00-project-overview.md` 只在项目启动或发生重大结构转向后重读；连载稳定推进时不用每章重复读。
4. 只读取这一章真正需要的内部风格模块：
   - 先用 `09-style-guide.md` 判断这章的风格平衡、主副风格边界、强度范围和伪风格漂移风险。
   - 再从 [style-modules/index.md](references/style-modules/index.md) 里选择本章要读的风格模块。
   - 每个模块先读 `core.md`，只有确实需要时才继续往深层文档钻。
5. 只读取这一章真正需要的执行方法参考：
   - 一定要读 `chapter-architecture-rules.md`
   - 项目有标题、或当前要定标题时，读 `chapter-title-method.md`
   - 对话压力重时，读 `dialogue-writing-rules.md`
   - 这一章要处理悬念或揭示时，读 `suspense-and-reveal-design.md`
   - 章节需要多单元结构控制时，读 `scene-execution-patterns.md`
   - 元素返场与热度管理重要时，读 `forgotten-elements-and-line-heat.md`
   - 金手指/力量体系在本章起作用时，读 `power-system-and-golden-finger.md` 的第 8 节
   - 连续续写或自动推进时，读 `continuity-and-marathon-mode.md`
   - 只有在已经有一版结构合格的草稿后，才读 `authenticity-and-de-ai-pass.md`
6. 扫描以下风险：
   - 设定冲突
   - 人物走形
   - 关系连续性断裂
   - 情感债被遗忘
   - 该返场的人物或关系拖得太久
   - 主线变冷但没被推进、提醒或合理休眠
   - 伏笔掉线 —— 先看 `08-dynamic-state.md` 里的伏笔摘要；只有动态状态看不够时，才去翻完整的 `06-foreshadow-ledger.md`
   - 回收窗口没铺到位
   - 某条主线长期失踪
   - 世界规则被忘记
   - 套路方便压过人的真实
   - 社会压力或时代压力消失
   - 通用 AI 句壳、假总结句、过于工整的对比句
   - 分析腔、平台文案腔，或没来由的专业术语
   - 段落模式漂移，比如装饰性空行、同一说话人乱拆段、无必要的单句段连发
7. 用 [chapter-control-card.md](references/chapter-control-card.md) 生成本章控制卡：
   - 当风格压力重要时，把风格强度、段落模式、正在生效的风格驱动、计划回收点和伪风格漂移一起记上。
   - 把控制卡写入 `control-cards/NN-<chapter-title>-control-card.md`；如果标题还没最终定，就先用稳定的工作 slug，最后定标题时再改名。
8. 如果项目使用章节标题，就用 [chapter-title-method.md](references/chapter-title-method.md) 先生成 `3-5` 个标题候选：
   - 选一个符合本项目命名系统的工作标题。
   - 把工作标题同步记录到控制卡和 `07-chapter-roadmap.md`。
9. 如果风险扫描显示问题严重，转入“信息缺失分支”。
10. 根据控制卡起草本章：
   - 如果这一章需要更紧的控制，就按场景单元或压力单元逐段推进，必要时结合 [scene-execution-patterns.md](references/scene-execution-patterns.md)。
   - 段落模式默认继承 `09-style-guide.md`，除非控制卡里写了本章覆盖。
   - 在 `web-serial-natural` 模式下，叙述段大多保持 `2-4` 句；除非场景真的是为了形成重击，否则不要连着用单句段。
   - 同一个说话人的连续语气、附带动作和短跟句，除非压力或调度发生变化，否则不要乱拆段。
   - 段落的作用是区分说话人、时空/视角切换和真正的压力拐点，而不是装饰呼吸感。
11. 跑一遍章节基准检查。
12. 如果基准检查没过，先进入改稿升级，不要直接接受本章。
13. 在做去 AI 校正前，把结构稿先存到 `drafts/NN-<chapter-title>-draft.md`。
14. 然后按 [authenticity-and-de-ai-pass.md](references/authenticity-and-de-ai-pass.md) 做去 AI 校正：
   - 先清掉通用 AI 句型、假深刻和抽象总结。
   - 如果专业化措辞并非故事必需，就删掉或翻译成更能被读者直接感到的说法。
   - 最后再把具体细节、节奏变化和项目专属声音补回来。
15. 再跑一次去 AI 后复核：
   - 连续性事实是否还成立
   - 人物声音和关系压力有没有被洗平或洗偏
   - 钩子、局部收束和余味是否还在
   - 段落模式是否仍然正确，有没有重新落回装饰性空行
   - 可读性有没有被多余术语挡住
   - 真正需要保留的专业词、时代词、设定词有没有误删
16. 如果项目使用章节标题，再做一次标题贴章复核：
   - 看标题是否还匹配本章的任务、转折、余味和声音。
   - 如果本章真正重心变了，就换掉工作标题。
17. 从连续性、风格完整性、主题承压、批评标准和返场是否真正改变压力等方面，再整体审一遍本章。
18. 回写动态和结构文件：
   - 把接受稿写入 `chapters/NN-<chapter-title>.md`
   - 保证 `chapters/` 和 `control-cards/` 的标题、编号与接受稿一致
19. 在写作日志里记录本章和相关文件更新。

## 遗忘元素控制 (Forgotten Element Control)

当项目篇幅长、密度高或连载程度深时，在规划和复核阶段运行 [forgotten-elements-and-line-heat.md](references/forgotten-elements-and-line-heat.md)。

可能的处理结果：

- 直接推进
- 压力提醒
- 合理休眠标注
- 收束或归档

不要用点名式 cameo、随机提醒或不改变压力的假回调来应付这项检查。

## 改稿升级 (Rewrite Escalation)

如果章节基准检查没过，就按下面的层级处理：

1. 第一次失败：
   - 按问题清单重写整章。
2. 第二次失败：
   - 只针对失败维度重写，并提高控制强度。
3. 第三次失败：
   - 停止盲目的整章重刷。
   - 先总结哪些项一直不过。
   - 再总结最可能的根因。
   - 明确问题属于大纲、人物设计、节奏，还是主题承重结构。
   - 之后按根因修，而不是随机再试一遍。

## 马拉松模式 (Marathon Mode)

只有在用户已经确认当前大纲和完整人物档案之后，才能进入马拉松模式。

如果用户要求疯狂写作、不断续写、自动续写或长时间无干预推进：

- 读取 [bootstrap-and-marathon-handoff.md](references/bootstrap-and-marathon-handoff.md)
- 在交接前确认项目根目录已经有 `codex-continue-novel.sh`
- 如果脚本缺失或过期，先用 `assets/codex-continue-novel.sh` 补建或修复
- 告诉用户先关闭当前会话
- 再告诉用户在项目根目录执行：

```bash
bash ./codex-continue-novel.sh
```

- 告诉用户用 `Ctrl+C` 停止循环续写脚本
- 如果自动启动受阻，就把同一条命令明确给用户作为手动兜底，而不是含糊描述流程

进入马拉松模式后：

- 不再按章节反复向用户确认
- 但内部控制流程一项都不能省
- 每一章都在新会话里运行；上下文不是从聊天历史直接接着走，而是每章都从项目文件重建

马拉松模式的分层回写规则：

- 每章都要更新 `08-dynamic-state.md`（补新状态，移除本章已解决的延续项），并写入 `drafts/NN-<title>-draft.md`、`chapters/NN-<title>.md`、`control-cards/NN-<title>-control-card.md`，同时追加 `logs/writing-log.md`
- 每 `3-5` 章，或内容确实发生实质推进时，再更新 `05-main-plotlines.md`、`06-foreshadow-ledger.md`、`07-chapter-roadmap.md`；更新 `06-foreshadow-ledger.md` 时，把已回收伏笔移到文末 `## Archive`，不要删除，也不要继续留在活跃区；更新 `07-chapter-roadmap.md` 时，把已完成章节移到文末 `## Archive`
- 只有在内容真的变化时，才更新 `02-worldbuilding.md`、`03-cast-bible.md`、`04-relationship-map.md`

没有变化的文件不要硬写回。`08-dynamic-state.md` 是活状态；其他文件是稳定 canon，按需修订。

在马拉松模式下，控制卡可以精简，只填这一章真正会变化的字段：`chapter_mission`、`scene_units`、`recall_pressure`、`new_plants`、`active_callbacks`、`chapter_end_hook`、`risk_scan`。像 `benchmark_group`、`paragraph_mode`、`style_intensity`、`primary_style`、`support_style` 这些较稳定的字段，默认从 `control-cards/` 里最近一份控制卡继承，只有本章确实变了才改。

但即便是马拉松模式，每章仍然必须做：

- 必要文件读取（先读动态状态和风格指南；其他文件只在召回切片暴露缺口时补读）
- 召回切片准备（马拉松模式下这是必做项）
- 章节控制卡
- 工作标题生成，以及标题项目下的最终贴章复核
- 风格模块读取
- 遗忘元素与线热扫描
- 基准检查与连续性检查
- 必要时的改稿升级
- 去 AI 校正
- 去 AI 后复核
- 动态状态更新
- 结构文件修补
- 写作日志记录

只有在当前章节已经接受并完成回写后，才能自动推进到下一章。

马拉松模式的停止条件只能来自大纲自然收束：

- 主线已经解决
- 支线已经收束，或有明确且合理的余味保留
- 主要债务已经偿还或转化
- 结局方向已经兑现

不要因为固定章数或字数到了就机械收尾。
