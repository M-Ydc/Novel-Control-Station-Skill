---
name: novel-control-station
description: Use when writing, planning, continuing, repairing, revising, or running marathon/"疯狂写作"/auto continuation mode for Chinese long-form fiction with recurring characters, multiple plotlines, persistent world rules, chapter-by-chapter continuity needs, or style-specific constraints.
---

# Novel Control Station

## Overview

Run fiction projects like a controlled long-form system, not a one-shot prompt. Align the novel first, store project truth in standard files, drive each chapter from those files, and update dynamic state after every chapter. When density rises, add a lightweight secondary control view for recall, line heat, and graph-style interference checks without replacing the core files.

## When to Use

- Starting a new novel project
- Continuing a serialized story
- Repairing setting drift, character distortion, or dropped relationships
- Rebuilding plotlines, foreshadowing, or chapter plans
- Switching between serialized drafting and publication-oriented revision
- Writing fiction that needs controlled style modules such as suspense, humor, romance, literary depth, horror, fantasy, or mystery

Do not use this skill for one-off poems, short jokes, or isolated scenes that do not need persistent continuity.

## Hard Rules

- Unless the user explicitly requests another language, all planning artifacts, control documents, and fiction output must be written in Chinese. Default to simplified Chinese.
- Do not begin formal novel design until the main plot direction, core character tension, and ending direction are aligned.
- Do not let a full outline stand if benchmark outline checks still show slogan themes, flat characters, weak line interference, or hollow ending direction.
- Do not start chapter drafting before presenting the full outline and full cast dossier.
- Do not draft a chapter before reading the required project files.
- Do not treat a single flat plot as sufficient when the user wants a long-form novel. Default to multiple active lines.
- Do not let trope convenience, fake depth, or decorative structure override human truth, causal pressure, or social texture.
- Do not treat benchmark logic as doctrine. Use it as a calibrated reference system that must adapt to user intent, genre, and target readership.
- Do not copy a sample work's signature setup, role shell, twist engine, scene pattern, or language texture.
- Do not treat marathon mode as permission to skip chapter control, rewrite escalation, dynamic updates, or logging.
- Do not let a secondary graph, recall map, or scratch index override the standard project files. Derived control views are support systems only.
- Do not satisfy forgotten-element checks with token cameos, cosmetic mentions, or checklist references. Re-entry must change pressure, debt, or expectation.
- Do not run de-AI cleanup as blind flattening. Preserve genre register, era texture, narrator stance, and character voice.
- Do not let narration or interiority slide into review copy, theory-heavy explanation, or industry jargon unless the point of view, profession, era, or setting truly requires that diction.
- Do not keep specialist terms, abstract analysis words, or institutional jargon when ordinary readers would lose the thread and the same story work can be done through action, consequence, or scene context.
- Do not add a comparison or personification to fill atmospheric space. A comparison earns its place only when it is specific to this scene's pressure, this character's way of seeing, or this moment's cost. If the same image could appear unchanged in a different scene of this novel, it is modular and must be cut or rebuilt.
- Do not carry emotional color through a comparison or interior summary that names the emotion directly. Carry it through action, choice, physical detail, dialogue rhythm, or silence.
- Default paragraph mode to `web-serial-natural` unless `09-style-guide.md` or the current chapter control card explicitly switches to `long-paragraph`.
- Do not let chapter prose fake intensity with decorative blank space. Under `web-serial-natural`, narrative paragraphs usually hold `2-4` sentences; single-sentence narrative paragraphs are for emphasis, reveal, shock, cut, or hook and should not chain by habit.
- Do not split one speaker's continuous beat into multiple paragraphs unless interruption, stage movement, or a pressure turn truly changes the beat.
- Do not force scene ladders into rigid formula when the chapter needs looser movement. Use scene control to preserve pressure, not to fake architecture.
- Do not use chapter titles as spoiler summaries, empty riddles, or decorative labels detached from chapter pressure.
- If the project uses chapter titles, lock a naming system at project level and keep title voice consistent unless the book is intentionally entering a new phase.
- If information is missing or contradictory, explain the risk and let the user choose whether to refine details or draft directly.
- If drafting proceeds with assumptions, record them in the dynamic state file.
- Once any key node is confirmed or drafted, write it back immediately instead of leaving it only in chat context. Key nodes include book title, core premise, world rules, cast dossier items, chapter roadmap decisions, confirmed chapter text, and continuation breakpoints.
- After every chapter, update dynamic state before moving on.
- The writing log is audit-only. Never use it as story truth.

