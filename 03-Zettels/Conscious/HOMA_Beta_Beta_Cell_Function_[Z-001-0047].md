---
uid: Z-001-0047
type: zettel
title: HOMA-Beta Beta Cell Function Assessment
aliases: [Z-001-0047, HOMA-β, Beta Cell Function, Insulin Secretion Index]
domain: 001
tags: [zettel, biomarker, ir-core, calculation-formula, phd-methap]
parent-moc: 
biomarker-type: beta-cell-function-index
formula: (360 × Fasting Insulin) / (Fasting Glucose - 63)
target-range: 100-200
status: conscious
connections:
  - Z-001-0046
  - Z-001-0016
  - Z-001-0018
source-litnote: Synthesized from clinical practice
---

# HOMA-β — Beta-Cell Function Assessment

**HOMA-β** estimates pancreatic β-cell function from fasting insulin and fasting glucose. It complements HOMA-IR by distinguishing insulin resistance (compensatory hyperinsulinemia) from β-cell failure (falling insulin secretion).

---

## 📐 Formula

$$
\text{HOMA-β} = \frac{360 \times \text{Fasting Insulin (μIU/mL)}}{\text{Fasting Glucose (mg/dL)} - 63}
$$

**Critical:** If fasting glucose ≤ 63 mg/dL, formula cannot be used (mathematically undefined).

**SI Units Alternative:**
$$
\text{HOMA-β} = \frac{20 \times \text{Fasting Insulin (μIU/mL)}}{\text{Fasting Glucose (mmol/L)} - 3.5}
$$

---

## 🎯 Interpretation Thresholds

| HOMA-β | Status | Clinical Meaning |
|--------|--------|------------------|
| **>200** | 🔴 Hypersecretion | Compensatory phase, high insulin resistance |
| **100-200** | ✅ Optimal | Normal β-cell function |
| **50-100** | ⚠️ Early decline | β-cell dysfunction beginning |
| **<50** | 🔴 Failure | Significant β-cell impairment, risk for T2DM |

**Note:** HOMA-β must be interpreted WITH HOMA-IR. High HOMA-β + high HOMA-IR = compensatory phase. Low HOMA-β + any HOMA-IR = decompensated/failing.

---

## 🔗 Connected Concepts

**IR Assessment Pair:**
- [[HOMA_IR_Calculation_Interpretation_Z-001-0046.md]] — HOMA-IR (always interpret together)
- Pattern: High HOMA-IR + High HOMA-β = Compensated IR
- Pattern: High HOMA-IR + Low HOMA-β = Decompensated/failing β-cells

**Mechanisms:**
- [[MAPK_Mitogenic_Pathway_[Z-001-0016]]] — Mitochondrial dysfunction (β-cell energy failure)
- _Z-001-0018.md]] — Lipotoxicity (chronic IR damages β-cells)
- [[Predictive_Metabolites_T1D_Example_Z-001-0019.md]] — Inflammatory signaling (cytokine-mediated β-cell apoptosis)

**Clinical Context:**
- [[Metabolic_Syndrome_Criteria_Z-001-0050.md]] — Metabolic syndrome (progressive β-cell stress)

---

## 🩺 Clinical Patterns

### Pattern 1: Early Insulin Resistance (Compensated)
| Marker | Value | Interpretation |
|--------|-------|----------------|
| HOMA-IR | 3.5 | 🔶 Established IR |
| HOMA-β | 250 | 🔴 Hypersecretion (compensating) |
| Status | | Early IR, β-cells working overtime |

**Action:** Lifestyle intervention, may reverse

### Pattern 2: Progressing to Failure
| Marker | Value | Interpretation |
|--------|-------|----------------|
| HOMA-IR | 4.2 | 🔴 Severe IR |
| HOMA-β | 80 | ⚠️ Declining function |
| Status | | β-cells tiring, intervention urgent |

**Action:** Aggressive intervention, metformin + lifestyle

### Pattern 3: β-Cell Failure (Decompensated)
| Marker | Value | Interpretation |
|--------|-------|----------------|
| HOMA-IR | 2.1 | ⚠️ "Normal" (falsely reassuring) |
| HOMA-β | 35 | 🔴 Failure |
| Status | | T2DM likely present or imminent |

**Action:** Pharmacotherapy required, endocrinology referral

---

## 🔬 PhD-METHAP Relevance

**Secondary outcome:** HOMA-β preservation or improvement

**Hypothesis:**
- Early intervention preserves β-cell function
- VitD optimization + metabolic intervention → HOMA-β stabilization

**Data fields:**
```csv
patient_id,visit,fasting_glucose_mg_dl,fasting_insulin_uu_ml,homa_ir,homa_beta,beta_cell_status
```

**Analysis:**
- Track HOMA-β trajectory alongside HOMA-IR
- Identify "responders" (HOMA-IR ↓ + HOMA-β stable/improved)

---

## 💡 Clinical Pearl

> "HOMA-IR alone lies to you in late-stage IR. A patient with HOMA-IR 'normalizing' from 5.0 to 2.5 might look better, but if HOMA-β dropped from 150 to 45, they're actually progressing to diabetes. Always check both."

---

## 📊 Reference Values

**Validation:** Matthews et al., *Diabetologia* 1985 (same as HOMA-IR)

**Population reference:**
- Healthy lean: HOMA-β ~100-150
- Obese, insulin sensitive: HOMA-β ~150-200
- Obese, insulin resistant: HOMA-β >200 (compensating)
- T2DM: HOMA-β <50 typically

---

## Data Export (METHAP)

```csv
patient_id,visit,homa_beta,beta_cell_status,ir_status_combined
```

---

*Source: , *
*Created: 2026-02-26 | Domain: 001 | Status: Conscious*

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- s/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]]
- |Biomarkers MOC]]

