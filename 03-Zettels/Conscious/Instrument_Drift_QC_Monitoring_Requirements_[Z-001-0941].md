---
uid: Z-001-0941
type: zettel
title: Instrument Drift and QC Monitoring Requirements in Mass Spectrometry
aliases: [Z-001-0941]
domain: 001
tags: [zettel, instrument-drift, qc-monitoring, mass-spectrometry, metabolomics, quality-control, internal-standards, sensitivity, conscious]
parent-moc: 
status: conscious
source-litnote: Synthesized from clinical practice
---

# Instrument Drift and QC Monitoring Requirements in Mass Spectrometry

## The Problem
Mass spectrometers are **not stable** over time. Sensitivity, resolution, and mass accuracy drift during runs, across days, and between maintenance events. Without monitoring, drift appears as false biological signals.

## Types of Instrument Drift

### 1. Sensitivity Drift
**Manifestation:** Peak intensities decrease (or occasionally increase) over time

**Causes:**
- Source contamination buildup
- Column degradation
- Electrospray tip wear
- Vacuum changes

**Impact:** Metabolites measured later in run appear "lower"

### 2. Retention Time Drift
**Manifestation:** Peaks elute earlier or later than expected

**Causes:**
- Column temperature fluctuations
- Mobile phase composition changes
- Column chemistry degradation

**Impact:** Misidentification, integration errors

### 3. Mass Accuracy Drift
**Manifestation:** m/z values shift from theoretical masses

**Causes:**
- Calibration drift
- Temperature effects on analyzer
- Voltage instabilities

**Impact:** Wrong metabolite assignments

## QC Monitoring Protocol

### Pooled QC Samples
> Monitor instrument performance with pooled QC samples

**Procedure:**
1. Create representative pool from all study samples
2. Inject QC every 10-20 study samples
3. Monitor QC metabolite intensities over time
4. Acceptable drift: < 20% CV across run

**Action Thresholds:**
| Drift Level | Action |
|-------------|--------|
| < 10% | Acceptable, continue |
| 10-20% | Monitor closely, note in methods |
| > 20% | Stop run, troubleshoot, restart |

### Internal Standards (IS)
**Required:** Deuterated or stable isotope-labeled compounds spiked into every sample

**Purpose:**
- Normalize for extraction efficiency
- Correct for instrument sensitivity changes
- Track retention time shifts

**Best Practice:**
- 5-10 IS compounds covering different classes
- Distribute across chromatogram
- Monitor IS recovery (should be 80-120%)

## Correction Strategies

### 1. QC-Based LOESS Normalization
**When:** Gradual drift over run
**Method:** Fit LOESS curve to QC metabolite levels, adjust all samples
**Assumption:** Drift affects all samples similarly

### 2. Internal Standard Ratio
**When:** Sensitivity changes
**Method:** Ratio analyte to structurally similar IS
**Formula:** Corrected = Raw / IS

### 3. Batch Correction
**When:** Step changes between runs/days
**Method:** ComBat or similar adjusting for run date
**Requires:** Randomized sample distribution

## Red Flags in Publications

### No QC Description
- No mention of QC samples
- No internal standards described
- No drift correction mentioned
- **Conclusion:** Data quality unknown, likely uncorrected drift

### Suspicious Patterns
- All metabolites decrease/increase in same direction
- Correlation with injection order
- Step changes between processing dates

## Minimum Reporting Standards

### Methods Section Must Include:
1. **QC sample preparation:** How pool created
2. **QC injection frequency:** Every N samples
3. **Internal standards:** Which compounds, concentrations
4. **Drift assessment:** How monitored
5. **Correction method:** LOESS, IS ratio, or other

### Results Should Show:
- QC metabolite trend plot (intensity vs. injection order)
- IS recovery percentages
- CV for QC samples (< 20% acceptable)

## Impact on  Discovery

### Uncorrected Drift Consequences
- 20-50% of "significant" findings = drift artifacts
- Metabolites measured early in run vs. late show false differences
- Batch effects masquerade as disease effects
- Replication failure

### Proper QC Enables:
- Detection of true biological differences
- Reproducible results across runs
- Valid clinical translation
- Regulatory approval (if diagnostic)

## Related Zettels
- _[Z-001-0939].md]] — Between-run variation
- [[Sample_Preparation_Variability_Control_[Z-001-0940].md]] — Pre-analytical variation

## Source
[[LitNote_Technical_Confounders_Metabolomics_L-001-0520]]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- |Biomarker Family Guide]]
- 