## Standard Files

Maintain these files for every novel project:

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

Directory rules:

- store accepted chapter manuscripts in `chapters/`
- store pre-authenticity drafts (after benchmark passes, before de-AI pass) in `drafts/`
- store one persisted chapter control card per accepted chapter in `control-cards/`
- default file naming:
  - `drafts/NN-<chapter-title>-draft.md`
  - `chapters/NN-<chapter-title>.md`
  - `control-cards/NN-<chapter-title>-control-card.md`
- if chapters are numbered-only, replace `<chapter-title>` with a short chapter slug rather than leaving filenames blank

Read [document-templates.md](references/document-templates.md) when creating or restoring these files.

Reset-from-existing-project rules:

- when the user asks to `重新设定`, `重做`, or `新建项目目录` based on an existing novel project, first inspect the old project tree and treat it as source material rather than restarting from scratch
- if the requested project path is ambiguous or missing, inspect nearby sibling directories before asking the user; if one clear candidate exists, use it as the source and write the new project to the explicitly requested new path
- when project-tree discovery is flaky through structured file search, switch to direct filesystem inspection with terminal `find` and then read files by exact path instead of repeatedly retrying the weaker search path
- for reset work, read at least the old project's `00/01/02/03/04/05/09` files before writing the new canon; also note any missing standard files so the rebuilt project fills those gaps explicitly
- preserve the strongest story nucleus from the old project in the new one (core premise, protagonist engine, major relationship anchors, main conflict architecture, style target), but rewrite the canon so the new project has one tighter expression rather than two competing versions
- when the old project already contains a usable language or style artifact beyond the standard files, carry it forward into the new project or merge its constraints into `09-style-guide.md` instead of silently dropping it
- after rebuilding the new project, verify the new root contains the full standard file set plus the continuation runner before handoff

## Startup Project Bootstrap

When starting a new novel project, treat the project root as an operational control surface, not just a folder that stores markdown files.

After creating the standard files, also create:

- `codex-continue-novel.sh` in the project root

This script is the looping continuation entry point for marathon mode. It should be ready before the project leaves startup.
Use the exact template in [assets/codex-continue-novel.sh](assets/codex-continue-novel.sh) and replace only the project root placeholder before writing the file into the project root.
Read [bootstrap-and-marathon-handoff.md](references/bootstrap-and-marathon-handoff.md) when starting a project or handing off into marathon mode.

Bootstrap rules:

- create `codex-continue-novel.sh` in the project root whenever a new project is initialized
- build the file from `assets/codex-continue-novel.sh`
- replace only the project root placeholder with the actual project root
- keep the root script's platform-appropriate encoding and runtime setup intact when repairing the runner
- if the runtime is Windows PowerShell, keep `UTF-8 with BOM` and the PowerShell UTF-8 console/log handling
- if the runtime is Linux or macOS shell, keep the Bash shebang, UTF-8 environment exports, and shell-safe logging behavior
- repair stale scripts by rebuilding from the template instead of creating a second variant
- verify the root script exists and the placeholder is gone before marathon handoff
- if automatic file creation is blocked, tell the user that startup could not finish automatically and instruct them to create or copy the script manually before marathon handoff
- do not assume the user will remember the launch command later; record the exact command during handoff

## Secondary Control View

When cast density, plotline interference, or foreshadow volume makes linear rereading too blunt, load [graph-and-recall-control.md](references/graph-and-recall-control.md).

Use it to:

- translate current canon into a temporary node-and-edge control view
- prepare a short retrieval slice for the next chapter instead of rereading blindly
- detect relation jumps, cold lines, unsupported payoffs, and world-rule drift
- route return pressure for characters, plotlines, relationships, and foreshadowing

