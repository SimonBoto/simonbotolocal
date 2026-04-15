---
uid: FORG-GUIDE-001
type: forg-instruction
title: "FORG Zettel Extraction Guide — Quality Standard"
date: 2026-04-15
status: active
---

# FORG Zettel Extraction Guide

## ⚠️ CRITICAL: Quality Over Speed

**RON's directive:** This is NOT a bulk extraction. Each zettel must be:
- Structurally clean
- Conceptually coherent
- Properly sourced
- Ready for immediate use

**Cost is irrelevant. Quality is everything.**

---

## Exemplar Zettel

**Reference:** `03-Zettels/Conscious/ALP_Isoenzymes_Tissue_Sources_Z-001-0576A.md`

**Key features:**
1. **YAML complete** — all fields populated
2. **source-litnote** — full filename, not bare UID
3. **Concise title** — descriptive, not verbose
4. **Core claim** — one-sentence summary at top
5. **Structured body** — mechanism, significance, source
6. **No fluff** — every line adds value

---

## Extraction Rules

### From LitNote Section to Zettel

**Input:** LitNote "Core Concepts Extracted" section

**Output:** Single zettel file with:

```yaml
---
uid: Z-XXX-XXXX  # From LitNote zettel link
 type: zettel
title: "Concise Concept Title"  # From section header
domain: XXX  # Match LitNote domain
tags:
  - zettel
  - [topic from LitNote]
parent-moc: "[[MOC-Topic]]"  # Match LitNote parent-moc
source-litnote: "[[Full_LitNote_Filename_L-XXX-XXXX_v4.0]]"  # CRITICAL: full name
status: conscious
---
```

### Body Structure

```markdown
# Title

> One-sentence core claim (from LitNote "Core Claim" or synthesize)

## Core Concept

Brief paragraph or key process block.

## Mechanism / Steps

1. Step one
2. Step two
3. Step three

## Clinical Significance (or relevant section)

Why this matters.

## Source

Extracted from: [[Full_LitNote_Filename]]  
**Category:** [from LitNote]  
**Extraction date:** YYYY-MM-DD
```

---

## Quality Checklist (MANDATORY)

Before saving each zettel:

- [ ] UID matches LitNote link exactly
- [ ] Title is concise and descriptive
- [ ] source-litnote uses FULL filename with extension
- [ ] parent-moc matches LitNote's parent-moc
- [ ] Core claim is one clear sentence
- [ ] No bare UID links in body
- [ ] All content derived from LitNote section
- [ ] No invented information

---

## Batch Assignment

**LitNotes to process:** 25 files, ~200 zettels

**Priority order:**
1. L-001-0576 (ALP) — 6 zettels — RON created 1 exemplar
2. L-001-0574 (Carb Context) — 6 zettels
3. L-001-0575 (CKD Nutrition) — 6 zettels
4. Remaining 22 LitNotes

**Handoff:** Save completed zettels to `03-Zettels/Conscious/`
**Report:** Update this file with progress

---

## FORG Safety Rules

1. **Create only** — never delete, overwrite, or modify existing zettels
2. **Verify UID uniqueness** — `ls 03-Zettels/Conscious/*Z-XXX-XXXX*` before creating
3. **Full filenames only** — never bare UIDs in links
4. **Stop on ambiguity** — if LitNote section is unclear, flag for RON review

---

## Completion Standard

**Never declare partial as complete.**

Count before claiming:
- "6 zettels from L-001-0576" → verify 6 files exist
- "Batch 1 complete" → verify all assigned zettels created

**RON will verify counts.**

---

*Guide created: 2026-04-15*  
*Exemplar: ALP_Isoenzymes_Tissue_Sources_Z-001-0576A.md*  
*Status: Ready for FORG assignment*
