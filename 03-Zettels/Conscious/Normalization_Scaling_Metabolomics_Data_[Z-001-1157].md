---
uid: Z-001-1157
type: zettel
title: Normalization and Scaling — Metabolomics Data
domain: 001
tags: [zettel, normalization, scaling, metabolomics, batch-correction, standardization]
parent-moc: 
extraction-date: 2026-03-09
source-litnote: "[[LitNote_Metabolomics_Data_Processing_L-001-0619]]"
status: conscious
---

# Normalization and Scaling —  Data

## Overview

Normalization corrects for technical variation (sample volume, batch effects), while scaling ensures variables contribute equally to multivariate analysis. Essential preprocessing steps for reliable metabolomics statistical analysis.

---

## Normalization Methods

### 1. Total Sum Normalization (TIC)
**Method:** Divide each metabolite by total signal
```
Normalized = Raw / Sum(all metabolites)
```
**Use case:** Global metabolite changes not expected
**Pros:** Simple, fast
**Cons:** Assumes constant total metabolite pool

### 2. Probabilistic Quotient Normalization (PQN)
**Method:**
1. Calculate median spectrum (reference)
2. Divide each sample by reference
3. Use median of quotients as scaling factor

**Advantage:** Robust to outliers
**Best for:** Urine metabolomics (dilution differences)

### 3. Internal Standard Normalization
**Method:** Divide by internal standard signal
```
Normalized = Analyte / Internal Standard
```
**Requirements:**
- Stable isotope-labeled standards
- Spiked at known concentrations
- Covers metabolite classes

### 4. QC-RSC (Robust LOESS Signal Correction)
**Method:**
1. Fit LOESS curve to QC sample trends
2. Correct each metabolite for drift

**Best for:** Long acquisition runs with drift

### 5. Batch Correction Methods
**Combat (ComBat):**
- Empirical Bayes framework
- Removes batch effects while preserving biological variation
- Used in genomics, adapted for metabolomics

**SVA (Surrogate Variable Analysis):**
- Identifies hidden batch factors
- Adjusts in statistical models

---

## Scaling Methods

### Why Scale?
**Problem:** Metabolite concentrations vary by orders of magnitude
- Glucose: mM range
- Coenzyme Q10: μM range
- Trace metabolites: nM range

**Consequence:** High-abundance metabolites dominate PCA/PLS

### Scaling Options

| Method | Formula | Use Case |
|--------|---------|----------|
| **Auto (UV)** | (x - mean) / sd | General purpose |
| **Pareto** | (x - mean) / √sd | Downweights large variance |
| **Range** | (x - min) / (max - min) | Preserves shape |
| **Vast** | (x - mean) / sd × (mean/sd) | Emphasizes consistent metabolites |
| **Log** | log(x + 1) | Skewed distributions |

### METHAP Recommendation
**Urine OA:** PQN normalization + Auto scaling
**Plasma TFA:** Internal standard normalization + Auto scaling
**Combined analysis:** Block scaling by platform

---

## Transformation

### Log Transformation
**Why:** Metabolomics data often log-normal
**Formula:**
```
x_transformed = log(x + 1)  # Add pseudo-count for zeros
```
**Benefits:**
- Reduces skewness
- Stabilizes variance
- Makes data more Gaussian

### Power Transformation
**Box-Cox:** Find optimal λ for transformation
**Yeo-Johnson:** Handles negative values

---

## METHAP Normalization Workflow

### Step 1: Raw Data QC
- Check for missing values
- Identify outliers
- Assess batch effects

### Step 2: Normalization
**Urine OA:**
1. PQN normalization (dilution correction)
2. Combat batch correction
3. Log transformation

**Plasma TFA:**
1. Internal standard normalization
2. Combat batch correction
3. Log transformation

### Step 3: Scaling
- Auto (UV) scaling for PCA/PLS
- Mean-centering for regression

### Step 4: Validation
- PCA before/after normalization
- QC sample clustering
- Biological group separation

---

## Validation Checks

### Before/After Comparison
| Check | Before | After |
|-------|--------|-------|
| **PCA (QCs)** | Scattered | Tight cluster |
| **PCA (batches)** | Separation | Overlap |
| **RSD distribution** | Wide | Narrow |
| **Group separation** | Poor | Clear |

### Acceptance Criteria
- QC RSD < 20-30%
- Batch effect p > 0.05 (PERMANOVA)
- Biological variance > technical variance

---

## Common Pitfalls

### 1. Over-normalization
Removing biological signal with technical variation
**Solution:** Conservative methods, validate with biological replicates

### 2. Incorrect Scaling
Using wrong scaling for analysis type
**Solution:**
- PCA/PLS: Auto or Pareto scaling
- Random Forest: No scaling needed
- SVM: Mandatory scaling

### 3. Ignoring Batch Effects
**Consequence:** False positives, irreproducible results
**Solution:** Visualize with PCA, apply Combat/SVA

---

## Software Implementation

### R (MetaboAnalyst)
```r
# Normalization
data_norm <- Normalize(data, method = "PQN")

# Scaling
data_scaled <- Scale(data_norm, method = "Auto")

# Batch correction
data_corrected <- RemoveBatchEffect(data_scaled, batch)
```

### Python (scikit-learn)
```python
from sklearn.preprocessing import StandardScaler, normalize

# Normalization
X_norm = normalize(X, norm='l1')  # TIC

# Scaling
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X_norm)
```

---

## Related

- [[Metabolomics_Preprocessing_Quality_Control_[Z-001-1156].md]]
- [[Pathway_Analysis_Network_Metabolomics_[Z-001-1158].md]]
- [[PCA_Metabolomics_Dimensionality_Reduction_[Z-001-1150].md]]

---

*Source: [[LitNote_Metabolomics_Data_Processing_L-001-0619]] | 2026-03-09*

## RELATED FILES
- [[Biomarkers/Methylation_Family_[B-004-0001]|Biomarker Family]]
- [[Biomarkers/Metabolic_IR_Family_[B-005-0001]|Biomarker Family]]
