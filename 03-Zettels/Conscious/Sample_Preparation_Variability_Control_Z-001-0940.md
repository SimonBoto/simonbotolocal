---
uid: Z-001-0940
type: zettel
title: Sample Preparation Variability Control in Metabolomics
aliases: [Z-001-0940]
domain: 001
tags: [zettel, sample-preparation, preanalytical, variability, metabolomics, quality-control, plasma, serum, storage, freeze-thaw, conscious]
parent-moc: 
status: conscious
---

# Sample Preparation Variability Control in 

## The Problem
> "Visual consistency doesn't necessarily confirm statistical significance or biological relevance"

Sample preparation introduces **greater variation than biological differences** if not standardized. Pre-analytical variables often exceed disease-related metabolic changes.

## Major Sources of Variability

### 1. Collection Variables
| Factor | Impact | Standardization |
|--------|--------|-----------------|
| **Fasting status** | Lipid/glucose metabolites vary | 8-12 hour fast required |
| **Time of day** | Cortisol,  circadian | Collect same time ±2 hours |
| **Tourniquet time** | Lactic acid, potassium increase | < 1 minute |
| **Tube type** | Serum vs plasma differences | Standardize one type |

### 2. Processing Variables
**Critical within 2 hours of collection:**
- Centrifugation speed/time
- Delay before centrifugation (glycolysis continues)
- Temperature during processing
- Hemolysis (ruptured RBCs contaminate plasma)

### 3. Storage Variables
**Freeze-thaw cycles destroy metabolites:**
| Cycles | Effect |
|--------|--------|
| 1 cycle | 5-10% loss of labile metabolites |
| 2-3 cycles | 20-30% loss |
| >3 cycles | Unreliable for most metabolites |

**Storage temperature:**
- -80°C: Stable for years
- -20°C: Gradual degradation over months
- 4°C: Analyze within 24 hours

## Standard Operating Procedures (SOPs)

### Collection Protocol
```
1. Fasting confirmation (8-12 hours)
2. Morning collection (8-10 AM optimal)
3. Standardized tube (EDTA plasma or serum)
4. Immediate processing (< 30 minutes)
5. Aliquot before freezing (avoid refreezing)
```

### Processing Protocol
```
1. Centrifuge 2000g × 10 minutes at 4°C
2. Aliquot plasma into cryovials (single-use)
3. Flash freeze in liquid nitrogen
4. Store at -80°C
5. Document processing time
```

## Quality Control Measures

### Pool Samples for QC
- Create representative pool from all study samples
- Use as extraction control
- Monitor pool CV across batches (should be <15%)

### Internal Standards
- Add deuterated internal standards to each sample
- Monitor standard recovery
- < 20% CV across samples acceptable

### Hemolysis Index
- Measure hemoglobin in plasma/serum
- Hemolyzed samples (pink/red) = exclude or flag
- Hemolysis affects 20-30% of metabolites

## Impact on Study Outcomes

### Without Standardization
- 40-60% of variance = pre-analytical
- Biological signal drowned by technical noise
- False positives from collection differences
- Failed replication

### With Standardization
- < 10% variance = pre-analytical
- Biological differences detectable
- Replicable across sites
- Valid  translation

## Special Considerations

### Multi-Site Studies
- Ship samples on dry ice to central processing lab
- Train all sites on identical SOP
- Monitor site-specific batch effects
- Site indicator in statistical model

### Longitudinal Studies
- Freeze all samples from one subject together
- Process all time points simultaneously
- Randomize processing order
- Account for storage duration in analysis

## Red Flags in Publications
- No mention of fasting status
- No processing time documentation
- Storage at -20°C (not -80°C)
- Multiple freeze-thaw cycles
- Serum and plasma mixed

## Related Zettels
- [[Batch_Effects_Detection_Correction_Metabolomics_Z-001-0939]] — Analytical variation
- [[Instrument_Drift_QC_Monitoring_Requirements_Z-001-0941]] — Instrument variation

## Source
[[LitNote_Technical_Confounders_Metabolomics_L-001-0520]]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06


## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]]
