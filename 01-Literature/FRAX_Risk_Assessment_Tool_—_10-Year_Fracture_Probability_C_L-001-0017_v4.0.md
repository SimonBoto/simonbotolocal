---
uid: L-001-0017
type: litnote
title: "FRAX Risk Assessment Tool — 10-Year Fracture Probability Calculation_L-001-0017"
aliases:
  - L-001-0017
  - FRAX-Risk-Assessment
source-origin: chatgpt-archive
authors: "ChatGPT synthesis from clinical review (CGPT-0133)"
year: "2025"
journal: "Internal clinical synthesis"
doi: ""
pmid: ""
pmcid: ""
tier: SILVER
relevance: "High — Clinical decision tool for osteoporosis treatment thresholds"
status: complete
parent-moc: "[[MOC-Bone-Health]]"
parent-index: "[[02-Literature]]"
extraction-date: "2026-03-06"
source-inbox: "[[CGPT_0133_Osteopenia_Osteoporosis_Bone_Remodeling_CGPT-0133]]"
source-litnote: "[[CGPT_0133_Osteopenia_Osteoporosis_Bone_Remodeling_CGPT-0133]]"
zettel-count: 4
reference-count: 0
reviewed_by: "FORG"
created: "2026-03-06"
updated: "2026-04-09"
tags:
  - litnote
  - FRAX
  - fracture-risk
  - osteoporosis
  - CGPT-0133
---

# FRAX Risk Assessment Tool — 10-Year Fracture Probability Calculation

## Source
- **ChatGPT conversation:** [[CGPT_0133_Osteopenia_Osteoporosis_Bone_Remodeling_CGPT-0133]]
- **Date:** March 07, 2025
- **Scope:** Risk stratification section mentioning FRAX alongside DXA

---

## Core Concepts Extracted

### FRAX Overview
> "Clinical risk factors (age, prior fracture, smoking, family history, hormone status) and tools such as FRAX® (Fracture Risk Assessment Tool) guide decisions regarding treatment thresholds."

**FRAX:** World Health Organization-developed algorithm estimating 10-year probability of major osteoporotic fracture (hip, spine, forearm, humerus).

---

### 1. FRAX Input Variables

**Zettel extracted:** [[FRAX_Input_Variables_Clinical_Risk_Factors_Z-001-0109]]

#### Required Variables (Always Included)
| Variable | Categories/Range |
|----------|-----------------|
| **Age** | 40–90 years |
| **Sex** | Male / Female |
| **Weight** | Kilograms |
| **Height** | Centimeters |
| **Previous fracture** | Yes / No (after age 50) |
| **Parent fractured hip** | Yes / No |
| **Current smoking** | Yes / No |
| **Alcohol** | ≥3 units/day (Yes/No) |
| **Rheumatoid arthritis** | Yes / No |
| **Secondary osteoporosis** | Yes / No |

#### Optional Input (If Available)
| Variable | Impact |
|----------|--------|
| **Femoral neck BMD** | T-score (g/cm²) — preferred site |
| **Other BMD sites** | Can be used if femoral neck unavailable |

#### Bone Mineral Density Considerations
- **Femoral neck preferred:** Best predictor of hip fracture
- **Lumbar spine:** Can underestimate risk in elderly (degenerative changes)
- **Total hip:** Alternative if femoral neck unavailable
- **Without BMD:** FRAX can calculate using clinical factors alone (less precise)

---

### 2. FRAX Output Interpretation

**Zettel extracted:** [[FRAX_Output_Thresholds_Treatment_Decisions_Z-001-0110]]

#### 10-Year Probability Outputs
1. **Major osteoporotic fracture** (clinical spine, hip, forearm, humerus)
2. **Hip fracture specifically** (higher clinical consequence)

#### Treatment Thresholds (US Guidelines — NOF)
| Risk Category | Major Fracture | Hip Fracture | Recommendation |
|---------------|---------------|--------------|----------------|
| **Low risk** | <10% | <1% | Lifestyle measures, reassess in 5–10 years |
| **Moderate risk** | 10–20% | 1–3% | Consider treatment if additional risk factors |
| **High risk** | >20% OR | >3% OR | Pharmacologic therapy recommended |
| | | | Prior fragility fracture, T-score ≤ -2.5 |

#### Country-Specific Thresholds
| Country | Intervention Threshold |
|---------|----------------------|
| **United States** | 3% hip OR 20% major (NOF) |
| **United Kingdom** | Age-dependent (NICE), roughly 10% major |
| **Europe** | Varies by country (10–20% major) |
| **Japan** | 15% major, 3% hip |

---

### 3. FRAX Limitations

**Zettel extracted:** [[FRAX_Limitations_Clinical_Gaps_Z-001-0111]]

