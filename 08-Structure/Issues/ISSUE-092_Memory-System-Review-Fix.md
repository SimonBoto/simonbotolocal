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

## Proposed Solutions

### 1. Stale Metrics (MEMORY.md)
**Fix:** Run `qmd status` → Update zettels/LitNotes. `ls pending/FORG-BRIEF-* | wc -l` → CGPT backlog. Edit MEMORY.md Current Status.
**Est:** 15m.

### 2. Daily Gaps (Apr 17-19, etc.)
**Fix:** For each gap: `memory_get 2026-04-XX.md` → `write 08-Structure/Daily/2026/2026-04-XX.md`. Document gaps as zettel "Memory-Gaps_Z-901-XXXX.md".
**Est:** 1h (5 gaps).

### 3. Unpromoted Dreams (23 candidates)
**Fix:** Table in DREAMS.md → RON decisions (✅/📝/❌/⏳). Apply: Edit MEMORY.md/vault zettels. Reject: Archive. Commit per batch.
**Est:** 2h.

### 4. Model-Switch Continuity
**Fix:** Add to MEMORY.md Operational: "Model switch: memory_flush → HANDOFF update → verify post-switch (read key files)."
**Est:** 10m.

### 5. Flushes/QMD Loose
**Fix:** New qmd collection "memory" (`qmd collection add memory ~/.openclaw/workspace/memory/*.md`). Test `memory_search` + qmd hybrid.
**Est:** 30m.

### 6. Scale (48+ dailies)
**Fix:** `write memory/INDEX.md` (date/size/theme table). Cron weekly summary zettel.
**Est:** 45m.

**Total Est:** 4.5h / $1.50 (trimmed from 8h).

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