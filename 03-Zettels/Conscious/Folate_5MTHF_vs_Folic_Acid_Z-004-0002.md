---
uid: Z-004-0002
type: zettel
title: Folate 5-MTHF vs Folic Acid Methylation Forms
aliases: [Z-004-0002, Folate, 5-MTHF, Methylfolate, Folic Acid]
domain: 004
tags: [zettel, biomarker, methylation, folate, mthfr, clinical-protocol]
parent-moc: [[MOC-Vitamin-Metabolism]]
biomarker-type: folate-status
form-5mthf: Active
form-folic-acid: Synthetic
status: conscious
connections:
  - Z-004-0001
  - Z-004-0005
  - Z-004-0019
source-litnote: Synthesized from clinical practice
extraction-date: 2026-04-15
---

# Folate — 5-MTHF vs Folic Acid

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

---

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## 🎯 Folate Forms

### 5-MTHF (5-Methylfolate) — PREFERRED
| Feature | Characteristic |
|---------|----------------|
| **Form** | Active, methylated |
| **Source** | Supplements (methylfolate), some foods |
| **Absorption** | Direct — no conversion needed |
| **MTHFR required?** | No — bypasses the enzyme |
| **Unmetabolized folic acid?** | None |

### Folic Acid — AVOID IF MTHFR VARIANT
| Feature | Characteristic |
|---------|----------------|
| **Form** | Synthetic, oxidized |
| **Source** | Supplements, fortified foods |
| **Conversion** | Requires DHFR → 5-MTHF |
| **MTHFR required?** | Yes — rate-limiting step |
| **Unmetabolized folic acid?** | Possible (especially high doses) |

### Food Folate — NATURAL
| Feature | Characteristic |
|---------|----------------|
| **Form** | Mixed polyglutamates |
| **Source** | Leafy greens, legumes, liver |
| **Conversion** | Requires deconjugation, reduction |
| **Bioavailability** | ~50% of folic acid |

---

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## 🔗 Connected Systems

**Methylation:**
- [[Homocysteine_Composite_Methylation_Marker_Z-004-0001.md] — Homocysteine (5-MTHF is substrate for remethylation)
- Z-004-0005 (MTHFR variants — impair conversion of folic acid) — *link pending*
- [[Functional_B12_Deficiency_MMA_Assessment_Z-004-0019.md] — Functional B12 deficiency (B12 + 5-MTHF work together)

**Genetics:**
- **MTHFR C677T:** 40-50% population, ↓ enzyme activity 30-70%
- **MTHFR A1298C:** 40-50% population, affects different reaction
- Compound heterozygous: Significant impairment

---

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## 🩺 Clinical Application

### When to Use 5-MTHF (Not Folic Acid)

| Condition | Rationale |
|-----------|-----------|
| **MTHFR variant** | Cannot convert folic acid efficiently |
| **Elevated homocysteine** | Need active form for remethylation |
| **Pregnancy** | Reduced risk of unmetabolized folic acid |
| **History of miscarriage** | MTHFR common in recurrent loss |
| **Depression/anxiety** | 5-MTHF crosses blood-brain barrier better |
| **Neural tube defect history** | Genetic folate  issues likely |

### Testing Folate Status

| Marker | Interpretation | Target |
|--------|----------------|--------|
| **Serum folate** | Short-term intake | >5 ng/mL |
| **RBC folate** | Long-term status | >300 ng/mL |
| **5-MTHF (specific)** | Active form | >10 ng/mL |

**RBC folate is better than serum** — reflects tissue stores over months.

### Supplementation Protocol

| Population | Form | Dose |
|------------|------|------|
| **General** | 5-MTHF | 400-800 mcg |
| **MTHFR variant** | 5-MTHF | 800-1,000 mcg |
| **High homocysteine** | 5-MTHF | 1,000-5,000 mcg |
| **Pregnancy** | 5-MTHF | 800-1,000 mcg |

**Always pair with:**
- B12 (methylcobalamin) — prevents masking B12 deficiency
- B6 (P5P) — supports homocysteine transsulfuration

---

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## 🔬 The Unmetabolized Folic Acid Problem

**High-dose folic acid (especially >400 mcg):**
- May exceed DHFR capacity
- Results in circulating unmetabolized folic acid (UMFA)
- UMFA may compete with 5-MTHF for transport
- Unknown long-term effects, but concerning

**Solution:** Use 5-MTHF exclusively — no conversion bottleneck, no UMFA.

---

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## 🔬 PhD-METHAP Relevance

**Genetic stratification:**
- MTHFR genotype → folate form response
- Subgroup analysis: 5-MTHF responders vs non-responders

**Data fields:**
```csv
patient_id,visit,rbc_folate_ng_ml,5_mthf_ng_ml,mthfr_genotype,folate_form_used
```

---

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## 💡 Clinical Pearl

> "I never use folic acid anymore. 5-MTHF is barely more expensive and bypasses all the MTHFR issues. Why risk unmetabolized folic acid when the active form is available?"

> "If a patient has elevated homocysteine and is taking folic acid, switch them to 5-MTHF. I've seen homocysteine drop 5-10 points just from changing the form."

---

*Source: , *
*Created: 2026-02-26 | Domain: 004 | Status: Conscious*

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## RELATED FILES
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]
- [[TG_HDL_Ratio_IR_Marker_Z-001-0049]|Z-001-0049]
- s/Methylation_Family_[B-004-0001]|Biomarker Family Guide]
- |Biomarkers MOC]



## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## Related
- [[Retest_Scheduling_Followup_Protocols_Z-004-0003]|Z-004-0003]

---

## Core Principle

**Not all folate is equal.** 5-Methyltetrahydrofolate (5-MTHF) is the active form used in methylation. Folic acid is synthetic and requires conversion. **MTHFR variants impair this conversion**, making 5-MTHF essential for many patients.

## Connection to Vault

- Up: [[MOC-Vitamin-Metabolism]]
- Related: [[MOC-Metabolomics]], [[MOC-Clinical-Protocols]]

---
parent-index: [[03-Zettels-Conscious]]
