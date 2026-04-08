# Reference Note Merge Plan

## Executive Summary
- **Total reference notes:** 193
- **Duplicates identified:** 15+ groups
- **Strategy:** Merge best content, keep citation-source provenance, delete inferior duplicates

---

## DUPLICATE GROUPS TO MERGE

### Group 1: Norgren 2026 (Meat/APOE4)
**Files:**
- R-002-0006 (older, synthetic, SILVER)
- R-002-0015 (older, synthetic, GOLD - most complete)
- R-002-0046 (today, citation-only, SILVER - connected to Facebook source)

**Action:** KEEP R-002-0046 as canonical
- Add DOI/URL from R-002-0015
- Keep citation-source note
- Update tier to GOLD if DOI verified
- Delete R-002-0006 and R-002-0015

---

### Group 2: Byrne 2022 (LDL/Statin)
**Files:**
- R-002-0007 (older, GOLD, PMID 35285850 verified)
- R-002-0047b (today, GOLD, citation from Facebook)

**Action:** KEEP R-002-0007 as canonical
- Add "Citation from Facebook" note to source section
- Delete R-002-0047b

---

### Group 3: Conrad 2023 (Autoimmune Epidemiology)
**Files:**
- R-002-0008 (UK Cohort - different study?)
- R-002-0016 (Epidemiology)
- R-002-0048a (today, citation-only)

**Action:** MERGE R-002-0016 + R-002-0048a
- Keep R-002-0016 as base (more complete)
- Add citation-source note from R-002-0048a
- Verify if R-002-0008 is same study or different

---

### Group 4: De Rosa 2017 (Metabolic Pressure)
**Files:**
- R-001-0015 (R-001 series)
- R-002-0009 (R-002 series)
- R-002-0048b (today, citation-only)

**Action:** KEEP R-002-0009 as canonical (R-002 series)
- Add citation-source note
- Delete R-002-0048b
- Consider if R-001-0015 should be migrated

---

### Group 5: Evans 2026 (ESC Metabolic Risk)
**Files:**
- R-002-0013 (older)
- R-002-0047c (today, citation-only)

**Action:** MERGE - keep R-002-0013 structure
- Add citation-source note
- Delete R-002-0047c

---

### Group 6: Tsoukalas 2021 (Metabolomics)
**Files:**
- R-001-0022, R-001-0023, R-001-0025 (R-001 series - different aspects)
- R-002-0010 (R-002 series)
- R-002-0048c (today, citation-only)

**Action:** These may be different papers by same author
- Keep R-002-0010 as canonical for R-002 series
- Add citation-source note
- Delete R-002-0048c

---

### Group 7: Tsoukalas 2024 (Metabolomics)
**Files:**
- R-001-0058 (R-001 series)
- R-002-0053 (today, citation-only)

**Action:** KEEP R-002-0053 as canonical
- R-002 series is current standard
- Add any missing details from R-001-0058 if needed

---

### Group 8: Mousavi 2025 (Potato/T2D)
**Files:**
- R-002-0029 (older)
- R-002-0051a (today, citation-only)

**Action:** KEEP R-002-0029 as canonical
- Add citation-source note
- Delete R-002-0051a

---

### Group 9: Ebbeling 2018 (Low-Carb Energy)
**Files:**
- R-001-0044 (R-001 series)
- R-002-0050 (today, GOLD, PMID verified)

**Action:** KEEP R-002-0050 as canonical
- R-002 series is current standard
- Already has verified PMID

---

### Group 10: Grootveld 2018 (Lipid Oxidation)
**Files:**
- R-002-0051b (today, citation-only - only one found)

**Action:** KEEP - no duplicate

---

## OTHER POTENTIAL DUPLICATES TO CHECK

- R-001-0044 vs Effects_2018 (Ebbeling)
- R-001-0056 vs Obesity_2025 (UNICEF)
- R-001-0084 vs Meat_2026 (Norgren)

---

## MERGED REFERENCE NOTE TEMPLATE

```yaml
---
uid: [keep lowest R-002-XXXX number]
type: reference
title: "[Author] [Year] — [Title]"
aliases: [merge all unique aliases]
authors: "[most complete author list]"
year: "YYYY"
journal: "Journal"
doi: "[if verified]"
pmid: "[if verified]"
tier: "GOLD" (if PMID+DOI) / "SILVER" (citation only)
status: active
parent-moc: "[[MOC-XXXX]]"
---

# [Title]

## Citation
[Full citation]

## Source
- **Primary source:** [Journal/Report]
- **Citation extracted from:** Facebook Posts Collection, Article XX (L-002-XXXX) [if applicable]
- **DOI:** [if available]
- **PMID:** [if available]
- **URL:** [if available]
- **Status:** [verified / citation only / pending]

## Key Findings
[Merge best content from all versions]

## Zettels Using This Reference
[Merge all zettel links]

---
*[UID] | Created: [date] | Tier: [tier] | Status: [status]*
```

---

## EXECUTION ORDER

1. **Phase 1:** Merge obvious duplicates (Norgren, Byrne, Mousavi)
2. **Phase 2:** Handle R-001 vs R-002 conflicts
3. **Phase 3:** Verify remaining references for synthetic content
4. **Phase 4:** Update all LitNotes to point to canonical references
5. **Phase 5:** Delete inferior duplicates

---

## QUALITY CRITERIA

**GOLD Tier:**
- ✅ Verified PMID
- ✅ Verified DOI
- ✅ Citation from reliable source
- ✅ Content extracted or verified from source

**SILVER Tier:**
- ✅ Real citation from Facebook Collection
- ⚠️ Full text not yet extracted
- ⚠️ Content limited to source claims

**BRONZE Tier (flag for review):**
- ❌ Synthetic content from web search
- ❌ No clear source provenance
- ❌ Claims not in original source

---

## NOTES

- R-001 series may have different numbering system
- Some "duplicates" may actually be different papers by same author
- Always verify before deleting
- Keep citation-source provenance for audit trail