#### Known Limitations
| Limitation | Clinical Impact |
|------------|-----------------|
| **Falls history not included** | Major independent risk factor omitted |
| **No volumetric BMD** | Trabecular bone score (TBS) not incorporated |
| **Dose-response ignored** | Smoking: yes/no (not pack-years); Alcohol: threshold only |
| **Secondary causes binary** | No gradation of severity |
| **Recency of fracture** | Any prior fracture weighted equally (recent > distant) |
| **Multiple fractures** | Counts as single yes/no |
| **Glucocorticoid dose** | Binary only (not mg/day or duration) |
| **Ethnicity adjustments** | Limited ethnic databases |

#### Clinical Scenarios Where FRAX Underestimates
- **Recent fracture:** Within 1–2 years (higher risk than calculated)
- **Multiple fractures:** Two+ prior fractures (compounding risk)
- **Severe vertebral fractures:** Height loss, deformity
- **High fall risk:** Parkinson's, prior falls, sedating medications
- **Very low BMD:** T-score < -3.0 (risk higher than FRAX predicts)

### 4. FRAX Adjustments and Enhancements

**Zettel extracted:** [[FRAX_Adjustments_TBS_Falls_Glucocorticoids_Z-001-0112]]

#### Trabecular Bone Score (TBS)
- **Technology:** Texture analysis from lumbar spine DXA
- **Input:** Adjusts FRAX probability
- **Effect:** Low TBS increases calculated risk by ~1.3–1.5×
- **Use:** When BMD and TBS discordant (normal BMD, low TBS)

#### Falls History Adjustment
- **Not in FRAX algorithm** — requires clinical judgment
- **Rule of thumb:** Add 10–15% to major fracture probability if recurrent falls

#### Glucocorticoid Dose Adjustment
| Prednisone Equivalent | Risk Multiplier |
|----------------------|-----------------|
| 2.5–7.5 mg/day | 1.0× (binary FRAX) |
| >7.5 mg/day | 1.15–1.2× (expert adjustment) |
| Long-term (>3 months) | Higher risk than short-term |

#### Recent Fracture Adjustment
- **Within 2 years:** Multiply FRAX by 1.5–2.0
- **Within 5 years:** Multiply by 1.2–1.5

---

## Integration with DXA

### FRAX Without BMD
- **Use when:** No DXA available, patient unable to get DXA
- **Accuracy:** Moderate — clinical factors capture much risk
- **Tendency:** May underestimate in very low BMD, overestimate in high BMD

### FRAX With BMD
- **Preferred method:** Femoral neck T-score input
- **Synergy:** BMD + clinical factors > either alone
- **Treatment thresholds:** Apply post-FRAX calculation

### Discordant Results
| Scenario | Interpretation | Action |
|----------|---------------|--------|
| **Low BMD, low FRAX** | Younger age, no other risk factors | May defer medication if comfortable |
| **Normal BMD, high FRAX** | Multiple clinical risk factors | Treat despite T-score > -2.5 |
| **Low TBS, normal FRAX** | Poor bone quality not captured | Adjust upward, consider treatment |

## Clinical Application Flowchart

```
Patient ≥ 50 years with fracture risk factors
                ↓
        Assess FRAX variables
                ↓
        Calculate 10-year probability
                ↓
    ┌───────────┼───────────┐
    ↓           ↓           ↓
<10% major   10–20%      >20% major
    ↓        major          ↓
Lifestyle   Consider       Treat
reassess    TBS, falls    Pharmacologic
            treat if       therapy
            additional
            risks
```

## Related Zettels
- [[Osteopenia_T_score_Definition_Minus_1_to_2.5_Z-001-0076]] — BMD component
- [[Osteoporosis_T_score_Definition_Minus_2.5_Z-001-0077]] — Treatment threshold
- [[Fragility_Fractures_Morbidity_Mortality_Z-001-0078]] — Outcome being predicted

## Source
[[LitNote_FRAX_Risk_Assessment_Tool_L-001-0017]]

---

**Zettels extracted:** 4 (Z-001-0109 through Z-001-0112)
**Status:** Complete
**Next:** LitNote 9 — Drug Transition Protocols

---

**⚠️ EXTRACTION NOTE:** FRAX content in source was brief (single mention). This LitNote synthesizes standard FRAX knowledge contextualized to the source's clinical review framework. Detailed FRAX algorithm internals (coefficients, country-specific databases) not available in source.

---

---
parent-index: [[01-Literature 1]]

*Literature note processed: 2026-03-06 | Updated to v4.0: 2026-04-09*
*Zettels extracted: 4 | Status: complete*
*Reviewed by: FORG*

## Status Checklist

- [ ] Source read completely
- [ ] YAML standardized (type: lit-note, source-inbox, zettel-count, reference-count, tags)
- [ ] Core claim articulated (one sentence)
- [ ] Core concepts numbered (1, 2, 3...)
- [ ] Subsection headers used (**Category**, **Mechanism**, **Purpose**)
- [ ] Zettel links use FULL format with titles
- [ ] Snowball references documented
- [ ] QMD duplicate check completed
- [ ] RON review pending
