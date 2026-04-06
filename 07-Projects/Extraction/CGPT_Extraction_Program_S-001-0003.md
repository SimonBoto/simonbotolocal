---
uid: S-001-0003
type: synthesis
title: "CGPT Extraction Program — From Archive to Zettelkasten"
domain: 001
domain-name: System
tags: [synthesis, extraction, cgpt, facebook, zettelkasten, workflow]
parent-moc: [[MOC-CGPT-Archive]]
parent-index: [[07 Projects Index]]
status: active
created: 2026-04-06
updated: 2026-04-06
---

# CGPT Extraction Program — From Archive to Zettelkasten

> **Systematic extraction of knowledge from ChatGPT conversations and Facebook articles into atomic zettels**

---

## Program Overview

| Component | Status | Count | Notes |
|-----------|--------|-------|-------|
| **Facebook Collection** | ✅ COMPLETE | 158/158 articles | All extracted to LitNotes |
| **CGPT_0264** | 🟡 PAUSED | 5/11 LitNotes | Warburg Effect & Cancer metabolism |
| **CGPT Inbox** | ⏸️ PENDING | 688 conversations | 17 processed, 671 pending |

**Total extraction progress:** 180/857 sources (21%)

---

## Phase 1: Facebook Collection ✅

### Results
- **158 articles** extracted to LitNotes
- **~800 zettels** generated
- **All to Article 1-2 standard**

### Key Lessons
1. **Reference-first enhancement** — Web search for citations before extraction
2. **LitNote → Zettel path** — Standardized workflow
3. **Batch verification** — Line-by-line review before continuation
4. **Git checkpoint per batch** — Never lose work

### Documentation
- `FACEBOOK_ARTICLE_INDEX.md` — Full index
- `FACEBOOK_AUDIT_QUALITY.md` — Quality standards
- `memory/2026-04-06_CGPT_Processing_Workflows.md` — Perfected workflows

---

## Phase 2: CGPT_0264 🟡

### Current Status
- **5/11 LitNotes complete** (18 zettels)
- **6 LitNotes paused:**
  - L-001-0613 (TP53 Multiple Myeloma)
  - L-001-0614 (HBOT Cancer)
  - L-001-0401 (One Carbon Metabolism B12)
  - L-001-0402 (Methylation Cycle)
  - L-001-0403 (MTHFR Genetics)
  - L-001-0404 (B12 MM Mimicry)

### Resume Protocol
1. Read `memory/2026-04-06_VAULT_PAUSE_STATUS.md`
2. Complete remaining 6 LitNotes (~20 zettels)
3. Git commit: `2026-04-XX: CGPT_0264 complete`
4. Update this document

---

## Phase 3: CGPT Inbox ⏸️

### The Backlog
- **688 conversations** in `00-Inbox/ChatGPT/`
- **13 processed** (CGPT_0001 to CGPT_0017)
- **675 pending**

### Major Anchors
| Anchor | LitNotes | Priority |
|--------|----------|----------|
| CGPT-0133 | 28 | Bone/Calcium |
| CGPT-0272 | ? | Metabolic health |
| CGPT-0328 | ? | TBD |

### Extraction Strategy
**Option A: Manual** (current)
- Quality: Article 1-2
- Speed: 5-10 LitNotes/day
- ETA: 135 days

**Option B: ZettelForge** (proposed)
- Quality: Article 1-2 (with RON review)
- Speed: 50-100 LitNotes/day
- ETA: 7-14 days
- Requires: WORKER model config

---

## Workflows Perfected

### Facebook Article Processing
```
Article → Web search citations → LitNote → 2-5 Zettels → Validation → Git commit
```

### CGPT Conversation Upgrade
```
Assessment → Rename → YAML upgrade → Zettel refactor → Bidirectional linking → Optimal format
```

### Quality Standard: Article 1-2
- Verified citations
- No placeholders
- All links functional
- YAML complete
- Tags present

---

## Metrics Dashboard

| Metric | Value | Target |
|--------|-------|--------|
| Sources extracted | 180 | 857 |
| LitNotes created | 183 | ~400 |
| Zettels generated | ~1,095 | ~2,500 |
| Article 1-2 quality | 12 | 400 |
| Git commits | 90+ | — |

---

## Integration with ZettelForge

**ZettelForge will accelerate Phase 3:**
- Worker drafts LitNotes from CGPT conversations
- RON reviews and finalizes
- Quality gates enforce Article 1-2 standard
- Batch processing: 50 conversations at a time

**Connection:** [[ZettelForge_Concept_S-001-0001]]

---

## Next Actions

### Immediate (This Week)
- [ ] Resume CGPT_0264 (6 LitNotes)
- [ ] Configure WORKER model
- [ ] Test ZettelForge on 1 conversation

### Short Term (Next 2 Weeks)
- [ ] Complete CGPT_0264
- [ ] Process CGPT-0133 (28 LitNotes)
- [ ] Validate ZettelForge quality

### Long Term (Next 2 Months)
- [ ] Clear CGPT inbox (675 conversations)
- [ ] All extractions to Article 1-2 standard
- [ ] Full vault: ~2,500 zettels

---

## Related Documents

| Document | Purpose |
|----------|---------|
| [[ZettelForge_Concept_S-001-0001]] | Assisted extraction tool |
| [[QMD_Activation_S-001-0002]] | Hybrid search for vault |
| `memory/2026-04-06_CGPT_Processing_Workflows.md` | Perfected workflows |
| `INFRASTRUCTURE_HANDOFF.md` | Team handoff |

---

*From chaos to zettels — one conversation at a time.*