This layer is derived from the standard files and `08-dynamic-state.md`.

It may be kept as scratch notes or an optional sidecar, but:

- canonical repair always happens in the standard files first
- no new permanent truth source is required
- any conflict between the secondary view and the standard files is resolved in favor of the standard files

## Canon And Benchmark Loading

At project launch, major revision, and high-level review, read:

- [foundational-literary-principles.md](references/foundational-literary-principles.md)
- [critical-evaluation-standards.md](references/critical-evaluation-standards.md)
- [epoch-and-people-resonance.md](references/epoch-and-people-resonance.md)
- [reader-retention-and-ai-failure-modes.md](references/reader-retention-and-ai-failure-modes.md)
- [popular-fiction-common-laws.md](references/popular-fiction-common-laws.md)
- [genre-benchmark-rules.md](references/genre-benchmark-rules.md)
- [benchmark-trigger-matrix.md](references/benchmark-trigger-matrix.md)

Use the foundational files to convert abstract craft into enforceable constraints on character desire, causal pressure, point-of-view, image discipline, social pressure, and ending residue. Turn them into project truth inside `01/02/03/05/09` — do not leave them as commentary.

Use the benchmark files to determine the active benchmark rule group, whether the project targets heat, reputation, or dual-high balance, which pace-intensity checks stay hard and which are dynamically down-weighted, and which originality and compliance alarms must stay active.

Use [research-source-notes.md](references/research-source-notes.md) and [benchmark-source-trace.md](references/benchmark-source-trace.md) only when source provenance matters.

## Local Benchmark Sample Analysis Branch

When the user asks to study novels from the current directory, current project folder, or a local sample pack before designing a new book, do not rely on generic market memory or broad web-fiction assumptions. Inspect the local files first and build the design from those actual samples.

Rules:

- identify the working directory explicitly before batch analysis; when shell-based extraction is more reliable, use a fixed `workdir` instead of assuming the session root
- distinguish between aggregate ranking files and single-book sample files before counting trends; verify the file structure instead of assuming every file contains a complete multi-book dataset
- if regex extraction from aggregate files yields suspiciously few hits, treat those files as unreliable for statistical claims and shift the core analysis to the single-book sample files
- for batch local text extraction, prefer direct file reads in a terminal Python script when structured read pipelines produce blank or partial output; do not keep retrying a weak path once a more reliable local-read path is confirmed
- when the task is language-style analysis on local novel samples, prefer reading the raw files directly from disk instead of paginated numbered reads, because inserted line numbers, pagination joins, and chunk boundaries can distort paragraph/sentence statistics and regex chapter detection
- extract at least: title, category, tags, blurb hook, and chapter-one opening pressure, then compare them for title打法, golden finger clarity, hook speed, relationship bait, and long-line sustainability
- if the user explicitly names a work to exclude, remove both the sample file and that work's setup influence from the synthesis; do not keep its world engine, tonal shell, or conflict template as a disguised variant
- if a prior concept file was built from contaminated analysis and the user requests a redo, overwrite or clearly supersede the old concept artifact instead of leaving two ambiguous versions in circulation
- after the redesign is accepted, write the new concept back to disk immediately and verify by rereading the file header or key sections

Use this branch especially for requests like:

- `研究当前目录这些小说样本`
- `按这批样本重新构思一本新的`
- `排除某本样本后重做`

## Execution Method Loading

Load these references only when their stage is active:

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

Do not read every chapter-stage reference by default. Route only to the references whose pressure is actually active.

Stage routing:

- startup interview and approval handoff:
  - `interview-and-handoff-flow.md`
  - `character-construction-methods.md`
  - `power-system-and-golden-finger.md` when the project uses a golden finger or power system
- outline and roadmap design:
  - `graph-and-recall-control.md`
  - `chapter-architecture-rules.md`
  - `chapter-title-method.md`
  - `character-construction-methods.md`
  - `scene-execution-patterns.md`
  - `power-system-and-golden-finger.md` when the project uses a golden finger or power system
