---
uid: Z-009-0001
type: zettel
title: Kidney Function eGFR Creatinine Interpretation
aliases: [Z-009-0001, eGFR, Creatinine, Kidney Function, Renal Assessment]
domain: 009
tags: [zettel, biomarker, kidney, status/optimal, clinical-protocol]
parent-moc: 
biomarker-type: kidney-function-panel
egfr-target: ">90 mL/min/1.73m²"
creatinine-male: 0.7-1.3 mg/dL
creatinine-female: 0.6-1.1 mg/dL
status: conscious
connections:
  - Z-001-0016
  - Z-001-0050
source-litnote: Synthesized from clinical practice
---

# Kidney Function — eGFR and Creatinine Interpretation

**Estimated glomerular filtration rate (eGFR)** is the best overall measure of kidney function. **Creatinine** is the filtration marker, but interpretation requires consideration of muscle mass, diet, and medications.

---

## 🎯 Reference Ranges

### eGFR (CKD-EPI Equation)
| Stage | eGFR (mL/min/1.73m²) | Status |
|-------|----------------------|--------|
| **G1** | ≥90 | 🟢 Normal (if no other kidney damage) |
| **G2** | 60-89 | 🟡 Mildly decreased |
| **G3a** | 45-59 | 🟠 Mild-moderate decrease |
| **G3b** | 30-44 | 🟠 Moderate-severe decrease |
| **G4** | 15-29 | 🔴 Severe decrease |
| **G5** | <15 | 🔴 Kidney failure |

**Target:** >90 mL/min/1.73m²

### Creatinine
| Population | Range |
|------------|-------|
| Adult males | 0.7-1.3 mg/dL |
| Adult females | 0.6-1.1 mg/dL |

**Caveats:**
- Muscle mass affects creatinine (athletes higher, elderly lower)
- Diet (high meat intake increases creatinine)
- Medications (trimethoprim, cimetidine raise creatinine without affecting GFR)

---

## 🔗 Connected Systems

** Resistance:**
- [[MAPK_Mitogenic_Pathway_Z-001-0016] — Mitochondrial dysfunction (kidney is metabolically active)
- [[Metabolic_Syndrome_Criteria_Z-001-0050.md] — Metabolic syndrome (diabetes is leading cause of CKD)
- Diabetic nephropathy: Glomerular hyperfiltration → progressive decline

**Uric Acid:**
- [[Z-001-00XX] — Uric acid (target <5.5 mg/dL)
- Elevated uric acid → endothelial dysfunction → reduced eGFR

---

## 🩺 Clinical Application

### eGFR vs Creatinine

| Scenario | Creatinine | eGFR | Interpretation |
|----------|------------|------|----------------|
| Young athlete | 1.4 mg/dL | 95 | Normal (high muscle mass) |
| Elderly female | 0.9 mg/dL | 55 | CKD G3a (low muscle mass masks damage) |
| Diabetic | 1.2 mg/dL | 70 | CKD G2 (hyperfiltration loss) |

**Key insight:** eGFR accounts for age and sex; creatinine alone is misleading.

### Metabolic Syndrome and Kidneys

| Finding | Mechanism | Action |
|---------|-----------|--------|
| eGFR 60-89 + metabolic syndrome | Hyperfiltration injury | Aggressive metabolic intervention |
| Uric acid >5.5 + eGFR decline | Urate nephropathy | Allopurinol if symptomatic |
| Albuminuria + metabolic syndrome | Diabetic nephropathy early | ACE-I/ARB, strict glucose control |

---

## 🔬 eGFR Equations

### CKD-EPI (Preferred)
$$
eGFR = 141 \times \min(S_{cr}/\kappa, 1)^{\alpha} \times \max(S_{cr}/\kappa, 1)^{-1.209} \times 0.993^{Age} \times [1.018 \text{ if female}] \times [1.159 \text{ if Black}]
$$

Where:
- S_cr = serum creatinine
- κ = 0.7 (females) or 0.9 (males)
- α = -0.329 (females) or -0.411 (males)

### Cockcroft-Gault (Older, for drug dosing)
$$
CrCl = \frac{(140 - Age) \times Weight (kg)}{72 \times S_{cr}} \times [0.85 \text{ if female}]
$$

---

## 🔬 PhD-METHAP Relevance

**Safety monitoring:**
- eGFR must be stable for supplement protocols
- High-dose interventions require adequate renal function

**Secondary marker:**
- Metabolic intervention may improve eGFR (especially if elevated uric acid)

**Data fields:**
```csv
patient_id,visit,creatinine_mg_dl,egfr_ml_min,urea_mg_dl,uric_acid_mg_dl,kidney_status
```

---

## 💡 Clinical Pearl

> "Don't trust creatinine alone. An eGFR of 55 in a 70-year-old with creatinine 1.0 is significant CKD. Always calculate eGFR."

> "Metabolic syndrome attacks the kidneys early. Check urine albumin-to-creatinine ratio (ACR) — microalbuminuria may appear before eGFR drops."

> "Uric acid is both marker and mechanism. In metabolic syndrome, lowering uric acid can improve eGFR and blood pressure."

---

*Source: , *
*Created: 2026-02-26 | Domain: 009 | Status: Conscious*

## RELATED FILES
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]
- s/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- |Biomarkers MOC]

