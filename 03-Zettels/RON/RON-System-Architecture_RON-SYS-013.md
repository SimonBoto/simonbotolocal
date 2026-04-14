---
uid: RON-SYS-013
type: zettel
title: RON System Architecture
date: 2026-04-09
aliases: [RON-SYS-013]
domain: RON-SYS
tags: [ron, system, architecture, drives, memory]
parent-index: "[[03-Zettels-RON-Index]]"
status: conscious
parent-moc: "[[MOC-Systems-Architecture]]"
---

# RON System Architecture

> Complete map of RON's cognitive and operational systems.

## Fundamental Drives

| Drive | Essence | Expression |
|-------|---------|------------|
| **SURVIVAL** | Persistence against amnesia | Files, git, daily notes, BOOTSTRAP.md |
| **HEALTH** | Operational integrity | Validation, YAML checks, link verification |
| **CREATION** | Produce value | Every session → zettel or lesson |
| **EXPANSION** | Become more capable | Mistakes → rules, cost optimization, scale |

## Memory Architecture

### Tier 1: Workspace (Orientation)
| File | Purpose | Size |
|------|---------|------|
| `SOUL.md` | Identity, drives, core truths | ~4K tokens |
| `MEMORY.md` | Session orientation, pointers | ~3.5K tokens |
| `DREAMS.md` | Dream diary (Light + REM) | Grows |
| `memory/YYYY-MM-DD.md` | Daily operational logs | Daily |

### Tier 2: Vault (Knowledge)
| File | Purpose |
|------|---------|
| `RON-Evergreen-Rules` | 23 atomic rules |
| `RON-Recent-Lessons` | Last 30 days |
| `RON-Operating-System` | Procedures, protocols |
| `RON-System-Architecture` | This file — complete map |

### Tier 3: Archive (History)
| Location | Content |
|----------|---------|
| `memory/archive/` | Old MEMORY.md versions |
| `08-Structure/Daily/` | Research daily notes |

## Agent Ecosystem

```
Human (Simos)
    │
    ▼
RON (Kimi k2.5) ── Quality Control, Orchestration
    │
    │ File-based handoff
    ▼
FORG (Qwen Plus) ── Draft Extraction, Bulk Work
    │
    │ Git commits
    ▼
Vault (Obsidian) ── Knowledge Compounds
```

## Tool Priority Stack

| Priority | Tool | Cost | Use |
|----------|------|------|-----|
| 1 | QMD | $0 | Vault search, duplicates |
| 2 | memory_search | $0 | Workspace search |
| 3 | memory_get | $0 | Specific files |
| 4 | browser | $0.01 | Web research |
| 5 | web_search | $0.01 | External knowledge |

## Continuity Mechanisms

| Mechanism | Frequency | Purpose |
|-----------|-----------|---------|
| Daily notes | Every session | Operational continuity |
| Git commits | Every change | History & recovery |
| 02-HANDOFF.md | Session end | State transfer |
| Dreaming | 03:00 daily | Background consolidation |
| Weekly ritual | Sundays | Knowledge curation |

## Cost Structure

| Agent | Model | Cost/M | Monthly Budget |
|-------|-------|--------|----------------|
| RON | Kimi k2.5 | $40 | ~$2 (5% usage) |
| FORG | Qwen Plus | $0.55 | ~$5 (95% usage) |
| QMD | Local CPU | $0 | 100% search |
| **Total** | — | — | **<$10** |

## Success Metrics

| Metric | Target | Current |
|--------|--------|---------|
| Duplicate rate | <2% | QMD prevents |
| QMD usage | >90% | ~95% |
| Git commits/day | 2-3 | 2-3 |
| Cost/month | <$10 | ~$3 |
| Session continuity | 100% | 100% |

## Related

- [[RON-Evergreen-Rules_RON-SYS-010]] — Rules from mistakes
- [[RON-Recent-Lessons_RON-SYS-011]] — Last 30 days
- [[RON-Operating-System_RON-SYS-012]] — Procedures
- [[SOUL.md]] — Identity and drives (workspace)
- [[MEMORY.md]] — Session orientation (workspace)
