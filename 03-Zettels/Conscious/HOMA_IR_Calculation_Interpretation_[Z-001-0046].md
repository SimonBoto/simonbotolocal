---
uid: Z-001-0046
type: zettel
title: HOMA-IR Calculation and Clinical Interpretation
aliases: [Z-001-0046, HOMA-IR, Insulin Resistance Index]
domain: 001
tags: [zettel, biomarker, ir-core, status/optimal, calculation-formula, phd-methap]
parent-moc: 
biomarker-type: insulin-resistance-index
formula: (Fasting Glucose × Fasting Insulin) / 405
target-range: <2.0
status: conscious
connections:
  - Z-001-0047
  - Z-001-0048
  - Z-001-0049
  - Z-002-0004
  - Z-004-0001
source-litnote: Synthesized from clinical practice
---

# HOMA-IR Calculation and Clinical Interpretation

**HOMA-IR** (Homeostatic Model Assessment for Insulin Resistance) estimates insulin resistance from fasting glucose and fasting insulin. It's the most widely used clinical surrogate for insulin clamp studies.

---

## 📐 Formula

$$
\text{HOMA-IR} = \frac{\text{Fasting Glucose (mg/dL)} \times \text{Fasting Insulin (μIU/mL)}}{405}
$$

**SI Units Alternative:**
$$
\text{HOMA-IR} = \frac{\text{Fasting Glucose (mmol/L)} \times \text{Fasting Insulin (μIU/mL)}}{22.5}
$$

---

## 🎯 Interpretation Thresholds

| HOMA-IR | Status | Clinical Meaning |
|---------|--------|------------------|
| **<2.0** | ✅ Optimal | Normal insulin sensitivity |
| **2.0-2.5** | ⚠️ Early IR | Pre-insulin resistance, intervention window |
| **2.5-5.0** | 🔶 Established IR | Insulin resistance present |
| **>5.0** | 🔴 Severe IR | High risk for T2DM, metabolic syndrome |

**Note:** Some labs use <2.5 as "normal" cutoff. For optimal metabolic health, target <2.0.

---

## 🔗 Connected s

**Core IR Panel:**
- [[HOMA_Beta_Beta_Cell_Function_Z-001-0047.md]] — HOMA-β (β-cell function companion)
- [[TyG_Index_IR_Assessment_Z-001-0048.md]] — TyG Index (alternative IR marker)
- [[TG_HDL_Ratio_IR_Marker_Z-001-0049.md]] — TG/HDL ratio (lipid-based IR proxy)

**Metabolic Context:**
- [[Metabolic_Syndrome_Criteria_Z-001-0050.md]] — Metabolic syndrome criteria (3 of 5)
- [[HOMA_IR_Late_Marker_Z-001-0043.md]] — HOMA-IR limitations and critique

**Cofactor Dependencies:**
- [[Vitamin_D_Optimal_Range_80_150_Z-002-0004.md]] —  optimal range (D improves insulin sensitivity)
- [[Homocysteine_Composite_Methylation_Marker_Z-004-0001.md]] — Homocysteine (methylation supports insulin signaling)

---

## 🩺 Clinical Application

### METHAP Trial Protocol
**Primary outcome metric:** HOMA-IR change from baseline

**Assessment timing:**
- Baseline (Day 0)
- 3 months
- 6 months
- 12 months

**Expected response:**
- >20% reduction = meaningful metabolic improvement
- >50% reduction = near-normalization goal

### Interpretation Nuances

**False negatives:**
- Advanced β-cell failure (insulin secretion collapses → HOMA-IR "normalizes" falsely)
- Check HOMA-β simultaneously

**False positives:**
- Acute illness (stress hyperglycemia)
- Recent high-carb meal (even "fasting" 8hr may not be enough)
- Medications (steroids, atypical antipsychotics)

---

## 📊 Validation

**Original publication:** Matthews et al., *Diabetologia* 1985
**Correlation with euglycemic clamp:** r = 0.82 (good surrogate)
**Population reference:** Mediterranean populations typically 1.0-1.5

---

## 🔄 Calculation Example

| Patient | Glucose | Insulin | HOMA-IR | Status |
|---------|---------|---------|---------|--------|
| A | 85 mg/dL | 4 μIU/mL | 0.84 | ✅ Optimal |
| B | 95 mg/dL | 12 μIU/mL | 2.81 | 🔶 Established IR |
| C | 110 mg/dL | 18 μIU/mL | 4.89 | 🔴 Severe IR |

---

## 💡 Clinical Pearl

> "HOMA-IR is a snapshot. Track it over time. A patient with HOMA-IR 2.3 improving to 1.8 is winning, even if both are technically 'elevated'."

---

## Data Export (METHAP)

```csv
patient_id,visit,fasting_glucose_mg_dl,fasting_insulin_uu_ml,homa_ir,homa_ir_status
```

---

*Source: , *
*Created: 2026-02-26 | Domain: 001 | Status: Conscious*

## RELATED FILES
- [[Biomarkers/Methylation_Family_[B-004-0001]|Biomarker Family]]
- [[Biomarkers/Lipid_Ratios_[B-006-0001]|Biomarker Family]]
- /Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]]
- 

