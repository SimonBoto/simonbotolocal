---
uid: PIPELINE-2026-04-09
type: pipeline-dashboard
status: active
---

# PIPELINE — Flow State, Backlog & Bottlenecks

## Current Flow State

| Stage | Count | Status | Meaning | Pressure |
|-------|------:|--------|---------|----------|
| **00-Inbox** | ~757 | 🟡 Triage pressure | 5 new P0 items added today | Medium |
| **01-Literature (v4.0)** | 70 | 🟢 Moving | 23% converted, quality validated | Low |
| **01-Literature (legacy)** | 227 | 🟡 Processing | 138 pending conversion | Medium |
| **02-References** | — | 🟡 Cleanup active | Provenance repair ongoing | Medium |
| **03-Zettels/Conscious** | 1,141 | 🟡 Better | 78% connected (was 706) | Medium |
| **03-Zettels/Subconscious** | 312 | ✅ Stable | Permanent layer | None |
| **04-Synthesis** | 19 | 🟡 Controlled | Triangle v2.0 project ready | Low |
| **CGPT Anchors** | 688 (17 done) | 🟡 Reservoir | Major unprocessed knowledge store | High |

---

## Active Bottlenecks (Ranked)

### 🟡 Medium: LitNote Conversion Decision
- **70 done, 138 pending**
- Need explicit scope decision: 30/66/138/stop
- **Action needed:** User decision tomorrow

### 🟡 Medium: Conscious Zettel Connections
- **1,141 connected (78%)** — improved from 706
- **312 orphaned** — tracked, not blocking
- **Action needed:** MOC-Orphan-Zettels later

### 🟡 High: CGPT Reservoir
- 688 conversations, 671 pending
- Risk of endless intake without consolidation
- **Action needed:** AutoResearch project implementation

### 🟡 Medium: Reference Canonicalization
- Duplicate groups, provenance ambiguity
- **Action needed:** Tracker-first cleanup (deferred)

---

## Ready Backlog

| Item | Value | Effort | Current Constraint |
|------|-------|--------|-------------------|
| LitNote v4.0 (30 files) | High | 30 min | **Quick win** — hit 100 total |
| LitNote v4.0 (66 files) | High | 2 hours | Complete L-001 domain |
| LitNote v4.0 (138 files) | High | 6-7 hours | Full conversion |
| P0 inbox synthesis | Very High | 1 hour | Triangle v2.0 architecture |
| CGPT_0264 completion | High | Low-Med | Bounded, active |
| Orphan zettel MOC | Medium | 2 hours | Non-blocking |

---

## Flow Metrics

| Transition | In | Processing | Out | Health |
|------------|---:|-----------:|----:|--------|
| Inbox → Literature | ~757 | Triage | Ongoing | ⚠️ 5 new P0 items |
| Literature → v4.0 | 297 | 70 done | 23% | 🟢 Moving |
| v4.0 → Zettels | 70 | Linked | Ongoing | 🟢 Good connections |
| Conscious → Subconscious | 1,141 | 312 orphans | 312 | 🟡 Tracked |
| Zettels → Synthesis | Selective | Triangle v2.0 | Ready | 🟢 Good |

---

## Pressure Assessment

### Healthy
- LitNote v4.0 pipeline validated (FORG works)
- Zettel connections improved (78%)
- FORG pipeline cost-effective ($0.04/file)
- Dashboards updated
- Git disciplined (28 commits)

### Unhealthy
- CGPT reservoir still high-pressure
- 312 orphan zettels need attention
- LitNote conversion scope undecided

---

## Operational Consequence

Pipeline diagnosis → COMMAND orders:

| Pipeline Says | COMMAND Does |
|-------------|--------------|
| LitNote conversion 23% done | Decide: continue scope |
| CGPT reservoir high | Implement AutoResearch |
| Zettel connections improved | Defer orphan cleanup |
| 5 P0 items ready | Synthesize to Triangle v2.0 |

**Correct move:** Decide LitNote scope tomorrow, then execute.

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

Pipeline today: **controlled progress, clear decisions needed.**

70 LitNotes converted with quality. 5 P0 items captured. System moving.

Tomorrow: **decide scope, then execute.**

---

*Pipeline v3.0 — 70 v4.0 LitNotes, 138 pending*  
*Updated 2026-04-09*
