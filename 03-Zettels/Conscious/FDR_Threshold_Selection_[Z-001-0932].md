---
uid: Z-001-0932
type: zettel
title: FDR 0.1 vs 0.05 Selection Framework
aliases: [Z-001-0932, Z-001-0525-deprecated, FDR Threshold Selection, Statistical Significance Threshold]
domain: 001
domain-name: Research Methods
tags: [zettel, statistics, fdr, study-design, exploratory, confirmatory, decision-framework]
parent-moc: [[MOC-Research-Methods]]
source: "[[LitNote_FDR_Multiple_Testing_Correction_L-001-0515]]"
confidence: high
created: 2026-03-03
updated: 2026-03-05
source-litnote: Synthesized from clinical practice
---

# FDR 0.1 vs 0.05 Selection Framework

## Core Concept

The choice between FDR thresholds reflects a **fundamental trade-off** between sensitivity (capturing true signals) and specificity (avoiding false discoveries). The appropriate threshold depends on study phase, clinical stakes, and validation plans.

---

## The Thresholds Compared

| Dimension | FDR = 0.05 | FDR = 0.1 |
|-----------|------------|-----------|
| **False positive tolerance** | 5% of "significant" findings | 10% of "significant" findings |
| **Sensitivity** | Lower (more false negatives) | Higher (fewer false negatives) |
| **Specificity** | Higher | Lower |
| **When to use** | Confirmatory, clinical decisions | Exploratory, discovery phase |

---

## Decision Framework

### Choose FDR = 0.1 When:

✅ **Exploratory [[KEYWORD-Biomarker|biomarker]] discovery**
- Initial screening for candidate markers
- Hypothesis-generating research
- Planning validation in follow-up studies

✅ **High-dimensional omics with validation planned**
- [[KEYWORD-Metabolomics|metabolomics]], genomics, proteomics screens
- Clear pathway to independent validation
- Cost of false negatives > cost of false positives

✅ **Limited sample availability**
- Pilot studies
- Rare disease research
- Proof-of-concept investigations

✅ **Strong biological priors**
- Expected effect sizes are large
- Mechanistic rationale supports findings
- Prior evidence from related studies

### Choose FDR = 0.05 (or Stricter) When:

✅ **Confirmatory studies**
- Testing pre-specified hypotheses
- Replication attempts
- Final validation before clinical use

✅ **Clinical diagnostic markers**
- Patient management decisions depend on results
- Regulatory pathway consideration
- High stakes for false positives

✅ **Publication of definitive findings**
- Claims of "significant" clinical associations
- Recommendations for practice change
- Public health implications

---

## Field Standards in Metabolomics

### Current Practice (2024)

| Study Type | Common FDR | Rationale |
|------------|------------|-----------|
| Discovery metabolomics | 0.1 | Maximize biomarker candidates |
| Targeted validation | 0.05 | Stringent confirmation |
| Clinical diagnostics | 0.05 or 0.01 | Patient safety priority |
| Multi-omics integration | 0.05-0.1 | Context-dependent |

### Controversies

**Debate:** Is FDR = 0.1 too lenient for publication?

- **Proponents:** Necessary for discovery; validation separates true from false signals
- **Critics:** Inflates "significant" findings literature; many "discoveries" never replicate

**Resolution:** Transparency about study phase and validation plans

---

## The Gastric Cancer Case Study

### Study Parameters
- 3,000 metabolites measured
- FDR = 0.1 applied
- 63 "significant" metabolites identified

### Interpretation at FDR = 0.1
- ~6 metabolites expected false positives
- 57+ potentially true signals
- **Requirement:** Subsequent validation in independent cohort

### Counterfactual at FDR = 0.05
- Fewer metabolites would pass threshold
- Higher confidence in each finding
- Risk of missing true [[KEYWORD-Biomarker|biomarkers]] (false negatives)

### Assessment
**Appropriate use** — exploratory study with validation mentioned (though sample size issues remain separate concern)

---

## Transparency Requirements

### Every Study Must Report:

1. **FDR threshold selected** — explicit statement
2. **Rationale for choice** — why 0.1 vs 0.05
3. **Expected false positive rate** — e.g., "expect ~6 false positives"
4. **Study phase designation** — exploratory vs confirmatory
5. **Validation plans** — independent cohort? clinical testing?

### Example Language

> "We applied Benjamini-Hochberg FDR correction with Q = 0.1, appropriate for this exploratory biomarker discovery study. At this threshold, we expect approximately 10% of reported significant metabolites (6 of 63) to be false positives. These candidate biomarkers require validation in independent cohorts before clinical consideration."

---

## Related Zettels

- [[Benjamini_Hochberg_Procedure_[Z-001-0931]]] — Benjamini-Hochberg Procedure Mechanics
- [[Exploratory_vs_Confirmatory_Research_Standards_[Z-001-0526]]] — Exploratory vs Confirmatory Research Standards
- [[Biomarker_Validation_Requirements_[Z-001-0528]]] — Validation Requirements for Biomarker Translation
- [[Underpowered_Study_Consequences_[Z-001-0929]]] — Underpowered Study Consequences
- [[LitNote_FDR_Multiple_Testing_Correction_L-001-0515]] — False Discovery Rate and Multiple Testing Correction

---

## Key Principle

> "The FDR threshold is not just a statistical choice — it is a **research philosophy statement** about the balance between discovery and certainty."

---

*Created: 2026-03-03 | Updated: 2026-03-05 | Status: Conscious | Domain: 001*

## RELATED FILES
- [[Biomarkers/Liver_Function_[B-009-0001]|Biomarker Family Guide]]
- [[MOC-Biomarkers|Biomarkers MOC]]

