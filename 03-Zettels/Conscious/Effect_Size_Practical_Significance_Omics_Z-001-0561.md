---
uid: Z-001-0561
type: zettel
title: Effect Size and Practical Significance in Omics
aliases: [Z-001-0561, Effect Size Reporting, Practical Significance, Omics Statistics]
domain: 001
domain-name: Research Methods
tags: [zettel, effect-size, statistics, omics, metabolomics, practical-significance, reporting-standards]
parent-moc: [[MOC-Insulin-Signaling]]
confidence: high
created: 2026-03-03
source-litnote: Synthesized from clinical practice
extraction-date: 2026-04-15
---

# Effect Size and Practical Significance in Omics
## Related Zettels from Same Source

- [[Biomarker_Validation_Pipeline_Requirements_Z-001-0560]]
- [[Exploratory_Excuse_Pitfall_Case_Study_Z-001-0559]]
- [[Exploratory_vs_Confirmatory_Definitions_Z-001-0558]]

## Source

Synthesized from clinical practice

## Related Zettels from Same Source

- [[Biomarker_Validation_Pipeline_Requirements_Z-001-0560]]
- [[Exploratory_Excuse_Pitfall_Case_Study_Z-001-0559]]
- [[Exploratory_vs_Confirmatory_Definitions_Z-001-0558]]

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

- [[Biomarker_Validation_Pipeline_Requirements_Z-001-0560]]
- [[Exploratory_Excuse_Pitfall_Case_Study_Z-001-0559]]
- [[Exploratory_vs_Confirmatory_Definitions_Z-001-0558]]

## Source

Synthesized from clinical practice

## Related Zettels from Same Source

- [[Biomarker_Validation_Pipeline_Requirements_Z-001-0560]]
- [[Exploratory_Excuse_Pitfall_Case_Study_Z-001-0559]]
- [[Exploratory_vs_Confirmatory_Definitions_Z-001-0558]]

## Core Concept

**Effect sizes provide context to statistical significance**, helping discern whether observed differences are not just statistically significant but also **practically meaningful**. In 'omics' sciences, where large datasets are common, reporting effect sizes alongside P-values is essential to avoid overestimating the importance of statistically significant results.

---

## The Problem: P-Value Only Reporting

### Why P-Values Are Insufficient
| Issue | Explanation |
|-------|-------------|
| **Sample size dependence** | Large n → trivial effects "significant" |
| **No magnitude information** | P < 0.001 doesn't tell you how big the difference is |
| **Biological irrelevance** | Statistically significant ≠ clinically important |

### Example
- **Study A:** n=10,000, difference = 0.01%, P < 0.001
- **Study B:** n=50, difference = 25%, P = 0.02

**Which is more important?** P-values alone cannot tell you.

---

## Omics-Specific Metrics vs. Effect Sizes

### VIP Scores (Variable Importance in Projection)
| Aspect | Value | Limitation |
|--------|-------|------------|
| **What** | Importance in PLS-DA model | Model-dependent |
| **Use** | Feature selection | Doesn't indicate magnitude |
| **Threshold** | VIP > 1.0 "important" | No standardization |

**Critical limitation:** VIP indicates model contribution, not standardized effect magnitude.

### Fold Changes
| Aspect | Value | Limitation |
|--------|-------|------------|
| **What** | Ratio of group means | No variability consideration |
| **Use** | Magnitude of difference | Doesn't account for within-group spread |
| **Threshold** | FC > 1.2 or 2.0 arbitrary | Sample-size dependent |

**Critical limitation:** FC = 2.0 with huge variance ≠ FC = 2.0 with tight variance.

---

## Required Effect Size Metrics

### Cohen's d (Standardized Mean Difference)
**Formula:**
```
d = (Mean₁ - Mean₂) / Pooled SD
```

| d Value | Interpretation |
|---------|----------------|
| 0.2 | Small effect |
| 0.5 | Medium effect |
| 0.8 | Large effect |

**Advantage:** Standardized, comparable across studies.

### Partial η² (Variance Explained)
**Interpretation:** Proportion of variance explained by group.

| η² Value | Interpretation |
|----------|----------------|
| 0.01 | Small effect |
| 0.06 | Medium effect |
| 0.14 | Large effect |

**Use:** ANOVA designs,  studies.

### Confidence Intervals
**Critical requirement:** Report 95% CI for all effect sizes.

| Example | Interpretation |
|---------|----------------|
| d = 0.5 [0.3, 0.7] | Precise estimate |
| d = 0.5 [-0.1, 1.1] | Highly uncertain |

---

## Complete Reporting Requirements

### Minimum Standard Table
| Metabolite | FC | VIP | P-value | Cohen's d | 95% CI |
|------------|-----|-----|---------|-----------|--------|
| DHEAS | ↓2.3 | 1.8 | <0.001 | -0.8 | [-1.2, -0.4] |
| L-TA | ↑1.9 | 1.5 | 0.003 | 0.6 | [0.2, 1.0] |

### Why Each Matters
| Metric | Answers |
|--------|---------|
| **FC** | Direction and rough magnitude |
| **VIP** | Model importance |
| **P-value** | Statistical significance |
| **Cohen's d** | Standardized effect magnitude |
| **95% CI** | Precision of estimate |

---

## The Gastric Cancer Case Study Failure

### What Was Reported
- Fold changes: FC > 1.2
- VIP scores: VIP > 1.0
- P-values: P < 0.05

### What Was Missing
❌ **Effect sizes (Cohen's d)**
❌ **Confidence intervals**
❌ **Practical significance assessment**

### Result
- "Significant" findings presented
- No sense of whether differences matter clinically
- No standardization for comparison to other studies

---

## METHAP Reporting Standards

### Required for All  Claims
```
Metabolite: [Name]
- Fold change: [X.X]
- VIP score: [X.X]
- P-value: [X.XXX]
- Effect size (Cohen's d): [X.X] [95% CI: X.X, X.X]
- Clinical relevance: [Explanation]
```

### Interpretation Guide
| d | Clinical Relevance Example |
|---|---------------------------|
| <0.2 | Likely not clinically meaningful |
| 0.2-0.5 | Small, may be relevant |
| 0.5-0.8 | Moderate, likely relevant |
| >0.8 | Large, clearly relevant |

---

## Related Zettels

- [[Exploratory_vs_Confirmatory_Definitions_Z-001-0558]] — Study design phases
- [[Exploratory_Excuse_Pitfall_Case_Study_Z-001-0559]] — Reporting failures
- [[Power_Analysis_Formula_Metabolomics_Z-001-0928]] — Sample size and power
- [[Sample_Size_Strategies_PhD_Z-001-0930]] — Effect size in power calculations

---

## Key Principle

> "In omics, **P-values are abundant but effect sizes are scarce**. A metabolome-wide association study producing 500 'significant' hits with d < 0.2 is less valuable than 5 hits with d > 0.8. Report effect sizes or don't report at all."

---

*Created: 2026-03-03 | Status: Conscious | Domain: 001*
## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- /Kidney_Function_[B-008-0001]|Biomarker Family Guide]
- 


---

## Significance

source-litnote: Synthesized from clinical practice

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
