---
uid: Z-001-0938
type: zettel
title: Cross-Validation Strategies for Omics Prediction Models
aliases: [Z-001-0938]
domain: 001
tags: [zettel, cross-validation, cv, opls-da, metabolomics, prediction, model-validation, q2-score, external-validation, conscious]
parent-moc: [[MOC-Insulin-Signaling]]
status: conscious
source-litnote: Synthesized from clinical practice
---

# Cross-Validation Strategies for Omics Prediction Models

## Core Principle
**Cross-validation (CV) estimates how well a model generalizes to new data by training on subsets and testing on held-out samples.**

## Types of Cross-Validation

### 1. K-Fold Cross-Validation
> "Include cross-validation and possibly external validation with an independent dataset"

**Procedure:**
- Divide data into k equal folds (typically k=7 or 10)
- Train on k-1 folds, test on remaining fold
- Repeat k times, each fold serves as test set once
- Average Q2 across all iterations

**Best for:** Medium sample sizes (n=30-100)

### 2. Leave-One-Out Cross-Validation (LOO-CV)
**Procedure:**
- Each sample left out once as test set
- Train on n-1 samples, test on 1
- Repeat n times
- Average Q2

**Best for:** Small sample sizes (n<30)
**Caution:** High variance estimates, optimistic Q2

### 3. Stratified K-Fold
**Procedure:**
- Preserve class proportions in each fold
- Critical for imbalanced groups

**Best for:** Unequal group sizes (e.g., 10 controls vs 20 cases)

## CV Q2 vs. Fit Q2

### The Critical Distinction
| Metric | Calculation | Interpretation |
|--------|-------------|----------------|
| **R2 (fit)** | Explained variance on training data | How well model fits current data |
| **Q2 (CV)** | Predictive ability on held-out data | How well model generalizes |

### Warning Signs
- R2 > 0.9 and Q2 < 0.5: Severe overfitting
- Q2 < 0.4: Model has poor predictive value
- Q2 negative: Model worse than random guessing

## External Validation — The Gold Standard

### Definition
Testing model on completely **independent cohort** collected:
- At different time
- At different site
- By different operators
- With different batch/reagents

### Why Necessary
> "Include external validation with an independent dataset to confirm the robustness"

Cross-validation still uses same data with same technical artifacts. Only external validation tests true generalizability.

### Minimum Requirements
| Study Type | External Validation |
|------------|---------------------|
| Exploratory/pilot | Desirable but not required |
|  discovery | Required (n≥30 external) |
|  diagnostic | Required (prospective cohort) |

## Validation Strategy by Sample Size

### Small Samples (n=10-30 per group)
1. LOO-CV or 5-fold CV (internal)
2. Permutation testing
3. **Must have:** External validation cohort

### Medium Samples (n=30-50 per group)
1. 7-fold or 10-fold CV
2. Permutation testing
3. Reserve 30% for external validation

### Large Samples (n>50 per group)
1. 10-fold CV
2. Permutation testing
3. Multiple external cohorts if possible

## Common CV Mistakes

### 1. Data Leakage
- Feature selection before CV (includes test set information)
- Normalization on full dataset before CV
- **Solution:** Perform all preprocessing within CV loop

### 2. Optimistic Q2
- Using LOO-CV with highly correlated samples
- Not stratifying imbalanced data
- **Solution:** Use stratified k-fold, report multiple CV methods

### 3. No External Validation
- Reporting CV Q2 as final validation
- Never testing on truly independent data
- **Solution:** Always reserve independent cohort

## Integration with Other Metrics

### Complete Validation Package
```
Internal Validation:
├── Cross-validated Q2 > 0.5
├── Permutation Q2 intercept < 0
└── R2/Q2 ratio < 1.2 (not overfitted)

External Validation:
├── Independent cohort Q2 > 0.4
├── Effect sizes replicate (|d| within 20%)
└── Same metabolites significant
```

## Related Zettels
- [[Permutation_Test_Interpretation_Validity_Z-001-0937] — Internal validation
- [[Biomarker_Validation_Pipeline_Requirements_Z-001-0560] — Full pipeline
- [[OPLS_DA_Overfitting_Risks_Small_Samples_Z-001-0935] — Overfitting context

## Source
[[LitNote_Multivariate_Analysis_Pitfalls_L-001-0517]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- 
- |Biomarker Family Guide]
- 


---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]
