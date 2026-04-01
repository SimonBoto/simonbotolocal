---
uid: L-001-0520
type: lit-note
title: Technical Confounders in Metabolomics — Batch Effects and Artifacts
authors: ChatGPT Analysis from CGPT-0328
year: 2024
journal: ChatGPT Archive
tier: 2
relevance: High — Essential for METHAP quality control and study design
status: extracted
parent-moc: 
extraction-date: 2026-03-06
domain: 001
---

# Technical Confounders in Metabolomics — Batch Effects and Artifacts

## Source
- **ChatGPT conversation:** [[CGPT_0328_Methodology_Mistakes_Identified_[CGPT-0328].md]]
- **Date:** July 14, 2024
- **Scope:** Line-by-line methodology critique
- **Focus:** Technical artifacts masquerading as biological signals

---

## Core Concepts Extracted

### 1. Batch Effects Drive False Discoveries
> "Separation in OPLS-DA alone doesn't confirm biological relevance. The separation might be due to technical or batch effects... Ensure that potential confounding factors (e.g., batch effects) are accounted for."

**Zettel extracted:** [[Batch_Effects_Detection_Correction_Metabolomics_[Z-001-0939].md]]

**Reality:**
- Samples run on different days = different peak intensities
- Different operators = different extraction efficiency
- Different reagent lots = different background noise
- Result: "Significant" metabolites reflect technical variation, not biology

---

### 2. Sample Preparation Variability
> "Visual consistency doesn't necessarily confirm statistical significance or biological relevance."

**Zettel extracted:** [[Sample_Preparation_Variability_Control_[Z-001-0940].md]]

**Sources of Variation:**
- Protein precipitation efficiency
- Extraction solvent variations
- Storage conditions (freeze-thaw cycles)
- Time between collection and processing

---

### 3. Instrument Drift and QC Requirements
**Zettel extracted:** [[Instrument_Drift_QC_Monitoring_Requirements_[Z-001-0941].md]]

**The Problem:**
- Mass spec sensitivity drifts over hours/days
- Retention times shift slightly
- Ionization efficiency changes
- Without QC monitoring, drift appears as biological signal

---

## Integration with METHAP Design

**Critical for your PhD:**
- METHAP must include QC samples every 10-20 study samples
- Pool samples across batches for batch correction
- Randomize samples across runs (don't run all controls first)
- Monitor instrument drift with internal standards

---

## Key Insight from Source

The gastric cancer study showed "clear separation" between groups, but:
- No batch correction mentioned
- No QC samples described
- Samples likely run in non-randomized order
- Conclusion: Separation likely driven by technical artifacts, not disease biology

---

**Zettels extracted:** 3 (Z-001-0939 through Z-001-0941)
**Status:** Complete
**Next:** LitNote 6 — Critical Assessment Methodology
