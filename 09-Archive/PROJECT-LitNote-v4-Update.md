---
uid: PROJECT-PHD-028
type: project
title: "PROJECT: LitNote v4.0 Update"
status: active
priority: P0
created: 2026-04-09
updated: 2026-04-09
---

# PROJECT: LitNote v4.0 Update

**Purpose:** Convert legacy LitNotes to v4.0 canonical format
**Scope:** LitNotes ONLY (zettels excluded — see [[PROJECT-Zettel-v4-Update]])
**Method:** FORG batch processing with RON review
**Status:** 🟡 Active — 70 done, 138 pending

---

## Current State (2026-04-09)

| Metric | Value |
|--------|-------|
| **v4.0 LitNotes** | 70 files |
| **Legacy remaining** | 227 files |
| **Pending FORG** | 138 files |
| **Completion** | 23% |
| **Git commits** | 29 today |

### By Domain
| Domain | v4.0 Done | Pending | Total |
|--------|-----------|---------|-------|
| L-001 (Insulin) | 70 | 66 | 136 |
| L-002 (Facebook) | 0 | 59 | 59 |
| L-101 (Pharma) | 0 | 13 | 13 |

---

## Batches Completed

| Batch | Files | UIDs | Status | Commit |
|-------|-------|------|--------|--------|
| 0 | 66 | LitSubconcious merge | ✅ | `e4fe64d1` |
| 1 | 10 | L-001-0005 to 0014 | ✅ | `339e31dd` |
| 2 | 4 | L-001-0015 to 0018 | ✅ | `eba17017` |
| 4 | 10 | L-001-0015,0016,0017,0018,0045C-H | ✅ | `66d7fb5b` |
| 5 | 10 | L-001-0046A,0046B,0060A,0060B,0060,0200,0201,0205,0206,0207 | ✅ | `457dc08c` |
| 6 | 10 | L-001-0208 to 0215, 0401, 0402 | ✅ | `26588d7c` |
| 7 | 10 | L-001-0403 to 0408, 0501 to 0504 | ✅ | `34e1c290` |
| 8 | 10 | L-001-0505 to 0514 | ✅ | `9c0e681a` |
| 10 | 10 | L-001-0515 to 0523, 0573 | ✅ | `92eddc50` |
| Fix | 39 | YAML consistency (reviewed_by: FORG) | ✅ | `99af846e` |

**Total: 70 v4.0 LitNotes committed**

---

## Quality Validation

### ✅ All 70 Files Pass
- `source-origin` present
- `reviewed_by: "FORG"` (standardized)
- `extraction-quality` removed
- `updated: 2026-04-09`
- Quoted links: `"[[MOC-Name]]"`
- YAML list format for aliases

### MOC Connections
- 8 different MOCs connected
- Top: Bone Health (8), Lipid Metabolism (7), Clinical Protocols (7)

---

## Key Learnings

1. **Explicit file lists prevent duplicates** — FORG re-processed when given vague "next 10"
2. **YAML consistency matters** — fixed 39 files with inconsistent quoting
3. **Cost efficiency** — $0.04/file average
4. **FORG validated** — Pipeline works, ready for scale

---

## Tomorrow's Options

| Option | Scope | Time | Result |
|--------|-------|------|--------|
| A | 30 more L-001 | 30 min | 100 total v4.0 |
| B | 66 more L-001 | 2 hours | L-001 domain complete (136) |
| C | All 138 | 6-7 hours | Full conversion (208) |
| D | Stop | — | Defer remaining |

**Decision needed:** User to choose tomorrow

---

## Workflow Established

```
RON: Create explicit batch task → Spawn FORG
                    ↓
FORG: Process batch → Write outputs → Move sources to archive/
                    ↓
RON: Validate → Move to vault → Git commit → Next batch
```

### Cost
- Per 10 files: ~$0.40
- Per file: ~$0.04
- 138 remaining: ~$5.50

---

## Related

- [[FORG-LitNote-Update-Protocol]] — Detailed workflow
- [[PROJECT-AutoResearch-Knowledge]] — Next: autonomous extraction
- [[PROJECT-The-Triangle-v2.0-Superoptimization]] — Future architecture
- [[00-COMMAND]] — Current P0s
- [[01-PIPELINE]] — Flow truth
- [[02-HANDOFF]] — Session state

---

*Project v2.0 — 70 done, 138 pending*  
*Updated 2026-04-09*
