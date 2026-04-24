---
id: ISSUE-092
title: Comprehensive Memory System Review & Fix — Metrics, Promotion, Continuity
assignee: RON
energy: 8h / $3.00  # Deep scan + updates (Grok primary)
priority: P0
status: active
created: 2026-04-24
parent: none
spawned: []
---

## Success Criteria
- [ ] Full map of memory layers (workspace/vault/tools/dreams/dailies)
- [ ] Audit 48 daily files (gaps/duplicates/metrics)
- [ ] Update MEMORY.md metrics (zettels/LitNotes/CGPT backlog)
- [ ] Review 23 pending dream promotions (apply/reject/decide)
- [ ] Fix daily gaps (Apr 17-19 backfill or document)
- [ ] Add model-switch protocol to MEMORY.md
- [ ] Test qmd/memory_search integration (index current flushes)
- [ ] Git commits, QMD index, velocity tracked

## Proposed Solutions (Automation-First)

### 1. Stale Metrics (MEMORY.md) — Auto
**Fix:** Cron daily 08:00: `qmd status` → parse → auto-update MEMORY.md Current Status. Git commit "metrics: auto-update". Human verify weekly.
**Est:** 30m setup.

### 2. Daily Gaps — Auto + Alert
**Fix:** Cron hourly: sync `memory/YYYY-MM-DD.md` → `08-Structure/Daily/YYYY/`. Alert if gap >24h. Backfill batch monthly, not one-by-one.
**Est:** 45m setup.

### 3. Unpromoted Dreams — Batch
**Fix:** FORG pre-sorts 23 candidates → RON decides 5/min (not 2h). Weekly ritual: 10m review, not 2h manual.
**Est:** 1h setup + 10m/week.

### 4. Model-Switch Continuity — Auto
**Fix:** Hook on `session_status` change → auto `memory_flush` + `02-HANDOFF.md` update. No manual note needed.
**Est:** 20m setup.

### 5. Flushes/QMD — Fix Query
**Fix:** `memory_search` already uses qmd backend. Debug why 0 hits (query parsing?). No new collection needed.
**Est:** 15m debug.

### 6. Scale — Auto Index
**Fix:** Cron weekly: `ls -lt memory/` + `wc -c` → auto-generate `memory/INDEX.md`. No manual table.
**Est:** 20m setup.

**Total Est:** 2.5h setup + 10m/week maintenance (was 4.5h one-time).

## Context
User: "Memory needs serious fixing." Scan revealed: outdated metrics, 23 unpromoted dreams, daily gaps, loose qmd/memory_search flow, no model continuity note. From MEMORY.md v4.1, DREAMS.md, memory/48 files.

Layers:
- Workspace MEMORY.md (curated orientation)
- memory/YYYY-MM-DD.md (flushes)
- DREAMS.md (light/REM/deep)
- Vault RON-SYS zettels (evergreen)
- Tools: memory_search/get (semantic/exact), qmd (vault hybrid)

## Progress Log
- [12:38] Issue created. Deep scan started (48 dailies listed, samples read).
- [12:41] Proposed solutions added (detailed fixes for 6 misses). Ready for execution.

## Blockers
None.

## Notes
P0 est. 8h: 2h scan, 3h promotions/metrics, 2h fixes, 1h test. Cost $3 Grok. Reversible git.