---
uid: Z-007-0001
type: zettel
title: Inflammation Markers CRP ESR Clinical Interpretation
aliases: [Z-007-0001, CRP, ESR, Inflammation, Acute Phase]
domain: 007
tags: [zettel, biomarker, inflammation, status/optimal, clinical-protocol]
parent-moc: 
biomarker-type: inflammation-panel
crp-optimal: <1 mg/L
crp-target: <3 mg/L
status: conscious
connections:
  - Z-003-0001
  - Z-003-0013
  - Z-001-0019
  - Z-001-0050
source-litnote: Synthesized from clinical practice
---

# Inflammation Markers — CRP and ESR Clinical Interpretation

**C-reactive protein (CRP)** and **erythrocyte sedimentation rate (ESR)** are acute phase reactants that indicate systemic inflammation. CRP is more specific; ESR is slower but catches chronic inflammation CRP might miss.

---

## 🎯 Reference Ranges

### CRP (High-Sensitivity hs-CRP)
| Level (mg/L) | Status | Cardiovascular Risk |
|--------------|--------|---------------------|
| **<1** | 🟢 Low | Low risk |
| **1-3** | 🟡 Moderate | Moderate risk |
| **3-10** | 🔴 High | High risk |
| **>10** | 🔴 Very high | Active inflammation/infection |

**Optimal metabolic target:** <1 mg/L

### ESR
| Level (mm/hr) | Status | Interpretation |
|---------------|--------|----------------|
| **<20** | 🟢 Normal | No significant inflammation |
| **20-40** | 🟡 Mild elevation | Chronic inflammation, infection |
| **40-100** | 🔴 Moderate elevation | Active disease, autoimmune |
| **>100** | 🔴 Marked elevation | Severe inflammation, infection |

---

## 🔗 Connected Systems

**Iron :**
- [[Ferritin_Interpretation_Iron_Status_Z-003-0001.md]] — Ferritin (elevated by inflammation)
- [[Iron_Status_Patterns_ACD_Overload_Z-003-0013.md]] — Anemia of chronic disease (CRP drives hepcidin)
- High CRP → functional iron deficiency

**Insulin Resistance:**
- [[Predictive_Metabolites_T1D_Example_Z-001-0019.md]] — Inflammatory signaling (cytokines cause IR)
- [[Metabolic_Syndrome_Criteria_Z-001-0050.md]] — Metabolic syndrome (chronic low-grade inflammation)
- Elevated CRP predicts T2DM development

**Methylation:**
- Inflammation → increased homocysteine
- Oxidative stress depletes B-vitamins

---

## 🩺 Clinical Application

### CRP vs ESR — When to Use Which

| Feature | CRP | ESR |
|---------|-----|-----|
| **Rise time** | 6-8 hours | 24-48 hours |
| **Peak** | 24-48 hours | Days |
| **Half-life** | 19 hours | Variable |
| **Specificity** | More specific | Less specific |
| **Chronic inflammation** | May normalize | Stays elevated |
| **Aged >70** | Normal | Often mildly elevated |

**Best practice:** Check both. Discordance provides information.

### Metabolic Syndrome Inflammation
| Marker | Typical Finding | Interpretation |
|--------|-----------------|----------------|
| CRP | 2-5 mg/L | Low-grade chronic inflammation |
| ESR | 15-30 mm/hr | Mild elevation |
| Pattern | | Visceral adiposity cytokine release |

**Link:** [[Metabolic_Syndrome_Criteria_Z-001-0050.md]] — Metabolic syndrome criteria (inflammation component)

### Infection vs Autoimmune vs Metabolic
| Condition | CRP | ESR | Pattern |
|-----------|-----|-----|---------|
| Bacterial infection | 🔴 Very high (>50) | 🔴 High | Both acute |
| Viral infection | 🟡 Moderate (10-50) | 🟡 Moderate | CRP > ESR |
| Autoimmune | 🟡 Moderate (5-20) | 🔴 High | ESR > CRP |
| Metabolic syndrome | 🟡 Low-moderate (1-5) | 🟡 Mild | Chronic low-grade |

---

## 🔬 PhD-METHAP Relevance

**Secondary outcome:** Inflammation reduction

**Hypothesis:**
- Metabolic intervention → ↓ visceral fat → ↓ cytokines → ↓ CRP
- CRP reduction correlates with HOMA-IR improvement

**Data fields:**
```csv
patient_id,visit,hs_crp_mg_l,esr_mm_hr,inflammation_status
```

---

## 💡 Clinical Pearl

> "CRP <1 is the goal for metabolic health. Between 1-3, there's subclinical inflammation driving insulin resistance. Above 3, we're talking significant cardiovascular risk. Above 10, look for infection or active autoimmune disease."

> "ESR is the old school marker, but it still has value. In elderly patients with vague symptoms, an ESR >40 might be the only clue to temporal arteritis or hidden infection."

> "Always interpret ferritin in context of CRP. Ferritin 200 with CRP 0.5 is very different from ferritin 200 with CRP 15."

---

*Source: , *
*Created: 2026-02-26 | Domain: 007 | Status: Conscious*

## RELATED FILES
- [[Biomarkers/CRP_[B-002-0001]|Biomarker Family]]
- [[Biomarkers/Iron_Family_[B-003-0001]|Biomarker Family]]
- [[Biomarkers/Methylation_Family_[B-004-0001]|Biomarker Family]]
- [[Biomarkers/Lipid_Ratios_[B-006-0001]|Biomarker Family]]
- s/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]]
- |Biomarkers MOC]]

