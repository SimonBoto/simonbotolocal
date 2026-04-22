---
id: ISSUE-056
title: Shared Agent Memory — RON/FORG/SCOUT Context Sync
assignee: RON
energy: 2h / $1.00
priority: P2
status: backlog
created: 2026-04-22
parent: none
spawned: []
---

# Issue-056: Shared Agent Memory

## Success Criteria
- [ ] Design shared memory layer (SQLite or file-based)
- [ ] Implement sync protocol between RON/FORG/SCOUT
- [ ] Test: FORG learns something → RON can recall it
- [ ] Document shared memory architecture
- [ ] Update agent configs to use shared layer

## Context
Currently each agent has isolated SQLite:
- RON: 1.6MB
- FORG: 69KB
- SCOUT: 69KB

FORG doesn't know what RON learned yesterday. SCOUT can't access FORG's extractions. This creates silos and duplicated effort.

## Progress Log
- [13:57] Issue created from memory system review
- [15:04] Architecture document created — 3 options analyzed
- [15:04] Recommended: Shared SQLite (Option A)
- [15:09] **Phase 1 IMPLEMENTED** — shared.sqlite created with 5 tables ✅
- [15:09] **Test PASSED** — FORG→shared→RON sync working ✅
- [15:09] Python wrapper: `shared_memory.py` ready ✅
- [15:10] **Phase 2 IMPLEMENTED** — FORG integration complete ✅
- [15:10] **RON client** created and tested ✅
- [15:10] **New agent onboarding protocol** documented ✅
- [15:10] **Test: Morning review** — RON sees 2 pending extractions ✅
- [ ] Phase 3: SCOUT discoveries logged to shared
- [ ] Phase 4: Auto-prioritization based on shared state

## Blockers
None

## Notes
Medium-term architectural improvement. Not blocking daily work.
