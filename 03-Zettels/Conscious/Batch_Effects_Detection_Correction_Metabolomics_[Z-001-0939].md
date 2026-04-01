---
uid: Z-001-0939
type: zettel
title: Batch Effects Detection and Correction in Metabolomics
aliases: [Z-001-0939]
domain: 001
tags: [zettel, batch-effects, technical-confounders, metabolomics, quality-control, combat, normalization, study-design, conscious]
parent-moc: [[MOC-Research-Methods]]
status: conscious
source-litnote: Synthesized from clinical practice
---

# Batch Effects Detection and Correction in Metabolomics

## Definition
**Batch effects** are technical variations introduced when samples are processed or analyzed at different times, by different operators, or with different reagent lots. They often exceed biological variation and drive false discoveries.

## Sources of Batch Effects

### Processing Batches
| Source | Impact | Detection Method |
|--------|--------|------------------|
| **Extraction day** | Different extraction efficiency | PCA color-coded by date |
| **Operator** | Handling variability | PCA by technician |
| **Reagent lot** | Different purity/activity | QC sample trends |
| **Instrument** | Mass spec calibration differences | Internal standard ratios |

### Run Order Effects
- First injections = different sensitivity than later
- Column conditioning changes over run
- Source contamination builds up
- Solution: Randomize sample order

## Detection Methods

### 1. Principal Component Analysis (PCA)
> "Ensure that potential confounding factors (e.g., batch effects) are accounted for"

**Procedure:**
- Plot PC1 vs PC2 colored by batch
- If samples cluster by batch rather than biology → batch effect present
- If disease and control samples mixed within batch → minimal batch effect

### 2. Quality Control (QC) Sample Trends
- Inject pooled QC sample every 10-20 study samples
- Monitor QC metabolite intensities over time
- Drift > 20% indicates batch/run effect

### 3. Statistical Tests
- ANOVA: Metabolite ~ Batch + Disease
- If Batch p-value < 0.05 for many metabolites → batch effect

## Correction Methods

### 1. ComBat (Most Common)
**Method:** Empirical Bayes framework adjusting for known batch variables
**Requires:** Known batch assignments
**Preserves:** Biological variation (disease differences)
**Removes:** Systematic batch differences

### 2. LOESS Normalization
**Method:** Locally weighted regression on QC sample trends
**Best for:** Gradual instrument drift over run
**Procedure:** Fit curve to QC metabolite levels, adjust all samples

### 3. Internal Standard Correction
**Method:** Ratio all metabolites to spiked internal standards
**Assumption:** Standards affected same way as analytes
**Limitation:** Can't correct for extraction variability

## Prevention Through Study Design

### Best Practices
1. **Block randomization:** Mix disease/control across all batches
2. **Balance batches:** Equal numbers per group per batch
3. **QC samples:** Pool representative sample, inject regularly
4. **Record metadata:** Date, operator, reagent lot for every sample

### Study Design Example
```
Batch 1: C1, C2, D1, D2, QC, C3, D3, QC, C4, D4...
Batch 2: D5, C5, D6, QC, C6, D7, C7, QC, D8, C8...
```
(Where C = Control, D = Disease, QC = Quality Control)

## Red Flags in Published Studies

### No Batch Correction Mentioned
- No mention of batch randomization
- No QC samples described
- No correction method stated
- **Conclusion:** Likely uncorrected batch effects driving results

### Suspicious Separation Patterns
- Controls from Batch 1 cluster separately from Controls in Batch 2
- Disease samples separate perfectly by processing date
- **Conclusion:** Technical artifacts, not biological differences

## Impact on Biomarker Discovery

### Uncorrected Batch Effects Lead To:
- 30-70% of "significant" metabolites are technical artifacts
- Failed replication in independent cohorts
- Wasted resources on follow-up studies
- False clinical utility claims

### Correction Success Metrics
- After correction, PCA shows clustering by biology, not batch
- QC samples overlay perfectly after drift correction
- Known biological markers remain significant
- Technical variation reduced to <10% of biological variation

## Related Zettels
- [[Sample_Preparation_Variability_Control_[Z-001-0940].md]] — Pre-analytical variation
- [[Instrument_Drift_QC_Monitoring_Requirements_[Z-001-0941].md]] — Instrument stability
- [[OPLS_DA_Overfitting_Risks_Small_Samples_[Z-001-0935].md]] — Model validation

## Source
[[LitNote_Technical_Confounders_Metabolomics_L-001-0520]]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06

## RELATED FILES
- [[Biomarkers/Liver_Function_[B-009-0001]|Biomarker Family Guide]]
- [[MOC-Biomarkers|Biomarkers MOC]]

