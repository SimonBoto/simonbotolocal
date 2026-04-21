---
uid: Z-001-0934
type: zettel
title: Multiple Testing Burden in High-Dimensional Data
aliases: [Z-001-0934, Z-001-0527-deprecated, Multiple Comparisons Problem, High-Dimensional Statistics]
domain: 001
domain-name: Research Methods
tags: [zettel, statistics, multiple-testing, high-dimensional-data, omics, metabolomics, type-1-error, false-positives]
parent-moc: [[MOC-Insulin-Signaling]]
source: "[[LitNote_FDR_Multiple_Testing_Correction_L-001-0515]"
confidence: high
created: 2026-03-03
updated: 2026-03-05
extraction-date: 2026-04-21
---

# Multiple Testing Burden in High-Dimensional Data
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


## Core Concept

The **multiple testing problem** arises when thousands of statistical tests are performed simultaneously, inflating the probability of false positives. In high-dimensional omics (, genomics, proteomics), this is unavoidable and requires rigorous correction.

---

## The Mathematical Reality

### Expected False Positives Without Correction

| Tests Performed | α = 0.05 | α = 0.01 | α = 0.001 |
|-----------------|----------|----------|-----------|
| 100 | 5 FP | 1 FP | 0.1 FP |
| 1,000 | 50 FP | 10 FP | 1 FP |
| 3,000 | 150 FP | 30 FP | 3 FP |
| 10,000 | 500 FP | 100 FP | 10 FP |
| 100,000 | 5,000 FP | 1,000 FP | 100 FP |

**FP = Expected False Positives at given α level**

### The Paradox

Without correction:
- **10,000 tests at α = 0.05** → 500 "significant" findings expected by chance alone
- er thinks: "I found 500 significant associations!"
- Reality: **All may be false positives**

---

## Omics-Specific Magnitudes

### Typical Test Volumes

| Platform | Typical Features | Tests |
|----------|-----------------|-------|
| **Metabolomics (non-targeted)** | 1,000–5,000 | ~3,000 |
| **Genomics (GWAS)** | 500,000–1M SNPs | ~1M |
| **Transcriptomics (RNA-seq)** | 20,000 genes | ~20,000 |
| **Proteomics** | 5,000–10,000 proteins | ~7,500 |
| **Multi-omics integration** | Combined panels | 100,000+ |

### The 3,000 Metabolite Example

**Study design:**
- 3,000 metabolites measured
- 4 groups compared (Control, Disease A, B, C)
- Multiple pairwise comparisons

**Naïve analysis:**
- 3,000 metabolites × multiple comparisons = **>10,000 tests**
- At α = 0.05: **500+ expected false positives**

**With FDR = 0.1 correction:**
- 63 metabolites pass threshold
- ~6 expected false positives (10%)
- Manageable validation burden

---

## Why Standard Correction Fails in Omics

### Bonferroni Problem

**Bonferroni correction:** α_adjusted = α/m

| Tests (m) | α_adjusted | Required p-value |
|-----------|------------|------------------|
| 100 | 0.0005 | 5 × 10⁻⁴ |
| 1,000 | 0.00005 | 5 × 10⁻⁵ |
| 3,000 | 0.0000167 | ~1.7 × 10⁻⁵ |
| 1,000,000 | 0.00000005 | 5 × 10⁻⁸ |

**Result:** Almost no findings survive — **false negatives overwhelm true signals**

### The FDR Solution

FDR control (Benjamini-Hochberg) provides:
- **Adaptive thresholding** — stronger signals get more lenient thresholds
- **Balance** — accepts some false positives to capture true signals
- **Interpretability** — "expect 10% of findings to be false"

---

## Practical Consequences

### Without Correction (Cherry-Picking)

❌ **Scenario:** Researcher reports "significant" metabolites from 3,000 tested
❌ **Reality:** Likely all 150 "significant" findings are false positives
❌ **Publication:** Adds noise to literature, wastes resources on validation

### With FDR Correction

✅ **Scenario:** Researcher applies FDR = 0.1, reports 63 metabolites
✅ **Reality:** ~6 false positives, ~57 true signals
✅ **Validation:** Manageable to test in independent cohort

### The Replication Crisis Connection

Many "discoveries" in omics fail to replicate because:
1. No multiple testing correction applied
2. Underpowered studies (separate issue)
3. Exploratory findings presented as confirmatory
4. Publication bias toward "significant" results

---

## Best Practices for Omics Studies

### 1. Mandatory Correction

✅ Always apply FDR or FWER correction for multiple testing  
✅ Report method and threshold explicitly  
✅ Report expected false positive rate

### 2. Pre-specification

✅ Define primary analysis before data collection  
✅ Distinguish primary vs secondary/exploratory analyses  
✅ Avoid "cherry-picking" significant findings

### 3. Validation Strategy

✅ Plan independent validation from outset  
✅ Reserve samples for validation cohort  
✅ External replication before  claims

### 4. Transparent Reporting

✅ Report total number of tests performed  
✅ Report number passing correction  
✅ Report effect sizes, not just p-values

---

## Related Zettels

- [[Benjamini_Hochberg_Procedure_Z-001-0931] — Benjamini-Hochberg Procedure Mechanics
- [[FDR_Threshold_Selection_Z-001-0932]] — FDR 0.1 vs 0.05 Selection Framework
- [[Power_Analysis_Formula_Metabolomics_Z-001-0928]] — Power Analysis Formula
- [[Underpowered_Study_Consequences_Z-001-0929]] — Underpowered Study Consequences
- [[LitNote_FDR_Multiple_Testing_Correction_L-001-0515]] — False Discovery Rate and Multiple Testing Correction

---

## Key Principle

> "In high-dimensional omics, **the multiple testing problem is not a footnote — it is the central statistical challenge**. Ignoring it guarantees false findings."

---

*Created: 2026-03-03 | Updated: 2026-03-05 | Status: Conscious | Domain: 001*


## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
