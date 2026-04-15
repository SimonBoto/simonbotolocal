---
uid: Z-001-0050
type: zettel
title: Metabolic Syndrome Criteria ATP III Definition
aliases: [Z-001-0050, Metabolic Syndrome, Syndrome X, ATP III, Insulin Resistance Syndrome]
domain: 001
tags: [zettel, biomarker, ir-core, clinical-protocol, phd-methap]
parent-moc: [[MOC-Insulin-Signaling]]
biomarker-type: clinical-syndrome-definition
criteria: 3 of 5 ATP III factors
target: <3 criteria
status: conscious
connections:
  - Z-001-0046
  - Z-001-0048
  - Z-001-0049
  - Z-006-0001
source-litnote: Synthesized from clinical practice
extraction-date: 2026-04-15
---

# Metabolic Syndrome — ATP III Criteria

**Metabolic Syndrome** (Syndrome X, Insulin Resistance Syndrome) is a cluster of cardiovascular risk factors with insulin resistance as the underlying mechanism. Diagnosis requires **3 of 5 ATP III criteria**.

---

## 🎯 ATP III Criteria (2001 Revised NCEP)

| # | Risk Factor | Defining Level | Optimal Target |
|---|-------------|----------------|----------------|
| 1 | **Elevated Waist Circumference** | Men >102 cm (40 in)<br>Women >88 cm (35 in) | Men <94 cm<br>Women <80 cm |
| 2 | **Elevated Triglycerides** | ≥150 mg/dL (or on TG meds) | <90 mg/dL |
| 3 | **Reduced HDL-C** | Men <40 mg/dL<br>Women <50 mg/dL | Men >60 mg/dL<br>Women >60 mg/dL |
| 4 | **Elevated Blood Pressure** | ≥130/85 mmHg (or on BP meds) | <120/80 mmHg |
| 5 | **Elevated Fasting Glucose** | ≥100 mg/dL (or on glucose meds) | 70-90 mg/dL |

**Diagnosis:** ≥3 of 5 criteria present

---

## 🔗 Connected s

**IR Core Panel:**
- [[HOMA_IR_Calculation_Interpretation_Z-001-0046.md] — HOMA-IR (typically >2.5-3.0 in metabolic syndrome)
- [[TyG_Index_IR_Assessment_Z-001-0048.md] — TyG Index (elevated, often >5.0)
- [[TG_HDL_Ratio_IR_Marker_Z-001-0049.md] — TG/HDL ratio (typically >3.0)

**Individual Components:**
- Criterion 2,3: [[Lipid_Pattern_A_vs_B_Assessment_Z-006-0001.md] — Lipid Pattern A/B
- Criterion 5: [[HOMA_Beta_Beta_Cell_Function_Z-001-0047.md] — HOMA-β (may show compensation or failure)

**Mechanism:**
- _Z-001-0018.md] — Lipotoxicity (central adiposity drives IR)
- [[Predictive_Metabolites_T1D_Example_Z-001-0019.md] — Inflammatory signaling (visceral fat cytokines)

---

## 🩺 Clinical Application

### Why Metabolic Syndrome Matters

| Outcome | Risk Increase |
|---------|---------------|
| Type 2 diabetes | 5-fold |
| Cardiovascular disease | 2-fold |
| All-cause mortality | 1.5-fold |
| Stroke | 2-3 fold |

**Key insight:** Metabolic syndrome is not just "risk factor clustering" — it's a progressive disease of insulin resistance.

### Progression Model

```
Visceral adiposity
      ↓
Adipokine dysregulation (↓adiponectin, ↑TNF-α, ↑IL-6)
      ↓
Hepatic insulin resistance → VLDL overproduction
      ↓
Systemic insulin resistance (HOMA-IR ↑)
      ↓
Compensatory hyperinsulinemia (HOMA-β ↑ initially)
      ↓
β-cell exhaustion (HOMA-β ↓) → T2DM
```

### Interventions by Criteria

| Criteria Present | Priority Interventions |
|------------------|------------------------|
| Central obesity + TG/HDL | Low-carb diet, weight loss |
| Central obesity + BP | Sodium restriction, exercise |
| Central obesity + glucose | Metformin, aggressive lifestyle |
| All 5 criteria | Intensive multidisciplinary care |

---

## 📊 Clinical Scenarios

### Scenario 1: Full Metabolic Syndrome
| Criterion | Value | Status |
|-----------|-------|--------|
| Waist | 105 cm (M) | 🔴 Present |
| TG | 180 mg/dL | 🔴 Present |
| HDL-C | 35 mg/dL | 🔴 Present |
| BP | 138/88 mmHg | 🔴 Present |
| Glucose | 105 mg/dL | 🔴 Present |
| **Count** | **5/5** | **🔴 Metabolic Syndrome** |

**Action:** Immediate comprehensive intervention

### Scenario 2: Borderline (2/5)
| Criterion | Value | Status |
|-----------|-------|--------|
| Waist | 98 cm (M) | 🔴 Present |
| TG | 110 mg/dL | ⚠️ Borderline |
| HDL-C | 42 mg/dL | 🟡 Near threshold |
| BP | 128/82 mmHg | ⚠️ Borderline |
| Glucose | 92 mg/dL | 🟢 Absent |
| **Count** | **1/5** | **🟡 Close monitoring** |

**Action:** Prevent progression — lifestyle intervention now

---

## 🔬 Variations and Caveats

### IDF Definition (2005)
- **Required:** Central obesity (ethnicity-specific thresholds)
- **Plus 2 of 4:** TG, HDL, BP, glucose

### Ethnic Variations in Waist Circumference
| Population | Men | Women |
|------------|-----|-------|
| European | ≥94 cm | ≥80 cm |
| South Asian | ≥90 cm | ≥80 cm |
| Japanese | ≥85 cm | ≥90 cm |

### Pediatric Considerations
- Age and sex-specific percentiles for adolescents
- IDF criteria for 10-16 years

---

## 🔬 PhD-METHAP Relevance

**Primary hypothesis:**
Metabolic syndrome reversal correlates with metabolomic signature improvement.

**Data fields:**
```csv
patient_id,visit,waist_cm,tg_mg_dl,hdl_c_mg_dl,sbp_mmhg,dbp_mmhg,glucose_mg_dl,met_syn_criteria_count,met_syn_status
```

**Analysis:**
- Track criteria count change (primary outcome)
- Correlate with HOMA-IR, TyG, adipic acid
- Identify "responder" subgroups

---

## 💡 Clinical Pearl

> "Metabolic syndrome is a checklist, but think of it as a story. The story is: visceral fat → inflammation → insulin resistance → β-cell burnout → diabetes. Your job is to interrupt the story as early as possible."

> "Don't wait for 3 criteria. At 2 criteria with central obesity, you're already on the path. Intervene then."

---

## Data Export (METHAP)

```csv
patient_id,visit,waist_cm,tg_mg_dl,hdl_c_mg_dl,sbp,dbp,glucose,criteria_count,met_syn_present
```

---

*Source: , *
*Created: 2026-02-26 | Domain: 001 | Status: Conscious*

## RELATED FILES
- [[CRP_[B-002-0001]|Biomarker Family]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]
- /Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- 



## Related
- [[Gordon_2008_Adolescent_High_Dose_Protocol_Z-001-0070]|Z-001-0070]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
