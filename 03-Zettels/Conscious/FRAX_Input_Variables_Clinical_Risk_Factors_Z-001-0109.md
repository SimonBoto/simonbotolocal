---
uid: Z-001-0109
type: zettel
title: FRAX Input Variables — Clinical Risk Factors for Fracture Prediction
aliases: [Z-001-0109]
domain: 001
tags: [zettel, frax, risk-factors, osteoporosis, fracture-prediction, clinical-assessment, conscious]
parent-moc: [[MOC-Insulin-Signaling]]
status: conscious
source-litnote: legacy-no-source
extraction-date: 2026-04-15
---

# FRAX Input Variables — Clinical Risk Factors for Fracture Prediction

## Core Principle
FRAX algorithm integrates **demographic, clinical, and BMD variables** to estimate 10-year fracture probability.

## Required Clinical Inputs

### Demographics
| Variable | Data Entry | Rationale |
|----------|------------|-----------|
| **Age** | 40–90 years | Exponential risk increase with age |
| **Sex** | Male/Female | Baseline risk differs (women higher) |
| **Weight** | Kilograms | Low BMI = independent risk factor |
| **Height** | Centimeters | Height loss indicates vertebral fractures |

### Derived Metric
**Body Mass Index (BMI):** Auto-calculated from weight/height
- **Risk pattern:** Low BMI (< 18.5) increases fracture risk
- **:** Low estrogen, poor , sarcopenia
- **Paradox:** Obesity protective for hip fracture (cushioning), but higher wrist fracture

## Binary Risk Factors (Yes/No)

### Prior Fracture History
> "Previous fracture (after age 50)"

- **Weight:** Strongest single predictor
- **Any fracture:** Increases future fracture risk 2–5×
- **Recency matters:** Recent fracture higher risk than distant
- **Multiple fractures:** Compounding risk (FRAX counts as single yes/no)

### Family History
> "Parent fractured hip"

- **Specificity:** Hip fracture in parent (not just osteoporosis)
- **Genetics:** Captures heritable bone density and fall risk
- **Magnitude:** ~2× increased hip fracture risk

### Lifestyle Factors

#### Current Smoking
- **Effect:** Impairs bone healing, lowers estrogen
- **Risk increase:** ~1.5× for fracture
- **Dose ignored:** Binary only (pack-years not captured)

#### Alcohol Consumption
> "≥3 units alcohol per day"

- **Threshold-based:** Not dose-response
- **3 units:** ~36g alcohol (3 standard drinks)
- **Effects:** Bone toxicity, falls, poor nutrition

### Medical Conditions

#### Rheumatoid Arthritis (RA)
- **Independent risk:** Even without glucocorticoid use
- **Mechanism:** Inflammatory cytokines, mobility impairment
- **Magnitude:** ~1.5–2× fracture risk

#### Secondary Osteoporosis
- **Includes:** 
  - Type 1 diabetes
  - Osteogenesis imperfecta
  - Long-term hyperthyroidism
  - Hypogonadism (premature menopause, testicular failure)
  - Chronic malnutrition / malabsorption
  - Chronic liver disease
- **Captures:** Non-age-related bone loss mechanisms

## Optional Input: Bone Mineral Density

### Femoral Neck BMD (Preferred)
| T-score Category | Range |
|-----------------|-------|
| **Normal** | ≥ -1.0 |
| **Osteopenia** | -1.0 to -2.5 |
| **Osteoporosis** | ≤ -2.5 |

**Why femoral neck?**
- Best single predictor of hip fracture
- Less affected by degenerative changes than spine
- Standardized reference database

### Without BMD
- FRAX can calculate using clinical factors only
- **Tendency:** May miss very low BMD patients
- **Use case:** Resource-limited settings, patient refusal

## Variables NOT in FRAX

| Missing Factor | Clinical Significance |
|----------------|----------------------|
| **Falls history** | Major independent risk — must add clinically |
| **Trabecular bone score** | Bone quality measure — can adjust FRAX |
| **Glucocorticoid dose** | Binary only (<2.5mg vs ≥2.5mg prednisone) |
| ** level** | Not included — separate assessment |
| **Secondary causes severity** | Binary only — no gradation |
| **Recent fracture timing** | Any prior = yes — recency not weighted |

## Data Collection Tips

### Accuracy Matters
- **Height:** Measure, don't ask (recall bias, height loss)
- **Weight:** Current weight (not usual)
- **Fracture history:** Verify with records (patient underreporting)
- **Family history:** Confirm hip fracture specifically

### Common Pitfalls
1. **Including high-trauma fractures:** FRAX for fragility fractures only
2. **Ignoring height loss:** >2cm loss suggests vertebral fracture
3. **Missing secondary causes:** Screen for diabetes, thyroid disease
4. **Not verifying BMD site:** Ensure femoral neck measured

## Related Zettels
- [[FRAX_Output_Thresholds_Treatment_Decisions_Z-001-0110]] — Using the calculated score
- [[FRAX_Limitations_Clinical_Gaps_Z-001-0111]] — What's missing
- [[Osteopenia_T_score_Definition_Minus_1_to_2.5_Z-001-0076]] — BMD component

## Significance

tags: [zettel, frax, risk-factors, osteoporosis, fracture-prediction, clinical-assessment, conscious]

## Source
[[LitNote_FRAX_Risk_Assessment_Tool_L-001-0017]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06


## RELATED FILES
- [[Thyroid_Panel_[B-010-0001]|Biomarker Family]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
