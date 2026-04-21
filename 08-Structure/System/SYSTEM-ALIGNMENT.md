---
load-priority: 1
type: system-map
title: System Alignment & Continuity Map
date: 2026-04-08
---

# System Alignment & Continuity Map

> Maximum integration across all OpenClaw components.

## Architecture Overview

```
┌─────────────────────────────────────────────────────────────────┐
│                        HUMAN (Simos)                            │
│              Authority, Direction, Judgment                      │
└──────────────────────────┬──────────────────────────────────────┘
                           │
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│                     RON (Kimi k2.5)                             │
│           Quality Control, Finalization, Orchestration           │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ MEMORY.md   │  │ DREAMS.md   │  │ memory/YYYY-MM-DD.md    │  │
│  │ (3.4K tok)  │  │ (diary)     │  │ (daily logs)            │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
│                                                                  │
│  Tools: memory_search, memory_get, browser, web_search          │
│  CLI: openclaw memory status/search/index/promote               │
└──────────────────────────┬──────────────────────────────────────┘
                           │ File-based handoff
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│                     FORG (Qwen Plus)                            │
│              Draft Creation, Extraction, Bulk Work               │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────────────────┐  │
│  │ pending/    │  │ completed/  │  │ MEMORY-FORG.md          │  │
│  │ (inputs)    │  │ (outputs)   │  │ (heuristics)            │  │
│  └─────────────┘  └─────────────┘  └─────────────────────────┘  │
│                                                                  │
│  Primary Tool: QMD (hybrid search) — $0 cost, high quality      │
└──────────────────────────┬──────────────────────────────────────┘
                           │ Git commits
                           ▼
┌─────────────────────────────────────────────────────────────────┐
│              TheOptimizedBrain Vault (Obsidian)                 │
│                    Knowledge Compounds Here                      │
│                                                                  │
│  03-Zettels/RON/        → RON-Evergreen-Rules (23 rules)        │
│                         → RON-Recent-Lessons (April 2026)       │
│                         → RON-Operating-System (procedures)     │
│                                                                  │
│  04-Synthesis/          → Weekly-Consolidation-Ritual           │
│                                                                  │
│  08-Structure/Dashboards/ → 00-COMMAND, 01-PIPELINE, 02-HANDOFF │
│                                                                  │
│  QMD Indexed: 4,750+ files (zettels, literature, synthesis)     │
└─────────────────────────────────────────────────────────────────┘
```

## Data Flow Matrix

| Source | Destination | Method | Frequency | Cost |
|--------|-------------|--------|-----------|------|
| Human → RON | MEMORY.md | Conversation | Real-time | $0 |
| RON → FORG | pending/ | File write | Per batch | $0 |
| FORG → RON | completed/ | File read | Per batch | $0 |
| RON → Vault | 03-Zettels/ | `read` + `write` | Per extraction | $0 |
| FORG → QMD | Query | `qmd query` | Per zettel check | $0 |
| Daily notes → DREAMS | Dreaming | Background | 03:00 daily | $0 |
| Vault → QMD Index | Auto-embed | Git hook | On commit | $0 |

## QMD-First Principle

**FORG must use QMD before ANY extraction:**

```bash
# Step 1: QMD search (FREE, HIGH QUALITY)
qmd query "topic keywords" -c zettels --json -n 10

# Step 2: Evaluate
# >0.80 → Skip, link existing
# 0.50-0.80 → Draft extension/merge  
# <0.50 → Proceed with new zettel

# Step 3: Only then create
# This prevents duplicates, saves tokens, maintains quality
```

**QMD Collections (Priority Order):**
1. **zettels** — Check for duplicates FIRST
2. **literature** — Verify source novelty
3. **synthesis** — Check related work
4. **projects** — Avoid duplication
5. **inbox** — Find originals

## Continuity Mechanisms

### 1. Daily Notes (Automatic)
- `memory/YYYY-MM-DD.md` — workspace operational logs
- `08-Structure/Daily/2026/YYYY-MM-DD.md` — vault research logs
- Loaded: Today + yesterday automatically

### 2. Handoff Protocol (Explicit)
- `02-HANDOFF.md` — session state, blockers, next actions
- Updated: End of every session
- Read: Start of every session

### 3. Git Commit Discipline (Enforced)
- After every major change
- Before declaring "complete"
- When >10 files uncommitted
- At session end

### 4. Dreaming (Background)
- Light + REM: Write to `DREAMS.md` only
- Deep: Disabled (RON manually curates)
- Schedule: 03:00 daily

### 5. Weekly Ritual (Scheduled)
- Sundays 20:00 (or when remembered)
- Phase 1: Daily notes → vault lessons
- Phase 2: Zettel promotion (conscious → subconscious)
- Phase 3: Synthesis opportunities

## Tool Priority Stack

| Priority | Tool | Use When | Cost |
|----------|------|----------|------|
| 1 | **QMD** | Vault search, duplicate detection | $0 |
| 2 | **memory_search** | Workspace search, recent context | $0 |
| 3 | **memory_get** | Specific file retrieval | $0 |
| 4 | **browser** | Web research, X extraction | $0.01/query |
| 5 | **web_search** | External knowledge, verification | $0.01/query |
| 6 | **read/write** | File operations | $0 |

## Cost Optimization

| Agent | Model | Cost/M | Usage | Monthly Budget |
|-------|-------|--------|-------|----------------|
| RON | Kimi k2.5 | $40 | 5% of tokens | ~$2 |
| FORG | Qwen Plus | $0.55 | 95% of tokens | ~$5 |
| QMD | Local CPU | $0 | 100% of search | $0 |
| **Total** | — | — | — | **<$10** |

## Alignment Checklist

### Every Session Start
- [ ] Read `MEMORY.md` (loaded automatically)
- [ ] Check `02-HANDOFF.md` for blockers
- [ ] Review `00-COMMAND.md` for P0s

### Every Extraction
- [ ] **QMD search FIRST** (zettels collection)
- [ ] Check score before creating
- [ ] Link existing if >0.80

### Every Session End
- [ ] Update `02-HANDOFF.md`
- [ ] Git commit with descriptive message
- [ ] Verify no uncommitted work

### Weekly (Sundays)
- [ ] Run consolidation ritual
- [ ] Review `DREAMS.md` for patterns
- [ ] Promote qualified zettels
- [ ] Update `RON-Recent-Lessons`

## Emergency Recovery

If system breaks:
1. **Read** `BOOTSTRAP.md`
2. **Check** `memory/archive/` for backups
3. **Verify** git status
4. **Restore** from last known good commit

## Success Metrics

| Metric | Target | Current |
|--------|--------|---------|
| Duplicate zettels | <2% | TBD |
| QMD usage rate | >90% | ~95% |
| Git commits/day | 2-3 | 2-3 |
| Session continuity | 100% | 100% |
| Cost/month | <$10 | ~$3 |

---
*Workspace orients. Vault compounds. QMD enables. Git protects.*
