---
uid: Z-001-0112
type: zettel
title: FRAX Adjustments — TBS Falls and Glucocorticoid Dose Modifications
aliases: [Z-001-0112]
domain: 001
tags: [zettel, frax, adjustments, tbs, falls, glucocorticoids, risk-modification, conscious]
parent-moc: [[MOC-Insulin-Signaling]]
status: conscious
---

# FRAX Adjustments — TBS, Falls, and Glucocorticoid Dose Modifications

## Core Principle
FRAX probability estimates can be **refined** using additional  data that the algorithm doesn't directly incorporate.

## Adjustment 1: Trabecular Bone Score (TBS)

### What is TBS?
- **Technology:** Texture analysis from lumbar spine DXA images
- **Measures:** Trabecular microarchitecture (bone quality)
- **Output:** Score 1.0–2.0+ (higher = better structure)

### TBS Categories
| TBS Value | Classification |
|-----------|---------------|
| > 1.35 | Normal |
| 1.20–1.35 | Partially degraded |
| < 1.20 | Degraded |

### FRAX Adjustment Formula

#### With TBS iNsight Software (Official)
```
Adjusted FRAX = FRAX × Risk Ratio

For TBS < 1.2:
- Major fracture: Multiply by 1.3–1.4
- Hip fracture: Multiply by 1.3

For TBS 1.2–1.35:
- Modest increase: 1.1–1.2
```

#### Clinical Application
| TBS | FRAX 15% | Adjusted |
|-----|----------|----------|
| 1.40 (normal) | 15% | 15% |
| 1.25 (degraded) | 15% | 18% (×1.2) |
| 1.10 (degraded) | 15% | 20% (×1.3) |

### When TBS Changes Decisions
- **Normal BMD + Low TBS:** Treat despite T-score > -2.5
- **Osteopenia + Low TBS:** Threshold crossed earlier
- **Osteoporosis + Normal TBS:** May reassess if FRAX borderline

---

## Adjustment 2: Falls History

### The Falls Multiplier

#### Simple Clinical Rule
| Falls Frequency | FRAX Adjustment |
|-----------------|-----------------|
| No falls | Use FRAX as calculated |
| Single fall in past year | Add 5–10% to major fracture |
| 2–3 falls in past year | Add 15–20% |
| > 3 falls or injurious falls | Add 25–30% |

#### More Precise Approach
**Garvan Fracture Risk Calculator:** Alternative tool that includes falls
- Use when falls are predominant risk factor
- May give higher estimate than FRAX

### Fall Risk Factors to Quantify

#### Intrinsic Factors (Add 10% each)
- Prior falls
- Gait abnormality (timed up-and-go > 12 seconds)
- Lower extremity weakness
- Balance problems (single-leg stand < 5 seconds)
- Visual impairment
- Cognitive impairment
- Parkinson's disease
- Neuropathy

#### Extrinsic Factors (Add 5% each)
- Sedating medications (benzodiazepines, opioids)
- Polypharmacy (>4 medications)
- Environmental hazards
- Inappropriate footwear

### Example Calculation
```
Base FRAX: 18% major fracture
Adjustments:
- 2 falls in past year: +15%
- Parkinson's disease: +10%
- Benzodiazepine use: +5%

Adjusted risk: 18% × 1.30 = 23.4% (now high risk)
```

---

## Adjustment 3: Glucocorticoid Dose

### FRAX Limitation
- Binary: ≥2.5mg prednisone (yes/no)
- Misses: Actual dose, duration, pattern

### Dose-Response Adjustment

#### Low Dose (2.5–7.5mg/day)
- **FRAX handles:** Included as "secondary osteoporosis"
- **Action:** Use FRAX as calculated

#### Moderate Dose (7.5–15mg/day)
- **Adjustment:** Multiply FRAX by 1.15
- **Rationale:** Steeper risk curve in this range

#### High Dose (>15mg/day)
- **Adjustment:** Multiply FRAX by 1.3–1.5
- **Rationale:** Dramatically increased fracture risk

#### Very High Dose (>30mg/day)
- **Adjustment:** Treat regardless of FRAX
- **Rationale:** Risk so high calculation unnecessary

### Duration Adjustment
| Duration | Adjustment Factor |
|----------|------------------|
| < 1 month | No adjustment (acute use) |
| 1–3 months | 1.0× |
| 3–6 months | 1.1× |
| 6–12 months | 1.2× |
| > 1 year | 1.3× |

### Combined Dose + Duration Example
```
Profile: 10mg prednisone for 8 months
Base FRAX: 12% major

Adjustments:
- Dose (10mg): 1.15×
- Duration (8 months): 1.2×

Adjusted calculation:
12% × 1.15 × 1.2 = 16.6%

Result: Moderate → Consider treatment
```

---

## Adjustment 4: Recent Fracture Timing

### Time-Decay Factor

| Time Since Fracture | Risk Multiplier |
|--------------------|-----------------|
| < 6 months | 2.0× |
| 6–12 months | 1.5× |
| 1–2 years | 1.3× |
| 2–5 years | 1.1× |
| > 5 years | 1.0× (FRAX accurate) |

### Application
```
FRAX: 16% major
Recent fracture: 8 months ago

Adjusted: 16% × 1.5 = 24% (high risk, treat)
```

---

## Adjustment 5: Multiple Fractures

### Count-Based Multiplier
| Number of Fractures | Risk Multiplier |
|--------------------|-----------------|
| 1 | 1.0× (FRAX handles) |
| 2 | 1.5× |
| 3+ | 2.0× |

**Rule:** ≥2 prior fractures = automatic treatment regardless of FRAX.

---

## Composite Adjustment Example

### Complex Patient
```
Profile: 72-year-old woman
Base FRAX: 14% major (moderate)

Additional factors:
- TBS: 1.18 (degraded) → ×1.3
- Falls: 3 in past year → ×1.2
- Glucocorticoids: 8mg prednisone × 6 months → ×1.15
- Recent fracture: Vertebral 10 months ago → ×1.5

Calculation order (simplified):
14% × 1.3 (TBS) = 18.2%
18.2% × 1.2 (falls) = 21.8%
21.8% × 1.15 (steroids) = 25.1%
25.1% × 1.5 (recent fx) = 37.7%

Final adjusted risk: ~38% (very high risk)
Decision: Anabolic therapy indicated
```

## Documentation Best Practices

### In Clinical Notes
> "FRAX calculated at 14% (moderate). Adjusted for TBS 1.18 (×1.3), 3 falls in past year (×1.2), and recent vertebral fracture (×1.5). Final estimated risk 38%, indicating high risk requiring anabolic therapy."

### When to Use Adjustments vs. Alternative Tools
- **Minor adjustments (single factor):** Modify FRAX
- **Major adjustments (multiple factors):** Consider Garvan calculator or clinical judgment
- **Extreme cases:** Treat regardless of calculation

## Related Zettels
- [[FRAX_Limitations_Clinical_Gaps_Z-001-0111] — Why adjustments needed
- [[FRAX_Output_Thresholds_Treatment_Decisions_Z-001-0110] — Using adjusted scores
- [[Glucocorticoid_Induced_Osteoporosis_Pathophysiology_Z-001-XXXX] — Steroid 

## Source
[[LitNote_FRAX_Risk_Assessment_Tool_L-001-0017]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06


## RELATED FILES
- [[Iron_Family_[B-003-0001]|Biomarker Family]
