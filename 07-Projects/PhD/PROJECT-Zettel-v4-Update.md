---
uid: PROJECT-PHD-029
type: project
title: "PROJECT: Zettel v4.0 Update"
status: queued
priority: P1
created: 2026-04-09
updated: 2026-04-09
---

# PROJECT: Zettel v4.0 Update

**Purpose:** Convert legacy zettels to v4.0 canonical format
**Scope:** Zettels ONLY (LitNotes handled in [[PROJECT-LitNote-v4-Update]])
**Method:** FORG batch processing with RON review
**Trigger:** Start after [[PROJECT-LitNote-v4-Update]] completes

---

## Project Chain

| Position | Project | Status | Link |
|----------|---------|--------|------|
| **Previous** | LitNote v4.0 Update | 🟡 Active | [[PROJECT-LitNote-v4-Update]] |
| **Current** | Zettel v4.0 Update | ⏳ Queued | This file |
| **Next** | (To be defined) | ⏳ Future | TBD |

**Chain Rule:** This project waits for previous completion signal.

---

## Awaiting Handoff From Previous

**When [[PROJECT-LitNote-v4-Update]] completes, receive:**
- [ ] Validated FORG workflow at scale
- [ ] Zettel template v4.0 (canonical)
- [ ] Exemplar zettels (RON-prepared)
- [ ] Cost/velocity metrics from LitNote project
- [ ] Git discipline confirmation

---

## Preliminary Scope

### Inventory (Estimated)
| Location | Count | Format |
|----------|-------|--------|
| `03-Zettels/Conscious/` | ~1,300 | Mixed legacy |
| `03-Zettels/Subconscious/` | ~100 | Frozen (do not modify) |
| `03-Zettels/Biomarkers/` | ~50 | Check individually |
| `03-Zettels/Supplements/` | ~100 | Check individually |

### Legacy Format Issues (Expected)
- `aliases: [bracket, syntax]` → YAML list
- `parent-moc: [[no quotes]]` → `"[[quoted]]"`
- `source-litnote: [[bare-uid]]` → `[[Full_Filename_Z-XXX-XXXX]]`
- Missing: `extracted_by`, `reviewed_by`, `created`, `updated`
- Sections: May need `Clinical Significance`/`PhD Relevance` audit

---

## Preliminary Workflow

```
RON: Exemplar zettels → Prepare FORG task → Review → Commit
                    ↓
FORG: Process batch → Write to pending/ → Signal
                    ↓
RON: Validate → Move to vault → Git commit → Next batch
```

### Batch Strategy (TBD — depends on LitNote velocity)
| Option | Size | Pros | Cons |
|--------|------|------|------|
| A | 10 zettels | Fast iteration | Many batches |
| B | 25 zettels | Balance | Moderate review load |
| C | 50 zettels | Efficiency | Heavy review |

**Decision:** After LitNote project reports velocity metrics

---

## Preliminary Deliverables

### Not Started
- [ ] Exemplar zettels v4.0 (RON)
- [ ] FORG protocol for zettels
- [ ] Batch tracking system
- [ ] All Conscious zettels converted
- [ ] Validation complete

---

## Blockers

**Active:** Waiting for [[PROJECT-LitNote-v4-Update]] completion

**Do not start until:**
1. LitNote project shows 80%+ completion
2. FORG workflow validated
3. Cost metrics confirm feasibility

---

## Related

- [[PROJECT-LitNote-v4-Update]] — Active predecessor
- [[Template_Zettel]] — v4.0 canonical template
- [[03-Zettels-Conscious]] — Target folder

---

*Project v0.1 — Queued — 2026-04-09*
*Activation trigger: [[PROJECT-LitNote-v4-Update]] completion*
