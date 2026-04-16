# Standard Document Templates

Use these templates when setting up or restoring a novel project.

If graph-style control is needed, derive it from these files instead of creating a rival canon. The standard files stay primary.

## Standard Directories

- `chapters/`
  - store accepted chapter manuscripts here
  - default naming: `NN-<chapter-title>.md`
- `control-cards/`
  - store the persisted control card for each accepted chapter here
  - default naming: `NN-<chapter-title>-control-card.md`

Use stable slugs when the project uses numbered-only chapters or when a working title may still change before final acceptance.

## `00-project-overview.md`

- project title
- project language: Chinese by default
- script preference: simplified Chinese by default
- genre
- target audience
- scale
- operating mode
- project mode: normal, marathon
- release mode
- target length
- user approval state
- target mode: heat, reputation, dual-high balance
- chapter title mode: numbered, titled, hybrid
- chapter title system
- chapter title primary purpose
- core promise
- primary hooks
- historical or social pressure
- ending residue
- primary style
- support style
- forbidden style

## `01-theme-and-proposition.md`

- central question
- theme statement under pressure
- opposing values
- human cost
- value conflicts
- recurring motifs
- what the novel is testing

## `02-worldbuilding.md`

- era and location frame
- social structure
- institutions
- power distribution
- material life details
- rules and limits
- cost structure
- what cannot happen
- what characters commonly know

Power system (fill when the project uses a power framework):

- power source: where does power come from
- tier structure: stages or levels, with names and meaningful distinctions
- advancement cost: what does moving up require
- hard ceiling: what power cannot solve at any tier
- social relation: does power equal status, or is there tension between them
- world rules that constrain the protagonist as well as enable them

Historical pressure layer:

- pre-story debts or wounds that still exert force on the present
- buried truths that would change the power structure if revealed
- old conflicts whose unresolved residue shapes current faction behavior

## `03-cast-bible.md`

For each major character:

- role in story
- core personality
- visible goal
- hidden need
- fear
- shame point
- debt
- blind spot
- stress response mode
- speech signature
- social position
- relationship pressure
- last meaningful presence
- return pressure
- contradiction
- likely arc direction

For the protagonist, also fill when a golden finger is present:

- golden finger type: 系统型 / 能力型 / 知识型 / 资源型 / 身份型
- core advantage: one sentence
- growth curve: stage count, current stage, next breakthrough condition
- cost and limits: what each use costs; what it cannot do; story-wide hard ceiling
- active pressure layer: which of cost / rules / competition / desire / identity is currently generating pressure
- binding to core personality: how the golden finger reflects or challenges who the protagonist is

## `04-relationship-map.md`

Track:

- pair or group
- current state
- hidden tension
- recent shift
- last material shift
- next pressure due
- unresolved debt

## `05-main-plotlines.md`

For each line:

- line type: main, side, hidden
- core conflict
- current objective
- current obstacle
- active characters
- causal chain
- social or era pressure
- last meaningful advance
- heat status
- return pressure
- next likely turn
- closure condition
- relation to other lines

## `06-foreshadow-ledger.md`

For each item:

- label
- type: 因果伏笔 / 性格伏笔 / 规则伏笔 / 关系伏笔 / 反转伏笔
- planted in chapter
- surface form: what the reader sees and understands at the time of planting
- hidden meaning: what the surface form actually means, decided at design time not at payoff time
- surface validity: confirm the surface form is independently interesting without the hidden meaning
- linked line or character
- expected payoff window
- last touched
- current status

## `07-chapter-roadmap.md`

For each planned chapter:

- chapter number or slot
- working title
- locked title
- title primary job
- title system slot
- stage target
- main objective
- main-line push
- side-line push
- lines advanced
- key conflict
- required prior debt
- return obligations
- scene pressure shape
- required callback or payoff
- ending hook

## `chapters/`

For each accepted chapter manuscript:

- chapter number
- locked title
- chapter body

## `control-cards/`

For each accepted chapter control card:

- save one persisted control card per chapter
- use the template in [chapter-control-card.md](chapter-control-card.md)
- if the accepted chapter title changes during drafting, rename the control card file in the same writeback pass

## `08-dynamic-state.md`

Use the dedicated template in [dynamic-state-template.md](dynamic-state-template.md).

## `09-style-guide.md`

- selected primary styles
- support style
- style balance target: reader pull, type payoff, texture balance
- internalized strengths to absorb from mature works for each active style
- forbidden styles
- chapter title register
- Chinese register mode
- paragraph mode: `web-serial-natural` by default, `long-paragraph` when explicitly chosen
- paragraph override policy
- prose density
- paragraph rhythm notes, including narrative paragraph target and allowed short-paragraph triggers
- blank-line discipline
- dialogue ratio
- narrative distance
- pacing preference
- benchmark group
- dynamic down-weighted checks
- payoff expectations for active primary styles
- support style contribution boundary
- chapter-level style intensity range
- pseudo-style drift to avoid for each active style
- forbidden trope or market habits
- image system
- language taboos, including banned AI shell phrases, analysis-tone filler, and unexplained specialist jargon
- comparison and personification admission rule: a comparison or personification is permitted only when it is specific to this scene's pressure, this character's way of seeing, or this moment's cost — not because the setting is dark, tense, or significant; if the same image could appear unchanged in a different scene of this novel, it is modular and must be cut or rebuilt
- emotional color carrier rule: emotional color must be carried through action, choice, physical detail, dialogue rhythm, or silence — not through a comparison or interior summary that names the emotion directly
- authenticity guardrails, including jargon ceiling and any required terms that must survive cleanup
- voice preservation notes, including profession-, era-, or character-specific diction that should survive cleanup
- revision standards

### Starter Example: Web-Serial-Natural Paragraph Control

Use this when the project targets mainstream Chinese web-serial readability.

The example below is an original demonstration distilled from the shared paragraph habits of recent high-heat serial fiction. It is not quoted from any novel.

```markdown
## Paragraph Control
- paragraph mode: web-serial-natural
- paragraph override policy: inherit project default; only switch to `long-paragraph` for letters, dream flow, sustained interior monologue, or deliberately slowed literary movement
- prose density: medium
- paragraph rhythm notes:
  - most narrative paragraphs stay at `2-4` sentences
  - one-sentence narrative paragraphs are allowed for reveal, shock, emotional stall, hard cut, or chapter-end hook
  - if three short narrative paragraphs in a row can be merged without losing force, merge them
  - keep one speaker's continuous beat, attached action, and short follow-up in the same paragraph unless interruption or movement changes the beat
- blank-line discipline:
  - only open a new paragraph for speaker change, scene/time shift, point-of-view shift, or real pressure turn
  - do not use blank space to fake pace
- revision standards:
  - reject decorative blank gaps
  - reject habitual one-sentence paragraph chains
  - reject same-speaker beat-splitting with no pressure reason
```

Original demonstration:

Too chopped:

```text
她看见门开着。
[空行]
却没进去。
[空行]
鞋尖停在门槛外。
[空行]
像是再往前一步，屋里那口气就会压到她脸上。
```

Revised for `web-serial-natural`:

> 她看见门开着，却没进去，鞋尖只停在门槛外。像是再往前一步，屋里那口气就会压到她脸上。她站了两秒，才抬手去推门。

## `logs/writing-log.md`

Use only the audit fields in [logging-rules.md](logging-rules.md).
