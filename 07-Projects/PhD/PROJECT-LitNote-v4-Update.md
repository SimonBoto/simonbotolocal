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

**Purpose:** Convert 159 legacy LitNotes in `01-Literature/` root to v4.0 canonical format
**Scope:** LitNotes ONLY (zettels excluded — see [[PROJECT-Zettel-v4-Update]])
**Method:** FORG batch processing with RON review
**Target:** Complete in 2–3 weeks

---

## Project Chain

| Position | Project | Status | Link |
|----------|---------|--------|------|
| **Previous** | Memory System v4.0 Optimization | ✅ Complete | [[PROJECT-Memory-System-v4]] |
| **Current** | LitNote v4.0 Update | 🟡 Active | This file |
| **Next** | Zettel v4.0 Update | ⏳ Queued | [[PROJECT-Zettel-v4-Update]] |

**Chain Rule:** Each project confirms previous completion and prepares next handoff.

---

## Confirmation of Previous

✅ **Memory System v4.0** confirmed complete:
- MEMORY.md: 22K → 3.4K tokens
- 5 RON system zettels created (RON-SYS-010 to 014)
- Safe dreaming configured
- All core files aligned

**Handoff received:** FORG operational, templates v4.0 canonical, QMD indexed

---

## Current State

### Inventory
| Location | Count | Format | Target |
|----------|-------|--------|--------|
| `01-Literature/` root | 159 | Legacy (mixed) | v4.0 |
| `01-Literature/Subconscious/` | 0 | — | — |
| Exemplar complete | 1 | v4.0 | Reference |

### Legacy Format Issues
- `aliases: [bracket, syntax]` → YAML list `- item`
- `tags: [bracket, syntax]` → YAML list `- item`
- `parent-moc: [[no quotes]]` → `"[[quoted]]"`
- `zettels-created: N` → `zettel-count: N`
- `extraction-quality: TIER` → Remove (redundant with `tier`)
- Missing: `source-origin`, `reviewed_by`, `created`, `updated`

### Batches (CGPT Anchor Groups)
| Batch | Anchor | LitNotes | Status |
|-------|--------|----------|--------|
| 0 | Exemplar | 1 (L-001-0654) | 🟡 RON doing |
| 1 | CGPT-0647 | 2 | ⏳ Ready for FORG |
| 2 | CGPT-0393 | 5 | ⏳ Queue |
| 3 | CGPT-0086 | ~12 | ⏳ Queue |
| 4 | CGPT-0264 | 4 | ⏳ Queue |
| 5+ | Others | ~135 | ⏳ Queue |

---

## Workflow

```
RON: Exemplar → Prepare FORG task → Review → Commit
                    ↓
FORG: Process batch → Write to pending/ → Signal
                    ↓
RON: Validate → Move to vault → Git commit → Next batch
```

### Cost Estimate
- Per LitNote: ~$0.01–0.02
- 159 LitNotes: ~$2–4 total
- Batch size: 2–5 LitNotes (keep FORG focused)

---

## Deliverables

### Done
- [ ] Exemplar: L-001-0654 v4.0 (RON)
- [ ] FORG protocol documented
- [ ] Batch tracking system

### In Progress
- [ ] Batch 1: CGPT-0647 (2 LitNotes)

### Pending
- [ ] Batch 2–N: All remaining CGPT anchors
- [ ] Final validation: 159/159 converted
- [ ] Handoff to [[PROJECT-Zettel-v4-Update]]

---

## Handoff to Next Project

**When this completes:**
1. All 159 LitNotes in v4.0 format
2. Git history shows conversion progression
3. FORG protocol proven at scale
4. [[PROJECT-Zettel-v4-Update]] receives:
   - Validated FORG workflow
   - Zettel template v4.0
   - Exemplar zettels (RON-prepared)
   - Cost/velocity metrics

---

## Related

- [[FORG-LitNote-Update-Protocol]] — Detailed workflow
- [[00-COMMAND]] — Current P0s
- [[01-PIPELINE]] — Flow truth
- [[02-HANDOFF]] — Session state

---

*Project v1.0 — 2026-04-09*
*Next review: After Batch 1 completion*