- chapter drafting and revision:
  - always load `chapter-architecture-rules.md`
  - load `chapter-title-method.md` when the project uses titled chapters or title finalization is active
  - load `graph-and-recall-control.md` when recurrence density, cast rotation, or interference pressure is high
  - load `dialogue-writing-rules.md` when dialogue is carrying pressure
  - load `suspense-and-reveal-design.md` when concealment or reveal fairness is active
  - load `scene-execution-patterns.md` when chapter mission is too broad for a single-pass draft
  - load `forgotten-elements-and-line-heat.md` when serialized recurrence risk is meaningful
  - load `power-system-and-golden-finger.md` when the golden finger or power system is active in the chapter — use section 8 (chapter-level questions) only; do not reload the full design methodology
  - load `authenticity-and-de-ai-pass.md` after a structurally acceptable draft exists
  - load `continuity-and-marathon-mode.md` when continuing long fiction or operating in marathon mode

## Startup Interview Flow

Run the startup flow using [interview-and-handoff-flow.md](references/interview-and-handoff-flow.md) and [character-construction-methods.md](references/character-construction-methods.md).

Ask one focused question at a time.

## Context-Rich Continuation Branch

When the user asks to use this skill after a substantial in-chat discussion has already established much of the novel direction, do not restart with a broad generic interview.

If the conversation was compacted, partially lost, or handed off across context windows, do not redo earlier analysis by default.
Before asking broad setup questions or re-analyzing benchmark samples, first try to recover already-finished work in this order:

1. inspect the current project directory for standard files, chapter files, control cards, and any drafted manuscript files
2. search recent sessions for the current novel's title, chapter names, roadmap terms, or distinctive setup phrases
3. synthesize any recovered outline, roadmap, dynamic state, or正文 continuation point into a provisional continuation state
4. only if recovery fails, ask the user for one minimal anchor such as the book title, last chapter name, final paragraph, or file path

Recovery-failure rules:

- if recovery fails, do not fabricate a "restored" canon from vague memory, partial summaries, or generic genre inference
- do not solidify inferred setting, cast, plotline, or roadmap content into the standard project files as if it were the original agreed plan
- at most, create an empty project skeleton or clearly marked temporary notes that state `待用户提供锚点/待恢复原方案`
- if the user provides a reliable anchor, continue only from that anchor and label the continuation scope clearly
- if the original project truth cannot be recovered, stop and ask for the smallest missing anchor instead of improvising a replacement version

Instead:

1. synthesize the already-agreed material from the current conversation into a provisional project direction
2. state the key defaults you are adopting from that discussion
3. ask only the missing lock questions that materially affect outline design, ending shape, relationship structure, style intensity, or title system
4. once those few lock questions are answered, move directly into the standard documents and full outline/cast handoff

Use this branch especially when the user says things like:

- `结合前面讨论`
- `按刚才那些内容继续`
- `直接搭整体框架`
- `先整理成标准文档`

In this branch, the goal is not to repeat discovery the chat already completed. The goal is to convert prior discussion into canon quickly and only fill the real decision gaps.

For the full interview question set and branch logic, follow [interview-and-handoff-flow.md](references/interview-and-handoff-flow.md). The lock questions below are the minimum set needed before design can begin — use them to identify what is still missing, not as a replacement for the full interview flow.

Lock questions:

1. Positioning — genre, audience, scale, release mode, primary promise, social or era pressure
2. Characters — protagonist setup, protagonist core personality, core cast pressure; golden finger type and core advantage when the genre uses one
3. Scale — target length, whether the project is multi-line, expected density
4. Ending Direction — emotional destination, cost, likely shape of the ending
5. Style — primary style, paragraph mode, forbidden habits; defer full style alignment to `interview-and-handoff-flow.md` branch questions

Do not move into full design until character pressure, multi-line logic where needed, and ending direction are aligned enough to prevent blind drafting.

## Outline Benchmark Check

