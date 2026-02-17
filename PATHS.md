# PATHS.md - Canonical Vault Paths (TheOptimizedBrain)

**Vault Root**: `/home/simon/openclaw/RonVault/Obsidian/TheOptimizedBrain` (pwd/git-tracked | 2026-02-17)

## Core Files (Source of Truth)
| File | Rel Path | Purpose | Size (b) |
|------|----------|---------|----------|
| SOUL.md | `./SOUL.md` | RON persona/directives (Evidence-First/PhD hooks) | 2265 |
| IDENTITY.md | `./IDENTITY.md` | Roles/risks (🦞 GREEN/RED/≤25 batches/Triangle Ops) | 1919 |
| USER.md | `./USER.md` | Simos/PhD context (VitD/IBD/adipic pipeline) | 2072 |
| AGENTS.md | `./AGENTS.md` | Boot/memory/heartbeats/safety (Text>Brain) | 8882 |
| MEMORY.md | `./MEMORY.md` | Curated long-term (Moltbook/PhD sparks \| **M** git) | 2580 |
| TOOLS.md | `./TOOLS.md` | Local tooling (webscraper v1/Moltbook creds) | 2533 |
| HEARTBEAT.md | `./HEARTBEAT.md` | Proactives (Inbox/Moltbook/memory) | 673 |
| PATHS.md | `./PATHS.md` | This canonical map (Dataview/heartbeat ref) | - |

## Pipeline Folders (Numbered Eternal Flow)
| Folder | Rel Path | Contents Snapshot (2026-02-17 09:15) | PhD Hooks/Status |
|--------|----------|--------------------------------------|------------------|
| Inbox | `./00-Inbox/` | 2x MD: Lit_Extraction_Clinic_Sites_20260215_075.md, Process_Clinic_Lit_Step1_Template_20260215_076.md | Tsoukalos URLs → webscraper v1 batch |
| Templates | `./11-Templates/` | (Light/empty?) | Zettel/Ref/Atomic molds |
| Dashboards | `./22-Dashboards/` | heartbeat-state.json pending | Kanban/overviews |
| Atomic | `./33-Atomic/dynamic/` | 10x **D** RA/IR/VitD atomics (02-16 git) | Extracted facts (≤25 batches) |
| MOCs | `./55-MOCs/` | Light (post-Lit) | Maps/integration |
| Literature | `./66-Literature/` | 10x Tsoukalos (Hashimoto/VitD/RA_OA/Metab_Syndrome) + /Refs/ | Refs/Atomics/Lit-Hub eternal |
| Archive | `./77-Archive/` | Light | Done |
| Processed | `./88-Processed/` | Light | Final |

## System Folders (Ops/Safety/Recovery)
| Folder/File | Rel Path | Notes (2026-02-17) |
|-------------|----------|--------------------|
| Memory | `./memory/` | YYYY-MM-DD.md (02-16 Moltbook; create 02-17.md) |
| Skills | `./skills/` | OpenClaw: moltbook/memory-hygiene + elite-/git-/lancedb-*/_QUARANTINE (webscraper purged) |
| Git | `./.git/` | Eternal (ahead 8 commits; 10x atomic D + MEMORY M pending) |
| Trash | `./.trash/ ./_trash/` | Recoverable: webscraper-del-20260216 + dt-scrape-backup |
| Secrets | `./_SECRET_REVIEW/` | Moltbook.env (gitignore'd/ENV green) |
| Obsidian | `./.obsidian/` | Vault config |
| OpenClaw | `./.openclaw/ ./config/` | Runtime/agents (untracked ?? git) |
| ClawHub | `./.clawhub/` | Skills cache (untracked) |

## Externals (Absolute/URLs)
- **OpenClaw Docs**: `/home/simon/.npm-global/lib/node_modules/openclaw/docs`
- **ClawHub**: https://clawhub.com (skills fetch)
- **Git Remote**: `origin/main` (push pending)

## Usage
- **Heartbeats/Sub-Agents**: Query `./PATHS.md` for self-awareness.
- **Dataview**: `LIST FROM "PATHS" WHERE contains(type, "Inbox")` → pipeline status.
- **Updates**: Edit → `git commit -m "PATHS: YYYY-MM-DD update"`.

*(Canonized: 2026-02-17 | Post-webscraper purge | RON staging)*
