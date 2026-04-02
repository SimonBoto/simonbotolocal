---
uid: Z-001-1156
type: zettel
title: Metabolomics Preprocessing and Quality Control
domain: 001
tags: [zettel, metabolomics, preprocessing, quality-control, data-cleaning, methap]
parent-moc: 
extraction-date: 2026-03-09
source-litnote: "[[LitNote_Metabolomics_Data_Processing_L-001-0619]]"
status: conscious
---

#  Preprocessing and Quality Control

## Overview

Raw metabolomics data requires systematic preprocessing—baseline correction, peak detection, alignment, and quality control—to ensure reliable downstream statistical analysis and biological interpretation.

---

## Preprocessing Pipeline

### 1. Baseline Correction
**Problem:** MS data has chemical noise baseline
**Solution:** Remove background signal
**Methods:**
- Asymmetric least squares
- Polynomial fitting
- Morphological operations

### 2. Peak Detection
**Goal:** Identify metabolite signals
**Criteria:**
- Signal-to-noise ratio (SNR) > 3
- Peak width constraints
- Local maxima identification

**Software:**
- XCMS (R/Bioconductor)
- MZmine (Java)
- MS-DIAL (C#)

### 3. Peak Alignment
**Problem:** Retention time drift between runs
**Solution:** Align peaks across samples
**Methods:**
- LOESS regression
- Dynamic time warping
- Obiwarp (XCMS)

### 4. Peak Integration
**Quantification:** Area under curve (AUC)
**Normalization:** Internal standards
**Output:** Feature matrix (samples × metabolites)

---

## Quality Control (QC) Strategy

### QC Samples
**Types:**
| Type | Purpose |
|------|---------|
| **Pooled QC** | Technical variation assessment |
| **Blank** | Background/contamination check |
| **Standard** | Absolute quantification |
| **Replicate** | Precision evaluation |

### QC Metrics

**1. RSD (Relative Standard Deviation)**
- Calculate CV% for each metabolite across QC replicates
- **Acceptance:** RSD < 20-30%
- **Action:** Remove features with high RSD

**2. Signal-to-Noise Ratio**
- Peak height / baseline noise
- **Acceptance:** SNR > 3 (ideally > 10)

**3. Missing Values**
- Monitor % missing per metabolite
- **Threshold:** Remove if > 20-30% missing
- **Imputation:** KNN, RF, or half-minimum

**4. Batch Effects**
- Visualize PCA by batch
- Statistical testing (ANOVA)
- **Correction:** Combat, SVA, or normalization

---

## METHAP QC Protocol

### Sample Preparation QC
- **Fasting verification:** 12-hour minimum
- **Collection time:** Morning (8-10 AM)
- **Processing:** Within 2 hours
- **Storage:** -80°C

### Analytical QC
- **Pooled QC injections:** Every 10 samples
- **System suitability:** Daily standard mix
- **Mass calibration:** Weekly

### Data QC Steps
1. **Visual inspection:** TIC chromatograms
2. **PCA of QCs:** Tight clustering expected
3. **RSD filtering:** Remove > 30% RSD features
4. **Outlier detection:** Hotelling's T², leverage

---

## Common Artifacts

### 1. Batch Effects
**Cause:** Instrument drift, operator differences
**Detection:** PCA clustering by batch
**Solution:**
- Combat harmonization
- Batch as covariate in models
- Randomization in acquisition order

### 2. Ion Suppression
**Cause:** Matrix effects in MS
**Detection:** Spiked recovery experiments
**Solution:** Isotope dilution, internal standards

### 3. Carryover
**Cause:** Sample-to-sample contamination
**Detection:** Blank injections after high-concentration samples
**Solution:** Wash cycles, blank monitoring

### 4. Drift
**Cause:** Gradual instrument changes
**Detection:** Trend in QC metabolite levels
**Solution:** QC-RSC correction, LOESS normalization

---

## Software Workflow

### XCMS Pipeline (R)
```r
# 1. Read data
raw_data <- readMSData(files, mode = "onDisk")

# 2. Peak detection
cwp <- CentWaveParam(ppm = 25, peakwidth = c(20, 50))
xdata <- findChromPeaks(raw_data, param = cwp)

# 3. Alignment
xdata <- adjustRtime(xdata, param = ObiwarpParam())

# 4. Correspondence
xdata <- groupChromPeaks(xdata, param = PeakDensityParam())

# 5. Fill missing
xdata <- fillChromPeaks(xdata, param = FillChromPeaksParam())
```

### Output
**Feature matrix:**
- Rows: Samples (n=220)
- Columns: Metabolites (m=100-500)
- Values: Peak intensities (area)

---

## Acceptance Criteria Summary

| Parameter | Acceptance | Action if Failed |
|-----------|------------|------------------|
| **QC RSD** | < 30% | Remove metabolite |
| **Missing values** | < 20% | Impute or remove |
| **SNR** | > 3 | Exclude peak |
| **Batch effect** | p > 0.05 | Apply correction |
| **Outliers** | < 5% of samples | Investigate/remove |

---

## Related

- [[Normalization_Scaling_Metabolomics_Data_Z-001-1157]]
- [[Pathway_Analysis_Network_Metabolomics_Z-001-1158]]
- [[XCMS_Metabolomics_Pipeline_Z-001-XXXX]]

---

*Source: [[LitNote_Metabolomics_Data_Processing_L-001-0619]] | 2026-03-09*

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