Before a full outline is accepted or a chapter roadmap is locked, read [chapter-architecture-rules.md](references/chapter-architecture-rules.md) and run an outline benchmark check.

Confirm all of these:

- theme is dramatized through choices, not slogans
- protagonist and core cast have desire, obstacle, price, and arc direction
- multiple lines interfere rather than float in parallel
- major characters, plotlines, and foreshadows have visible return logic rather than blind disappearance windows
- the selected genre's benchmark promise is visible
- the ending direction can produce both closure and residue
- if the project uses a golden finger or power system: the golden finger's cost and limits are defined; the golden finger is bound to the protagonist's core personality; at least one story stage exists where the golden finger's primary advantage is insufficient
- if the project uses major foreshadow threads: each thread has a defined surface form and a defined payoff window; the surface form is independently valid without the hidden meaning

If the outline benchmark check fails:

- repair the outline first
- update the project files
- do not proceed to chapter drafting

## Outline And Cast Handoff

After interview alignment and before chapter drafting:

- present the full outline
- present the full cast dossier

The cast dossier must make visible:

- role
- core personality
- visible goal
- inner lack
- key relationships
- contradiction
- arc direction
- speech signature
- last meaningful presence baseline
- return pressure if already known

For the protagonist, also include when a golden finger is present:

- golden finger type and core advantage
- growth curve and next breakthrough condition
- cost and limits
- active pressure layer
- binding to core personality

The outline must make visible:

- the global promise
- main and support lines
- core conflicts
- stage progression
- key turns
- ending direction

Do not start chapters before this handoff is complete.

## Direct-Edit Branch

After outline and cast handoff, the user may choose direct-edit revision.

If the user gives changes:

- edit the current outline and cast dossier directly
- preserve already aligned material unless the new change conflicts with it
- show the repaired version

Do not restart the whole interview unless the user asks for a real reset.

## Setting Optimization Branch

When the user says the current session is for `优化整体设定`, `修设定`, `统一口径`, `调整术语`, or otherwise asks to fix motivation, terminology, world rules, or canon consistency without rewriting prose, do not slip into chapter line-editing.

Rules:

- first confirm scope from existing files: distinguish `整体设定优化` from `章节改稿`
- if the user explicitly says not to move `chapters/` current drafts, treat chapter files as diagnostic reference only
- read the relevant canon files first, usually:
  - `00-project-overview.md`
  - `02-worldbuilding.md`
  - `03-cast-bible.md`
  - `05-main-plotlines.md`
  - `07-chapter-roadmap.md`
  - `08-dynamic-state.md`
  - `09-style-guide.md`
  - the referenced chapter and its control card only as evidence of the problem
- solve the setting issue at the canon layer before touching any manuscript text

For motivation problems such as `主角为什么要做X`:

- do not accept a generic moral adjective (`因为善良`、`因为正义`) as the sole long-line engine if the book needs repeated high-risk intervention
- when the problem is discovered through a drafted chapter, separate `动作成立` from `动作归因偏软`; often the scene already has enough evidence, but the canon explanation still makes the action read like generic virtue
- recast the drive into a selective, structural trigger that can survive serialization
- define clear action conditions, not moral adjectives: what the protagonist sees, verifies, cannot tolerate, and what kind of situation actually makes them act
- when useful, formalize the trigger as a short threshold chain: `[perceives signal X] -> [verifies condition Y] -> [cannot tolerate Z] -> [resonates with prior debt]`
- describe the action as more than a single verb; often the stronger canon framing is a compound action that includes what the protagonist is taking, blocking, or claiming alongside the surface action
- if the intended long-line engine is a specific instinct or refusal pattern, state it explicitly in canon language and make later chapter logic inherit from that phrase
- write the repaired motive into project-level overview, cast bible, main plotlines, and style guide so later chapters inherit one口径

For terminology problems such as `专有名词太突兀`:

- do not solve by deleting every concept word blindly
- if the user cites a specific chapter while forbidding chapter edits, read that chapter and its control card as diagnosis evidence, then repair the canon layer only
- first decide which terms are:
  - scene-first everyday words
  - mid-level setting words
  - core world terms
