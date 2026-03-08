---
uid: Z-001-1149
type: zettel
title: Power Analysis Sample Size METHAP
aliases: [Z-001-1149, Power-Analysis]
domain: 001
domain-name: PhD Research
tags: [zettel, power-analysis, sample-size, methap, statistics]
parent-moc: [[MOC-PhD-Research]]
source-litnote: [[LitNote_Statistical_Analysis_Omics_L-001-0617]]
source: [[LitNote_Statistical_Analysis_Omics_L-001-0617]]
confidence: high
created: 2026-03-08
---

# Power Analysis Sample Size METHAP

## Overview
Power analysis for the METHAP trial confirms that 220 participants provide adequate statistical power to detect clinically meaningful improvements in metabolic biomarkers following intervention.

## Sample Size Determination

### Total Sample
| Component | N |
|-----------|---|
| **Metabolically healthy** | 60 |
| **Insulin-resistant intervention** | 80 |
| **Insulin-resistant control** | 80 |
| **TOTAL** | **220** |

### Power Calculation Parameters
| Parameter | Value |
|-----------|-------|
| **Primary outcome** | HOMA-IR change |
| **Expected effect size** | 20% reduction in HOMA-IR |
| **Standard deviation** | Based on pilot data/literature |
| **Alpha (α)** | 0.05 (two-tailed) |
| **Power (1-β)** | 80% |
| **Dropout rate** | 15% (accounted for in recruitment) |

### Power for Primary Outcome
| Comparison | Power |
|------------|-------|
| **IR-Intervention vs IR-Control** | >80% |
| **IR groups vs Healthy** | >90% |
| **Metabolomics markers** | Variable (exploratory) |

## Primary Outcome: HOMA-IR

### Expected Change
| Group | Baseline HOMA-IR | Expected Change | Post-Intervention |
|-------|------------------|-----------------|-------------------|
| **IR-Intervention** | 4.0 | -20% (-0.8) | 3.2 |
| **IR-Control** | 4.0 | -5% (-0.2) | 3.8 |
| **Difference** | | 0.6 units | Clinically meaningful |

### Effect Size
| Metric | Value |
|--------|-------|
| **Cohen's d** | ~0.5 (medium effect) |
| **Standardized difference** | Detectable with n=80 per group |

## Secondary Outcomes: Exploratory

### Metabolomics Markers
| Approach | Power Consideration |
|----------|---------------------|
| **Individual markers** | Lower power (multiple testing) |
| **Composite scores** | Higher power (dimension reduction) |
| **Pattern analysis** | Exploratory (no predetermined power) |

### Sample Size for Omics
| Consideration | Approach |
|---------------|----------|
| **High dimensionality** | Focus on effect size, not p-values |
| **Multiple testing** | FDR correction (Benjamini-Hochberg) |
| **Validation** | Cross-validation for model building |

## Recruitment Strategy

### Stratification
| Factor | Strata | Purpose |
|--------|--------|---------|
| **Age** | <40, 40-60, >60 | Ensure representation |
| **Sex** | Male, Female | Balance groups |
| **HOMA-IR severity** | Mild, Moderate, Severe | Range of IR |

### Buffer for Dropout
| Calculation | Result |
|-------------|--------|
| **Target completers** | 220 |
| **Dropout rate** | 15% |
| **Recruitment target** | 260 (220 ÷ 0.85) |

## Sensitivity Analysis

### Minimum Detectable Effect
| Scenario | Detectable Change |
|----------|-------------------|
| **With n=220** | 15-20% improvement |
| **If dropout higher** | 20-25% improvement |
| **Subgroup analysis** | Limited power (exploratory only) |

### Post-Hoc Power
| Outcome | Achieved Power |
|---------|----------------|
| **HOMA-IR** | Will calculate after study |
| **Individual metabolites** | Variable |
| **Composite scores** | Expected adequate |

## Related
- [[PCA_Metabolomics_Dimensionality_Reduction_[Z-001-1150].md]]
- [[Multivariate_Analysis_PLS_OPLS_Regression_[Z-001-1151].md]]
- [[MOC-PhD-Research]]

---
*Source: CGPT-0475 — Metabolic biomarkers for insulin resistance*
