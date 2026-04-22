---
id: ISSUE-073
title: "LitNote-Zettel Connection Gaps — 128 Orphaned LitNotes + 98 Unsourced Zettels"
assignee: RON + FORG
energy: 6h / $3.00
priority: P1
status: active
created: 2026-04-22
parent: none
spawned: []
---

# Issue-073: LitNote-Zettel Connection Gaps

## Success Criteria
- [ ] All 242 LitNotes have at least 1 zettel linking to them
- [ ] All 1,346 zettels have `source-litnote` pointing to a LitNote
- [ ] Connection rate: 100% bidirectional
- [ ] No orphaned LitNotes
- [ ] No unsourced zettels

## Context
The vault has connection gaps in the LitNote → Zettel chain. While 114 LitNotes are properly connected, 128 are orphaned (no zettels link to them). Additionally, 98 zettels lack `source-litnote` entirely.

## Audit Results (2026-04-22)

### LitNotes
| Status | Count | % |
|--------|-------|---|
| **Connected** (have zettels linking to them) | 114 | 47.1% |
| **Orphaned** (no zettel connections) | 128 | 52.9% |

**Top Connected LitNotes:**
- L-001-0702: 107 zettels (CGPT_0445 Advanced Biochemistry)
- L-002-0235: 106 zettels (Low-Carb vs Low-Fat 39 RCTs)
- L-001-0599: 57 zettels (CGPT-0022 Extraction)
- L-001-0703: 35 zettels (CGPT_0586 Fatty Acid Metabolism)
- L-001-0704: 30 zettels (CGPT_0264 Warburg Effect)

### Zettels
| Status | Count | % |
|--------|-------|---|
| **With source-litnote** | ~1,248 | 92.7% |
| **Without source-litnote** | 98 | 7.3% |

**Zettels without source-litnote include:**
- Biomarkers-Index.md
- Various B-XXX-XXXX biomarker files
- MASTER_Biomarker_Reference
- OAT reference files

## Root Causes

1. **Biomarker zettels** use B-XXX-XXXX UIDs, not Z-XXX-XXXX
2. **Reference/index files** aren't proper zettels
3. **Old format zettels** predate the source-litnote requirement
4. **Synthetic/thematic LitNotes** haven't been processed into zettels

## Progress Log
- [2026-04-22] Audit completed — 128 orphaned LitNotes, 98 unsourced zettels identified
- [ ] Phase 1: Fix biomarker zettels (B- → Z- transition or special handling)
- [ ] Phase 2: Process orphaned LitNotes into zettels (FORG batch)
- [ ] Phase 3: Add source-litnote to old zettels
- [ ] Phase 4: Verify 100% connection rate

## Blockers
- Some orphaned LitNotes may be synthetic/thematic (not extractable)
- Biomarker files need special handling (B- prefix vs Z- prefix)
- Old zettels may need retroactive sourcing

## Notes
**Priority order:**
1. Connected LitNotes with many zettels (strengthen)
2. Orphaned LitNotes with high value (process)
3. Unsourced zettels (fix)
4. Low-value orphaned LitNotes (archive or synthetic)
