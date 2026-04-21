---
date: 2026-04-05
type: investigation
status: complete
---

# Article Numbering Investigation — SOURCE vs EXTRACTED

## The Problem

**Source File:** `Facebook Posts Collection.md`  
**Claim:** 158 articles  
**Actual:** 59 articles

**Extraction:** Articles were labeled 1-64 but **don't match source order**

---

## Article 1 Discrepancy

### Source Article 1
- **Title (Greek):** "Η Ασπιρίνη Μειώνει τις Μεταστάσεις..."
- **Title (English):** "Aspirin Reduces Metastases, Helping Immunity Fight Cancer Cells"
- **Topic:** Aspirin, platelets, TXA2, T-cells, cancer metastasis
- **References:** Nature 2025, NEJM 2025

### Extracted "Article 1"
- **LitNote:** L-002-0184 (was L-002-0168)
- **Title:** "Vitamin D RDA Statistical Error"
- **Topic:** Vitamin D, IOM error, statistics
- **References:** Veugelers 2014, Heaney 2015

**❌ MISMATCH!** Extracted "Article 1" is NOT Source Article 1

---

## What Happened

The extraction process:
1. **Didn't follow source order** — Articles were extracted by priority, not sequentially
2. **Used arbitrary numbering** — "Article 1" meant "first extracted", not "source article 1"
3. **Created confusion** — Source article numbers don't match extracted LitNote numbers

---

## Current Status of Source Article 1 (Aspirin/Metastases)

| Component | Status | Location |
|-----------|--------|----------|
| **Raw source** | ✅ Exists | Facebook Posts Collection.md (Article 1) |
| **Reference Note** | ✅ Created | R-001-0100 (Yang 2025 Nature) |
| **INBOX entry** | ❌ Not found | — |
| **LitNote** | ❌ Not created | — |
| **Zettels** | ❌ Not created | — |

**Article 1 (Aspirin/Metastases) was NEVER fully extracted!**

Only the Reference Note was created.

---

## The Real Article Count

| Category | Count |
|----------|-------|
| **Source articles** | 59 |
| **Reference Notes created** | ~99 (in Hub/) |
| **LitNotes created** | 62 |
| **Articles with full extraction** | Unknown (numbering is wrong) |

---

## What Needs to Happen

1. **Map source articles to extractions** — Identify which source articles are missing
2. **Reconcile numbering** — Either fix labels or abandon article numbers
3. **Extract missing articles** — Including Source Article 1 (Aspirin/Metastases)

---

## Recommendation

**Abandon "Article X" numbering.** Instead:
- Use **source-based identification** (first line of Greek title)
- Create **extraction log** mapping source → LitNote
- Focus on **completeness** not sequential numbering

---

*Investigation complete: 2026-04-05*