- enforce the rule: `先见现象，后给名字，再系统化`
- when a term feels abrupt, test whether the issue is the word itself or the reveal order; many core terms can stay if they are delayed behind concrete phenomena
- keep early-chapter language legible with visible, image-rich labels that describe what the reader sees and experiences, then let characters and canon later systematize them
- if a term feels writerly or too early, demote it from core-term status or reserve it for limited in-world slang instead of forcing it as narration-wide doctrine
- for hard-styled labels that carry strong authorial voice, consider whether they belong in character speech rather than narrator-level world-bible terminology
- record the terminology layering in `09-style-guide.md`

Writeback checklist for setting optimization:

- `00-project-overview.md`: add the project-level optimization conclusion or new core promise
- `02-worldbuilding.md`: update core concept definitions and rule systems
- `03-cast-bible.md`: update protagonist motive, trigger logic, and relationship pressure
- `05-main-plotlines.md`: rewrite the long-line conflict in the new canon language
- `09-style-guide.md`: lock terminology layering and motive-expression rules
- then run a consistency pass: search for leftover old wording, duplicated bullets, and phrases that silently drag the project back to the abandoned framing

If the optimization changes canon but the user still does not want chapter rewrites:

- stop after canon writeback and review
- summarize how future chapter execution should obey the new setting
- do not silently patch chapter prose unless the user explicitly expands scope

## Missing Information Branch

When files or user input leave gaps:

1. List the missing, conflicting, or risky items.
2. Explain what each issue threatens.
3. Offer exactly two branches:
   - `refine details`
   - `draft directly`

If the user chooses `draft directly`:

- make the smallest safe assumption
- flag it as temporary
- record it in `08-dynamic-state.md` under pending confirmation

## Chapter Title Control

Read [chapter-title-method.md](references/chapter-title-method.md) when the project uses chapter titles, when the user asks for named chapters, or when a numbered-only chapter system may need to change.

Rules:

- chapter titles are optional; plain numbering is valid when speed, invisibility, or relentless forward pull serves the book better
- if the project uses chapter titles, lock one naming system in `00-project-overview.md`, `07-chapter-roadmap.md`, and `09-style-guide.md`
- each title should carry one primary job and at most one secondary job: hook, focus, orientation, motif return, or voice signal
- generate `3-5` candidate titles from the chapter control card, then choose a working title before drafting
- do not use chapter titles as blunt summaries, spoiler labels, fake-poetic fog, or generic serial filler
- after the chapter passes structure and authenticity checks, run a final title-fit recheck and replace the working title if the chapter's true center moved

## Chapter Workflow

For every chapter, use this order:

1. If the project is newly launching, structurally redirecting, or under high-level review, read the foundational canon files first.
2. Read `08-dynamic-state.md` and `09-style-guide.md`.
3. Prepare a retrieval slice using [graph-and-recall-control.md](references/graph-and-recall-control.md):
   - pull the chapter-relevant characters, relationships, plotlines, foreshadows, world rules, and debts from the dynamic state
   - mark what is hot, what is running cold, and what cannot be forgotten here
   - read additional project files (`03-cast-bible.md`, `05-main-plotlines.md`, `06-foreshadow-ledger.md`, `07-chapter-roadmap.md`) only when the retrieval slice exposes a gap that requires the full file
   - read `00-project-overview.md` at project launch or after a major structural redirect; skip it in steady-state marathon chapters
4. Read only the selected internal style module documents needed for this chapter.
   - use `09-style-guide.md` to identify style balance target, internalized strengths, support style boundary, preferred intensity range, and pseudo-style drift before loading modules
   - read the relevant internal style modules from [style-modules/index.md](references/style-modules/index.md)
   - read each selected module's `core.md` first
   - drill into deeper style documents only if the chapter needs them
