---
uid: DASHBOARD-CONNECTIVITY-001
type: dashboard
title: "Connectivity Metrics"
date: 2026-04-21
status: active
parent-index: [[Dashboards-Index]]
---

# Connectivity Metrics

> **Live tracking: Inbox → LitNotes → Zettels → Synthesis → Real Work**

*Last updated: 2026-04-21 23:27*

---

## Flow Rates

| Stage | Count | Target | Health |
|-------|-------|--------|--------|
| **Inbox** | 757 files | <50 pending | 🔴 |
| **LitNotes** | 221 files | 100% extracted | 🟢 |
| **Zettels** | 1,630 files | 50/week new | 🟢 |
| **Synthesis** | 32 files | 2/week new | 🟢 |
| **Real Work** | 6 active | 1/week applied | 🟡 |

---

## Stage Details

### Stage 1: Inbox → LitNote
| Metric | Value | Status |
|--------|-------|--------|
| Total inbox | 757 files | — |
| Processed to LitNote | ~221 | 29% |
| Pending | ~536 | 71% 🔴 |
| Oldest item | Unknown | Check needed |

**Action:** Process 5 P0 inbox items (Issue-014)

---

### Stage 2: LitNote → Zettel
| Metric | Value | Status |
|--------|-------|--------|
| Total LitNotes | 221 | — |
| With zettels | ~209 | 95% 🟢 |
| Zero zettels | ~12 | 5% 🟡 |
| Avg zettels/LitNote | ~7.4 | Target: 3-5 |

**Action:** Extract from 12 zero-zettel LitNotes (Issue-015)

---

### Stage 3: Zettel → Synthesis
| Metric | Value | Status |
|--------|-------|--------|
| Total zettels | 1,630 | — |
| In synthesis | ~65 | 4% 🟡 |
| Orphan (no synthesis) | ~1,565 | 96% 🔴 |
| Synthesis coverage | 4% | Target: 20% |

**Action:** Create more syntheses from zettel clusters

---

### Stage 4: Synthesis → Real Work
| Metric | Value | Status |
|--------|-------|--------|
| Total syntheses | 32 | — |
| Applied to projects | ~6 | 19% 🟡 |
| X posts created | 1 | 🟢 |
| Clinical protocols | 2 | 🟢 |
| PhD applications | 3 | 🟢 |

**Action:** Increase synthesis → output conversion

---

## Blockages

| Blockage | Severity | Issue | Action |
|----------|----------|-------|--------|
| 536 inbox unprocessed | 🔴 High | — | Issue-014 |
| 12 LitNotes zero zettels | 🟡 Medium | — | Issue-015 |
| 96% zettels not in synthesis | 🔴 High | — | Create syntheses |
| 81% synthesis not applied | 🟡 Medium | — | Output workflow |

---

## Weekly Targets

| Week | Inbox | Zettels | Synthesis | Output |
|------|-------|---------|-----------|--------|
| This week | -5 | +50 | +2 | +1 X post |
| Next week | -10 | +50 | +3 | +1 clinical |

---

## Automation Status

| Task | Agent | Status |
|------|-------|--------|
| Inbox → LitNote | RON+FORG | 🟡 Manual |
| LitNote → Zettel | FORG | 🟢 Active |
| Zettel → Synthesis | RON | 🟡 Manual |
| Synthesis → Output | RON | 🟡 Manual |

---

*Track. Clear. Compound.*
