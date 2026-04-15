---
uid: Z-001-0048
type: zettel
title: TyG Index Triglyceride Glucose Index for IR Assessment
aliases: [Z-001-0048, TyG, TyG Index, Triglyceride Glucose Index]
domain: 001
tags: [zettel, biomarker, ir-core, calculation-formula, phd-methap]
parent-moc: [[MOC-Insulin-Signaling]]
biomarker-type: insulin-resistance-index
formula: ln(Fasting TG [mg/dL] × Fasting Glucose [mg/dL] / 2)
target-range: <4.5
status: conscious
connections:
  - Z-001-0046
  - Z-001-0049
  - Z-001-0050
  - Z-006-0001
source-litnote: Synthesized from clinical practice
extraction-date: 2026-04-15
---

# TyG Index — Triglyceride-Glucose Index for IR Assessment
## Source

Synthesized from clinical practice

## Status Checklist

- [ ] Source verified and linked
- [ ] Core Principle articulated
- [ ] Mechanism/Key Details present
- [ ] Evidence attached
- [ ] Significance clear
- [ ] Clinical relevance assessed
- [ ] Related zettels connected
- [ ] Lateral connections added
- [ ] RON review pending


The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

---

## Source

Synthesized from clinical practice

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 📐 Formula

$$
\text{TyG} = \ln\left(\frac{\text{Fasting TG (mg/dL)} \times \text{Fasting Glucose (mg/dL)}}{2}\right)
$$

**Natural logarithm (ln)** — not log base 10.

**SI Units (mmol/L):**
$$
\text{TyG} = \ln(\text{TG [mmol/L]} \times \text{Glucose [mmol/L]})
$$

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 🎯 Interpretation Thresholds

| TyG Index | Status | Clinical Meaning |
|-----------|--------|------------------|
| **<4.5** | ✅ Optimal | Normal insulin sensitivity |
| **4.5-4.9** | ⚠️ Borderline | Early insulin resistance |
| **5.0-5.9** | 🔶 Elevated | Insulin resistance present |
| **≥6.0** | 🔴 High | High risk for metabolic syndrome, T2DM |

**Note:** Cutoffs vary by population. Asian populations may have lower thresholds.

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 🔗 Connected s

**IR Core Panel:**
- [[HOMA_IR_Calculation_Interpretation_Z-001-0046.md] — HOMA-IR (traditional measure)
- [[HOMA_Beta_Beta_Cell_Function_Z-001-0047.md] — HOMA-β (β-cell function)
- [[TG_HDL_Ratio_IR_Marker_Z-001-0049.md] — TG/HDL ratio (lipid-based IR marker)

**Metabolic Syndrome:**
- [[Metabolic_Syndrome_Criteria_Z-001-0050.md] — Metabolic syndrome criteria
- [[Lipid_Pattern_A_vs_B_Assessment_Z-006-0001.md] — Triglycerides (TyG numerator)

**Mechanism Context:**
- _Z-001-0018.md] — Lipotoxicity (elevated TG → IR)
- [[MAPK_Mitogenic_Pathway_Z-001-0016]] — Mitochondrial dysfunction (impaired lipid oxidation)

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 🩺 Clinical Application

### When to Use TyG vs HOMA-IR

| Scenario | Preferred | Why |
|----------|-----------|-----|
| No insulin assay available | TyG | Uses standard lipid panel |
| Early IR detection | TyG | May rise before HOMA-IR |
| β-cell failure suspected | HOMA-IR | TyG doesn't capture insulin secretion |
| Research/PhD | Both | Complementary information |

### METHAP Trial Role
**Secondary outcome:** TyG Index change

**Advantage:**
- No insulin assay cost
- Available in retrospective data (TG + glucose always measured)

**Limitation:**
- Doesn't distinguish hepatic vs peripheral IR
- Doesn't capture β-cell dysfunction

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 📊 Calculation Examples

| Patient | TG (mg/dL) | Glucose (mg/dL) | TyG Calculation | TyG Value | Status |
|---------|------------|-----------------|-----------------|-----------|--------|
| A | 75 | 85 | ln(75×85/2) | ln(3187.5) | **4.06** ✅ |
| B | 120 | 95 | ln(120×95/2) | ln(5700) | **4.74** ⚠️ |
| C | 180 | 110 | ln(180×110/2) | ln(9900) | **5.00** 🔶 |
| D | 250 | 130 | ln(250×130/2) | ln(16250) | **5.69** 🔴 |

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 🔬 Validation Studies

**Original publication:** Simental-Mendía et al., *Eur J Endocrinol* 2008
**Correlation with clamp:** r = 0.78 (similar to HOMA-IR)
**Predictive value:** Better than HOMA-IR for incident T2DM in some studies

**Key finding:** TyG identifies IR in normoglycemic individuals before glucose rises.

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 🔄 Relationship with Lipid Profile

**Why triglycerides?**
- Elevated TG = hepatic steatosis marker
- TG reflects VLDL production = insulin-driven process
- High TG + high glucose = dual metabolic stress

**Pattern B predictor:**
TyG >4.9 strongly predicts small dense LDL (Pattern B)

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 💡 Clinical Pearls

> "TyG is my early warning system. I see patients with 'normal' HOMA-IR but TyG 5.2. Six months later, their HOMA-IR catches up. TyG sees the metabolic train wreck coming."

> "In resource-limited settings, TyG is a gift. No insulin assay needed. Just TG and glucose from any standard panel."

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## 📊 Comparison: TyG vs HOMA-IR

| Feature | TyG Index | HOMA-IR |
|---------|-----------|---------|
| Requirements | TG, Glucose | Insulin, Glucose |
| Cost | Standard panel | +Insulin assay |
| Early detection | ⭐⭐⭐ Better | ⭐⭐ Good |
| β-cell info | ❌ None | ✅ HOMA-β companion |
| Validation | Good | Extensive |
| Best use | Screening, monitoring | Comprehensive assessment |

---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## Data Export (METHAP)

```csv
patient_id,visit,fasting_tg_mg_dl,fasting_glucose_mg_dl,tyg_index,tyg_status
```

---

*Source: , *
*Created: 2026-02-26 | Domain: 001 | Status: Conscious*

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## RELATED FILES
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]
- /Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- 


---

## Core Principle

The **TyG Index** is a simple, inexpensive surrogate marker for insulin resistance using only fasting triglycerides and fasting glucose. It correlates strongly with euglycemic clamp studies and may predict IR earlier than HOMA-IR.

## Significance

source-litnote: Synthesized from clinical practice

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