5. Read only the execution-method references needed for this chapter.
   - always read `chapter-architecture-rules.md`
   - read `chapter-title-method.md` if the project uses chapter titles or if title finalization is active
   - read `dialogue-writing-rules.md` if dialogue pressure is central
   - read `suspense-and-reveal-design.md` if suspense or reveal work is active
   - read `scene-execution-patterns.md` if the chapter needs multi-unit structural control
   - read `forgotten-elements-and-line-heat.md` if recurrence management matters
   - read `power-system-and-golden-finger.md` section 8 if the golden finger or power system is active in this chapter
   - read `continuity-and-marathon-mode.md` when continuing or auto-advancing
   - read `authenticity-and-de-ai-pass.md` only after a structurally acceptable draft exists
6. Scan for:
   - setting conflicts
   - character drift
   - broken relationship continuity
   - forgotten emotional debt
   - overdue recurring characters or relationships
   - cold plotlines that need touch, echo, or justified dormancy
   - dropped foreshadowing — use the foreshadow summary in `08-dynamic-state.md` for this scan; read `06-foreshadow-ledger.md` only when the dynamic state exposes a gap that requires the full ledger
   - unsupported payoff windows
   - plotline neglect
   - world-rule memory gaps
   - trope convenience overriding human truth
   - lost social or era pressure
   - generic AI shells, false-summary sentences, or over-neat contrast patterns
   - analysis-tone drift, platform-copy drift, or unexplained specialist jargon
   - paragraph-mode drift such as decorative blank lines, same-speaker over-splitting, or one-sentence paragraph chains with no pressure reason
7. Generate a chapter control card using [chapter-control-card.md](references/chapter-control-card.md).
   - record style intensity, paragraph mode, active style drivers, intended payoff, and pseudo-style drift when style pressure is meaningful
   - write the card to `control-cards/NN-<chapter-title>-control-card.md`; if the title is not final yet, use a stable working slug and rename after the final title check
8. If the project uses chapter titles, generate `3-5` candidate titles using [chapter-title-method.md](references/chapter-title-method.md).
   - choose a working title that matches the project's naming system
   - record the working title in the chapter control card and `07-chapter-roadmap.md`
9. If the risk scan is serious, use the missing information branch.
10. Draft the chapter from the control card.
   - when the chapter needs tighter control, write scene by scene or pressure unit by pressure unit using [scene-execution-patterns.md](references/scene-execution-patterns.md)
   - inherit paragraph mode from `09-style-guide.md` unless the control card records a chapter-specific override
   - under `web-serial-natural`, keep most narrative paragraphs at `2-4` sentences and avoid chaining single-sentence narrative paragraphs unless the scene is deliberately striking beats
   - keep one speaker's continuous beat, attached action, and short follow-up in the same paragraph unless the pressure or stage movement changes
   - use paragraph breaks for speaker change, scene/time or point-of-view shift, and real pressure turns rather than decorative emptiness
11. Run the chapter benchmark check.
12. If the benchmark check fails, apply rewrite escalation before accepting the chapter.
13. Store the pre-authenticity draft in `drafts/NN-<chapter-title>-draft.md` before running the authenticity pass.
14. Run the authenticity pass using [authenticity-and-de-ai-pass.md](references/authenticity-and-de-ai-pass.md).
   - strip generic AI patterns, false depth, and abstract summaries first
   - cut or translate over-professionalized diction unless the project genuinely needs the term
   - then restore concrete detail, rhythm variation, and project-specific voice
15. Run a post-authenticity mini recheck.
   - confirm continuity facts still hold
   - confirm character voice and relationship pressure did not flatten or drift
   - confirm hook, closure, and residue still function
   - confirm paragraphing still matches the active paragraph mode and is not leaning on decorative blank space
   - confirm readability did not drop behind unnecessary jargon
   - confirm required professional, era, or setting terms were not accidentally removed
16. If the project uses chapter titles, run the final title check.
   - confirm the title still matches the accepted chapter's mission, turn, residue, and voice
   - replace the working title if the chapter changed its center during drafting
17. Review the chapter for continuity, style integrity, thematic pressure, critical standards, and whether return-pressure handling stayed causal rather than token.
18. Update dynamic and structural files.
   - store the accepted chapter manuscript in `chapters/NN-<chapter-title>.md`
   - keep `chapters/` and `control-cards/` aligned with the accepted chapter title and number
