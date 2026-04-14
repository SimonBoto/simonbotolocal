---
uid: Z-001-1151
type: zettel
title: Multivariate Analysis PLS OPLS Regression
aliases: [Z-001-1151, PLS-OPLS]
domain: 001
domain-name: Metabolomics Analysis
tags: [zettel, pls, opls, multivariate, regression]
parent-moc: [[MOC-Insulin-Signaling]]
source-litnote: [[LitNote_Statistical_Analysis_Omics_L-001-0617]
confidence: high
created: 2026-03-08
---

# Multivariate Analysis PLS OPLS Regression

## Overview
Partial Least Squares Discriminant Analysis (PLS-DA) and Orthogonal PLS (OPLS) are supervised multivariate methods that maximize separation between groups while modeling  data—identifying s that discriminate insulin-resistant from healthy individuals.

## PLS-DA (Partial Least Squares Discriminant Analysis)

### Purpose
| Goal | Application |
|------|-------------|
| **Group discrimination** | Healthy vs IR classification |
| **Biomarker identification** | Variables driving separation |
| **Prediction** | Classify new samples |

### How It Works
```
X (metabolites) → PLS model → Y (group membership)
        ↓
Maximizes covariance between X and Y
        ↓
Latent variables (components) capture group-discriminating variance
```

### Key Outputs
| Output | Interpretation |
|--------|----------------|
| **Score plot** | Sample distribution, group separation |
| **Loading plot** | Variable importance for discrimination |
| **VIP scores** | Variable Importance in Projection (biomarker ranking) |
| **Model fit** | R²X, R²Y, Q² (predictive ability) |

## OPLS (Orthogonal Partial Least Squares)

### Improvement over PLS-DA
| Feature | Benefit |
|---------|---------|
| **Separates predictive variation** | Group-related vs unrelated variance |
| **Simpler interpretation** | Single predictive component |
| **Easier visualization** | Clear separation in score plot |

### OPLS Structure
| Component | Captures |
|-----------|----------|
| **Predictive** | Covariance with Y (group difference) |
| **Orthogonal** | Uncorrelated with Y (technical/biological noise) |

## METHAP Applications

### Baseline Analysis
| Comparison | Method |
|------------|--------|
| **Healthy vs IR** | OPLS-DA |
| **Goal** | Identify IR biomarker signature |
| **Output** | List of discriminating metabolites |

### Intervention Analysis
| Comparison | Method |
|------------|--------|
| **Pre vs Post (IR-Intervention)** | OPLS |
| **Goal** | Identify intervention-induced changes |
| **Output** |  of metabolic improvement |

### Cross-Sectional
| Comparison | Method |
|------------|--------|
| **IR-Intervention vs IR-Control (post)** | OPLS-DA |
| **Goal** | Demonstrate intervention efficacy |
| **Output** | Treatment-specific metabolic signature |

## Validation Metrics

### R² and Q²
| Metric | Interpretation | Target |
|--------|----------------|--------|
| **R²X** | Variance in X explained by model | >0.5 |
| **R²Y** | Variance in Y explained by model | >0.5 |
| **Q²** | Predictive ability (cross-validated) | >0.5 (good), >0.9 (excellent) |
| **Q² > 0.5** | Model has predictive power |

### Permutation Testing
| Test | Purpose | Pass Criteria |
|------|---------|---------------|
| **Y-scrambling** | Prevent overfitting | Q² intercept < 0.05 |
| **Cross-validation** | Model robustness | Consistent Q² across folds |

## Biomarker Identification

### VIP Scores (Variable Importance in Projection)
| Threshold | Interpretation |
|-----------|----------------|
| **VIP > 1.0** | Important for discrimination |
| **VIP > 1.5** | Highly important |
| **VIP < 0.5** | Not important |

### S-Plot (OPLS)
| Feature | Interpretation |
|---------|----------------|
| **X-axis** | Correlation with class (p[1]) |
| **Y-axis** | Confidence (p(corr)[1]) |
| **Upper right/lower left** | Reliable biomarkers |
| **Magnitude** | Effect size |

### Selection Criteria
| Criterion | Application |
|-----------|-------------|
| **VIP > 1.0** | Initial screening |
| **Fold change > 1.2** | Biological relevance |
| **p < 0.05** | Statistical significance |
| **FDR correction** | Multiple testing adjustment |

## Related
- [[PCA_Metabolomics_Dimensionality_Reduction_Z-001-1150]
- [[Validation_Cross_Validation_Model_Robustness_Z-001-1152]
- 

---
*Source: CGPT-0475 — Metabolic biomarkers for insulin resistance*

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- 


---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
