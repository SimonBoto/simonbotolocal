---
uid: Z-001-0111
type: zettel
title: FRAX Limitations — Clinical Gaps and Underestimation Risks
aliases: [Z-001-0111]
domain: 001
tags: [zettel, frax, limitations, risk-assessment, underestimation, clinical-judgment, conscious]
parent-moc: [[MOC-Insulin-Signaling]]
status: conscious
---

# FRAX Limitations —  Gaps and Underestimation Risks

## Core Principle
FRAX is a **population-level prediction tool** with specific blind spots that require clinical judgment to avoid underestimating individual fracture risk.

## Major Limitations

### 1. Falls History Not Included

**The Gap:**
- FRAX includes no assessment of fall frequency or risk
- Falls account for ~95% of hip fractures
- Independent predictor not captured

**Clinical Impact:**
| Falls Status | Actual Risk vs. FRAX |
|--------------|---------------------|
| No falls | FRAX accurate |
| Single fall | FRAX may underestimate by 10–20% |
| Recurrent falls | FRAX may underestimate by 30–50% |

**Correction:** Add 10–15% to major fracture probability if recurrent falls.

### 2. Binary Risk Factors (No Dose-Response)

#### Smoking
- **FRAX:** Current smoker (yes/no)
- **Missing:** Pack-years, duration, intensity
- **Reality:** 10 pack-years ≠ 40 pack-years

#### Alcohol
- **FRAX:** ≥3 units/day threshold
- **Missing:** 3 units vs. 10 units; binge pattern vs. regular
- **Reality:** Threshold effect not accurate for all patients

#### Glucocorticoids
- **FRAX:** ≥2.5mg prednisone equivalent (yes/no)
- **Missing:** Dose (5mg vs. 20mg), duration (months vs. years)
- **Reality:** Dose-response relationship steep

### 3. Recency of Fracture Ignored

**FRAX Approach:** Any fracture after age 50 = "yes"

**Clinical Reality:**
| Fracture Timing | Relative Risk |
|-----------------|---------------|
| 20 years ago | 1.5× |
| 5 years ago | 2× |
| 1 year ago | 3–4× |
| Multiple recent | 5×+ |

**Correction:** Multiply FRAX by 1.5–2.0 if fracture within 2 years.

### 4. Multiple Fractures Counted Once

**FRAX:** Binary (yes/no for any prior fracture)

**Reality:** Risk compounds with each fracture:
- 1 prior fracture: 2× risk
- 2 prior fractures: 4× risk
- 3+ prior fractures: 8×+ risk

**Correction:** Consider automatic treatment if ≥2 prior fractures regardless of FRAX.

### 5. No Volumetric BMD (TBS)

**FRAX:** Areal BMD (g/cm²) only

**Missing:** Trabecular bone score (TBS) — texture analysis

**Discordance:**
- Normal BMD + Low TBS = High fracture risk (missed by FRAX)
- Osteoporotic BMD + Normal TBS = Lower than expected risk

### 6. Secondary Causes Binary

**FRAX:** "Secondary osteoporosis" checkbox

**Missing:** Severity, control, duration:
- Well-controlled hypothyroidism vs. untreated
- 1 year vs. 20 years of 
- Mal severity

### 7. No Fall-Related Risk Factors

**Missing Variables:**
- Gait abnormalities (Parkinson's, neuropathy)
- Sedating medications (benzodiazepines, sleep aids)
- Visual impairment
- Environmental hazards
- Lower extremity weakness

### 8. Ethnicity Database Limitations

**FRAX:** Country-specific versions with ethnic adjustments

**Gaps:**
- Mixed ethnicity not well-captured
- Recent immigrants may not fit reference database
- Some ethnic groups underrepresented in validation studies

## Clinical Scenarios of Underestimation

### High-Risk Patient FRAX May Miss

#### Scenario 1: The Frequent Faller
```
Profile: 75-year-old woman, T-score -2.2, prior wrist fracture
FRAX: 18% major (below threshold)
Reality: Recurrent falls, poor balance
Actual risk: 30%+ (high risk)
Action: Treat despite FRAX
```

#### Scenario 2: Recent Multiple Fractures
```
Profile: 68-year-old man, vertebral fracture 6 months ago
FRAX: 22% major (just above threshold)
Reality: Second fracture suggests aggressive disease
Actual risk: 40%+ (very high)
Action: Anabolic therapy, not just bisphosphonate
```

#### Scenario 3: High-Dose Steroids
```
Profile: 55-year-old woman, 15mg prednisone for 2 years
FRAX: 12% major (captured as "secondary")
Reality: High-dose, long-duration
Actual risk: 25%+
Action: Treat (threshold 10% for glucocorticoids)
```

## When to Override FRAX

### Treat Despite "Low" FRAX
- Recent fracture (< 2 years)
- Multiple fractures (any time)
- Recurrent falls (≥2 in past year)
- Very low BMD (T-score < -3.0)
- High-dose glucocorticoids (>7.5mg)

### Defer Treatment Despite "High" FRAX
- Terminal illness (limited life expectancy)
- Severe immobility already (no fall risk)
- Patient preference after informed consent
- Competing health risks outweigh benefit

## Communication with Patients

### Explaining Limitations
> "FRAX gives us a good estimate based on population data, but it doesn't know everything about you. Your recent fracture [or falls, or very low bone density] suggests your personal risk is higher than the calculator shows."

### Shared Decision-Making
- Present FRAX as starting point
- Discuss missing factors in their case
- Offer trial of therapy with reassessment

## Related Zettels
- [[FRAX_Input_Variables_Clinical_Risk_Factors_Z-001-0109] — What's included
- [[FRAX_Adjustments_TBS_Falls_Glucocorticoids_Z-001-0112] — How to correct
- [[FRAX_Output_Thresholds_Treatment_Decisions_Z-001-0110] — When to override

## Source
[[LitNote_FRAX_Risk_Assessment_Tool_L-001-0017]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06


## Related
- [[Net_Bone_Loss_Resorption_Exceeds_Formation_Z-001-0084]|Z-001-0084]


## Related
- [[METHAP_Calcium_Monitoring_Protocol_Z-001-0262]|Z-001-0262]


## Related
- [[Hormonal_Metabolic_Regulation_Terms_Z-001-1044]|Z-001-1044]


## Related
- [[D_K2_Shared_Metabolic_Pathways_Z-001-0256]|Z-001-0256]


## Related
- [[PTH_Master_Calcium_Regulator_Z-001-0259]|Z-001-0259]


## Related
- [[Confounding_Variables_Diet_Studies_Z-001-0525]|Z-001-0525]


## Related
- [[Vitamin_D_Calcium_Absorption_Dose_Response_Z-001-0260]|Z-001-0260]


## Related
- [[Clinical_Scenarios_Dicarboxylic_Acid_Elevation_Z-101-0016]|Z-101-0016]


## RELATED FILES
- [[Thyroid_Panel_[B-010-0001]|Biomarker Family]
- [[Iron_Family_[B-003-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]
