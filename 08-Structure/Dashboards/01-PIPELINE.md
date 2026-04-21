---
uid: PIPELINE-2026-04-21
type: pipeline-dashboard
status: active
---

# PIPELINE — Flow State, Backlog & Bottlenecks

> **Quick Reference:** Inbox → Literature → Zettels → Synthesis | Check weekly

## Current Flow State

| Stage | Count | Status | Meaning | Pressure |
|-------|------:|--------|---------|----------|
| **00-Inbox** | ~757 | 🟡 Triage pressure | 5 new P0 items added | Medium |
| **01-Literature (v4.0)** | **219** | ✅ **Complete** | 100% converted, homogeneous | None |
| **01-Literature (active)** | **77** | 🟡 Needs zettels | 35% of corpus needs extraction | Medium |
| **01-Literature (complete)** | **144** | ✅ Ready | 65% fully extracted | None |
| **02-References** | — | 🟡 Cleanup active | Provenance repair ongoing | Medium |
| **03-Zettels/Conscious** | 1,453 | 🟡 Better | 78% connected | Medium |
| **03-Zettels/Subconscious** | 312 | ✅ Stable | Permanent layer | None |
| **04-Synthesis** | 19 | 🟡 Controlled | Triangle v2.0 project ready | Low |
| **CGPT Anchors** | 688 (17 done) | 🟡 Reservoir | Major unprocessed knowledge store | High |
| **Agent Ecosystem** | 3 agents | ✅ Operational | RON + FORG + SCOUT | None |
| **Memory System** | LanceDB | ✅ Active | FTS working, semantic pending | Low |

---

## Active Bottlenecks (Ranked)

### ✅ Complete: LitNote v4.0 Conversion
- **219 files, 100% complete**
- 0 legacy files remaining
- 68 duplicates archived, 47 UIDs consolidated
- **Action:** FORG zettel extraction for 77 active files

### ✅ Complete: Core Files Reproducibility
- **All 8 workspace files enhanced**
- Quick Reference cards added
- Executable examples included
- **Action:** Maintenance mode

### 🟡 Medium: Conscious Zettel Connections
- **1,141 connected (78%)** — improved from 706
- **312 orphaned** — tracked, not blocking
- **Action needed:** MOC-Orphan-Zettels later

### 🟡 High: CGPT Reservoir
- 688 conversations, 671 pending
- Risk of endless intake without consolidation
- **Action needed:** AutoResearch project implementation

### 🟡 Low: Memory Semantic Search
- LanceDB active, FTS working
- Semantic pending OpenRouter embedding config
- **Action needed:** API key decision (optional)

---

## Ready Backlog

| Item | Value | Effort | Current Constraint |
|------|-------|--------|-------------------|
| ISSUE-013 completion | High | 30m | Dashboard sync |
| FORG zettel sprint (25 P0) | High | 2 hours | 25 files with 0 zettels |
| FORG zettel sprint (15 P1) | High | 1.5 hours | 15 GOLD under-extracted |
| FORG zettel sprint (40 total) | High | 3.5 hours | Complete active queue |
| P0 inbox synthesis | Very High | 1 hour | Triangle v2.0 architecture |
| CGPT AutoResearch pilot | High | 2 hours | SCOUT validation |
| Orphan zettel MOC | Medium | 2 hours | Non-blocking |

---

## Flow Metrics

| Transition | In | Processing | Out | Health |
|------------|---:|-----------:|----:|--------|
| Inbox → Literature | ~757 | Triage | Ongoing | ⚠️ 5 new P0 items |
| Literature → v4.0 | 219 | **219 done** | **100%** | ✅ **Complete** |
| v4.0 → Zettels | 77 active | Ready for FORG | Queue prepared | 🟢 Ready |
| Conscious → Subconscious | 1,141 | 312 orphans | 312 | 🟡 Tracked |
| Zettels → Synthesis | Selective | Triangle v2.0 | Ready | 🟢 Good |

---

## Pressure Assessment

### Healthy
- ✅ LitNote v4.0 **100% complete** (219 files)
- ✅ Core files **100% reproducible**
- ✅ Issues/Agents/Skills system operational
- Zettel connections improved (78%)
- FORG pipeline cost-effective ($0.04/file)
- LanceDB memory active

### Unhealthy
- CGPT reservoir still high-pressure
- 312 orphan zettels need attention
- 77 active LitNotes need zettel extraction
- 5 P0 inbox items need synthesis

---

## Operational Consequence

Pipeline diagnosis → COMMAND orders:

| Pipeline Says | COMMAND Does |
|-------------|--------------|
| LitNote conversion **100% done** | FORG zettel extraction |
| Core files **100% reproducible** | Maintenance mode |
| CGPT reservoir high | Implement AutoResearch |
| Zettel connections improved | Defer orphan cleanup |
| 5 P0 items ready | Synthesize to Triangle v2.0 |
| Memory semantic pending | Optional: OpenRouter config |

**Correct move:** Complete ISSUE-013, then decide post-vacation P0s.

---

## Cross-Reference

- **Orders:** [[00-COMMAND]] — What to do now
- **Session context:** [[02-HANDOFF]] — Where we are
- **History:** [[02-LOG]] — What happened

---

## Pipeline Rules

1. **Mechanical only** — No narrative, no theory
2. **Update on reality change** — Counts move, bottlenecks shift
3. **Bottlenecks > vanity metrics** — 70 done matters more than 138 pending
4. **No speculative backlog** — Actual flow state only

---

## Final Note

RON,

Pipeline today: **LitNote conversion COMPLETE. Core files 100% reproducible. 77 active files ready for zettel extraction.**

219 LitNotes homogeneous, 0 duplicates, 100% YAML standardized. FORG pipeline validated. Memory system active.

Next: **Complete ISSUE-013, then post-vacation P0s.**

---

*Pipeline v3.2 — 219 v4.0 LitNotes, 77 active for extraction, memory active*  
*Updated 2026-04-21*
