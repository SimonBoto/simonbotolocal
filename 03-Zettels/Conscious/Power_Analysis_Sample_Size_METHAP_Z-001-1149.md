---
uid: Z-001-1149
type: zettel
title: Power Analysis and Sample Size — METHAP Trial
domain: 001
tags: [zettel, power-analysis, sample-size, methap, statistics, clinical-trial]
parent-moc: [[MOC-Insulin-Signaling]]
extraction-date: 2026-03-09
source-litnote: "[[LitNote_Statistical_Analysis_Omics_L-001-0617]"
status: conscious
---

# Power Analysis and Sample Size — METHAP Trial
## Related Zettels from Same Source

- [[Multivariate_Analysis_PLS_OPLS_Regression_Z-001-1151]]
- [[PCA_Metabolomics_Dimensionality_Reduction_Z-001-1150]]
- [[Validation_Cross_Validation_Model_Robustness_Z-001-1152]]

## Source

[[LitNote_Statistical_Analysis_Omics_L-001-0617]

## Related Zettels from Same Source

- [[Multivariate_Analysis_PLS_OPLS_Regression_Z-001-1151]]
- [[PCA_Metabolomics_Dimensionality_Reduction_Z-001-1150]]
- [[Validation_Cross_Validation_Model_Robustness_Z-001-1152]]

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


## Related Zettels from Same Source

- [[Multivariate_Analysis_PLS_OPLS_Regression_Z-001-1151]]
- [[PCA_Metabolomics_Dimensionality_Reduction_Z-001-1150]]
- [[Validation_Cross_Validation_Model_Robustness_Z-001-1152]]

## Source

[[LitNote_Statistical_Analysis_Omics_L-001-0617]

## Related Zettels from Same Source

- [[Multivariate_Analysis_PLS_OPLS_Regression_Z-001-1151]]
- [[PCA_Metabolomics_Dimensionality_Reduction_Z-001-1150]]
- [[Validation_Cross_Validation_Model_Robustness_Z-001-1152]]

## Overview

METHAP trial designed with 220 participants to provide 80% statistical power to detect clinically meaningful improvements in insulin resistance markers.

---

## Study Parameters

### Sample Size Calculation
| Parameter | Value |
|-----------|-------|
| **Total participants** | 220 |
| **Power (1-β)** | 80% |
| **Alpha (α)** | 0.05 |
| **Effect size** | 20% improvement in HOMA-IR |
| **Allocation ratio** | 1:1 (intervention:control) |

### Stratification
- **Metabolically healthy:** 60 (observational reference)
- **Insulin-resistant:** 160 (intervention study)
  - Intervention group: 80
  - Control group: 80

---

## Power Analysis Rationale

### Primary Outcome
**HOMA-IR improvement:** 20% reduction considered clinically meaningful

### Statistical Justification
**Why 220 participants?**
- Accounts for 15-20% dropout rate
- Provides adequate power for subgroup analyses
- Sufficient for multivariate  (high dimensionality)
- Meets CONSORT guidelines for RCTs

---

## Effect Size Considerations

### Expected Changes
|  | Baseline (IR) | Post-Intervention | Change |
|-----------|---------------|-------------------|--------|
| **HOMA-IR** | 3.5 | 2.8 | -20% |
| **HbA1c** | 5.9% | 5.5% | -0.4% |
| **Fasting insulin** | 18 μIU/mL | 14 μIU/mL | -22% |

### Metabolomics Markers
- Urine adipate: Expected 30-40% reduction
- Plasma omega-3 index: Expected 50-100% increase
- Dicarboxylic acids: Expected normalization pattern

---

## Sensitivity Analyses

### Dropout Scenarios
| Dropout Rate | Final N | Adjusted Power |
|--------------|---------|----------------|
| 10% | 198 | 78% |
| 15% | 187 | 75% |
| 20% | 176 | 72% |

**Mitigation:** Over-recruitment by 20% built into design

---

## Related

- [[METHAP_Study_Population_Recruitment_Strategy_Z-001-1141]
- [[METHAP_Study_Timeline_Testing_Schedule_Z-001-1144]
- [[Sample_Size_Calculation_Methods_Z-001-XXXX]

---

*Source: [[LitNote_Statistical_Analysis_Omics_L-001-0617]] | 2026-03-09*
## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- 
- /Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- 


---

## Significance

tags: [zettel, power-analysis, sample-size, methap, statistics, clinical-trial]

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
