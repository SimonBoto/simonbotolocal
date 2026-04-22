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
- [x] Design shared memory layer (SQLite or file-based)
- [x] Implement sync protocol between RON/FORG/SCOUT
- [x] Test: FORG learns something → RON can recall it
- [x] Document shared memory architecture
- [x] Update agent configs to use shared layer
- [x] Auto-prioritization based on performance
- [x] New agent onboarding protocol

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
- [15:19] **Phase 3 IMPLEMENTED** — SCOUT integration complete ✅
- [15:19] **SCOUT client** created and tested ✅
- [15:19] **SCOUT program** documented ✅
- [15:19] **Test: Agent status check** — SCOUT sees FORG+RON states ✅
- [15:21] **Phase 4 IMPLEMENTED** — Auto-prioritization engine ✅
- [15:21] **Dynamic scoring** — Adjusts based on FORG speed + RON approval ✅
- [15:21] **Recommendations** — Batch size, quality threshold auto-adjust ✅
- [15:21] **Test: Engine running** — FORG quality 0.94, RON approval 80% ✅

## Blockers
None

## Status
**COMPLETED** — All 4 phases implemented, all 3 agents connected, auto-prioritization active.

## Notes
Medium-term architectural improvement. Not blocking daily work.