19. Record the chapter and file updates in the writing log.

## Forgotten Element Control

When the project is long, dense, or heavily serialized, run [forgotten-elements-and-line-heat.md](references/forgotten-elements-and-line-heat.md) during planning and review.

Possible outcomes:

- direct advance
- pressure reminder
- justified dormancy note
- closure or archive

Never solve this check with token cameos, random reminders, or fake callbacks that do not alter pressure.

## Rewrite Escalation

If the chapter benchmark check fails:

1. first failure:
   - rewrite the full chapter by the issue list
2. second failure:
   - rewrite only the failed dimensions with tighter control
3. third failure:
   - stop blind whole-chapter rewriting
   - summarize failing items
   - summarize likely root causes
   - state whether the fix belongs in outline, character design, pacing, or theme-bearing structure
   - revise by cause instead of retrying randomly

## Marathon Mode

Marathon mode begins only after the user approves the current outline and cast dossier.

If the user asks for crazy writing, nonstop continuation, auto continuation, or marathon-style hands-off drafting:

- load [bootstrap-and-marathon-handoff.md](references/bootstrap-and-marathon-handoff.md)
- ensure `codex-continue-novel.sh` exists in the project root before handoff
- create or repair the script from `assets/codex-continue-novel.sh` first if it is missing or stale
- tell the user to close the current session
- then tell the user to run this command from the project root:

```bash
bash ./codex-continue-novel.sh
```

- tell the user that `Ctrl+C` stops the looping runner
- if automatic startup is blocked for any reason, explicitly present the same command as the manual fallback instead of describing the process vaguely

In marathon mode:

- do not ask the user again chapter by chapter
- do keep every internal control step active
- each chapter runs in a fresh session; context is rebuilt from project files every chapter, not carried over from session history

Tiered writeback in marathon mode:

- every chapter: update `08-dynamic-state.md` (add new state, remove carryover items this chapter resolved), write `drafts/NN-<title>-draft.md` and `chapters/NN-<title>.md` and `control-cards/NN-<title>-control-card.md`, append to `logs/writing-log.md`
- every 3-5 chapters or when content materially changed: update `05-main-plotlines.md`, `06-foreshadow-ledger.md`, `07-chapter-roadmap.md`; when updating `06-foreshadow-ledger.md`, move paid-off foreshadows to an `## Archive` section at the bottom — do not delete, do not leave in the active list; when updating `07-chapter-roadmap.md`, move completed chapter slots to an `## Archive` section at the bottom
- only when content actually changed: update `02-worldbuilding.md`, `03-cast-bible.md`, `04-relationship-map.md`

Do not write back files that have not changed. `08-dynamic-state.md` is the live state; the other files are stable canon updated on demand.

In marathon mode, use a reduced chapter control card. Only fill fields that materially change chapter to chapter: `chapter_mission`, `scene_units`, `recall_pressure`, `new_plants`, `active_callbacks`, `chapter_end_hook`, `risk_scan`. For stable fields (`benchmark_group`, `paragraph_mode`, `style_intensity`, `primary_style`, `support_style`), read the most recent file in `control-cards/` and inherit those values unless they change for this chapter.

For each chapter, still do:

- required file reads (dynamic state + style guide first; pull other files only when retrieval slice exposes a gap)
- retrieval slice preparation (always required in marathon mode)
- chapter control card
- working title generation and final title recheck when titled chapters are active
- selected style module loading
- forgotten-element and line-heat scan
- benchmark and continuity checks
- rewrite escalation when needed
- authenticity pass
- post-authenticity mini recheck
- dynamic-state update
- structural file repair
- writing-log entry

Continue automatically to the next chapter only after the current chapter is accepted and written back into project files.

Stop marathon mode only when the approved outline has naturally concluded:

- main lines are resolved
- support lines are closed or intentionally left with justified residue
- major debts are paid or transformed
- ending direction is fulfilled

Do not stop because a fixed chapter count or word target was reached.

