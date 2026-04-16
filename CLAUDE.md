# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

`novel-control-station` is a Claude skill (`SKILL.md`) for writing Chinese long-form fiction. It is a documentation-driven control system, not a software project — there are no build steps, tests, or package managers.

The skill is invoked via the Claude Code harness. Users trigger it with prompts like `使用 novel-control-station` or by referencing the skill name.

## Repository Layout

- `SKILL.md` — the skill entry point; defines the full workflow, hard rules, and reference loading order
- `references/` — internal documentation library loaded on demand during novel creation (never all at once)
- `references/style-modules/` — genre-specific style docs (humor, suspense, mystery, romance, horror, fantasy, literary); loaded selectively per chapter
- `assets/codex-continue-novel.sh` — marathon mode runner template; copied into a novel project's root directory when marathon/auto-continuation mode is activated

## How the Skill Works

The skill operates in five phases for each novel project:

1. **Interview** — aligns genre, audience, protagonist, length, ending direction, style preferences before any design work
2. **Design** — generates full outline + cast dossier; user reviews before drafting begins
3. **Chapter drafting** — reads the 9 standard project files before each chapter, generates a chapter control card, drafts prose, runs benchmark and authenticity checks
4. **Dynamic state update** — after every chapter, writes back key events, character/relationship changes, plotline progression, foreshadowing status, emotional debt
5. **Marathon mode** — continuous auto-continuation using `codex-continue-novel.sh`; stops only when the outline naturally concludes

## Standard Project Files (for novel projects created by this skill)

Every novel project the skill creates maintains these files:

| File | Purpose |
|---|---|
| `00-project-overview.md` | Project summary |
| `01-theme-and-proposition.md` | Theme and core premise |
| `02-worldbuilding.md` | World rules and setting |
| `03-cast-bible.md` | Character dossier |
| `04-relationship-map.md` | Character relationships |
| `05-main-plotlines.md` | Plot structure |
| `06-foreshadow-ledger.md` | Foreshadowing tracking |
| `07-chapter-roadmap.md` | Chapter outline |
| `08-dynamic-state.md` | Current project state (updated after every chapter) |
| `09-style-guide.md` | Style, paragraph mode, terminology |
| `chapters/NN-<title>.md` | Accepted chapter manuscripts |
| `control-cards/NN-<title>-control-card.md` | Per-chapter control cards |
| `logs/writing-log.md` | Audit log (never used as story truth) |

Templates for these files are in `references/document-templates.md`.

## Key Hard Rules (from SKILL.md)

- All planning artifacts and fiction output default to simplified Chinese unless the user explicitly requests otherwise
- Never begin formal design until plot direction, character tension, and ending direction are aligned
- Never draft a chapter before reading the required project files
- Dynamic state (`08-dynamic-state.md`) must be updated after every chapter before moving on
- Standard project files are the single source of truth; graph/recall views are support only
- Default paragraph mode is `web-serial-natural`; switch to `long-paragraph` only if `09-style-guide.md` or the chapter control card says so
- Marathon mode does not skip chapter control, rewrite escalation, dynamic updates, or logging

## Editing This Skill

When modifying `SKILL.md` or any `references/` file:

- Keep the hard rules section in `SKILL.md` consistent with the behavior described in `references/` docs
- The `references/style-modules/index.md` controls which style modules exist and how they are loaded — update it when adding or removing a style module
- `assets/codex-continue-novel.sh` is a template; placeholder values are replaced when the skill generates a project-specific runner script
- Version is tracked in `CHANGELOG.md` and `RELEASE_NOTES.md`; update both when releasing
