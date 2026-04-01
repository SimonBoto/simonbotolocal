---
uid: Z-001-0524
type: zettel
title: Benjamini-Hochberg Procedure Mechanics
aliases: [Z-001-0524, BH Procedure, FDR Control Method]
domain: 001
domain-name: Research Methods
tags: [zettel, statistics, fdr, benjamini-hochberg, multiple-testing, p-value, method]
parent-moc: [[MOC-Research-Methods]]
source: "[[LitNote_FDR_Multiple_Testing_Correction_L-001-0515]]"
confidence: high
created: 2026-03-03
---

# Benjamini-Hochberg Procedure Mechanics

## Core Concept

The Benjamini-Hochberg (BH) procedure controls the **False Discovery Rate (FDR)** — the expected proportion of false positives among all rejected null hypotheses. It is less conservative than Bonferroni correction and is the standard method for multiple testing correction in high-dimensional omics.

---

## The Algorithm

### Step-by-Step Procedure

**Given:**
- *m* = total number of hypothesis tests
- *Q* = desired FDR threshold (typically 0.05 or 0.1)

**Steps:**

1. **Rank p-values:** Sort all p-values from smallest to largest
   - p₁ ≤ p₂ ≤ p₃ ≤ ... ≤ pₘ

2. **Find cutoff:** Identify largest rank *i* satisfying:
   
   **pᵢ ≤ (i/m) × Q**

3. **Reject nulls:** Reject all H₀ for ranks 1 through *i*

---

## Worked Example

### Scenario: 10 metabolites tested, Q = 0.1

| Rank (i) | p-value | Threshold (i/m)×Q | Reject? |
|----------|---------|-------------------|---------|
| 1 | 0.001 | 0.01 | ✅ Yes |
| 2 | 0.008 | 0.02 | ✅ Yes |
| 3 | 0.015 | 0.03 | ✅ Yes |
| 4 | 0.042 | 0.04 | ✅ Yes |
| 5 | 0.067 | 0.05 | ✅ Yes |
| 6 | 0.089 | 0.06 | ✅ Yes |
| 7 | 0.112 | 0.07 | ❌ No — stop here |
| 8 | 0.134 | 0.08 | — |
| 9 | 0.198 | 0.09 | — |
| 10 | 0.245 | 0.10 | — |

**Result:** 6 significant findings, expecting ~0.6 false positives (10% of 6)

---

## Mathematical Intuition

### Why It Works

The BH procedure leverages the **rank-dependent threshold**:
- Smaller p-values (stronger evidence) get more lenient thresholds
- Larger p-values (weaker evidence) must meet stricter criteria

This creates a **step-up** procedure that maximizes power while controlling FDR.

### Compared to Bonferroni

| Method | Threshold for significance | Expected errors |
|--------|---------------------------|-----------------|
| **Bonferroni** | p ≤ α/m | 0 false positives (FWER control) |
| **Benjamini-Hochberg** | p ≤ (i/m)×Q | Q% of rejections are false (FDR control) |

**With m = 3,000 and α = 0.05:**
- Bonferroni: p ≤ 0.0000167 (extremely strict)
- BH (Q=0.1): adaptive, often p ≤ 0.01-0.05 range

---

## Assumptions and Properties

### When BH is Valid

✅ **Independent tests** — original BH procedure  
✅ **Positive dependence** — BH procedure still valid (Benjamini & Yekutieli extension)  
✅ **High-dimensional data** — metabolomics, genomics, proteomics  

### Limitations

⚠️ **Arbitrary dependence** — may not control FDR (use BY procedure instead)  
⚠️ **Very small sample sizes** — FDR control assumes adequate power  
⚠️ **Single study interpretation** — FDR is an **expected** rate, not guaranteed proportion

---

## Implementation Notes

### R Code
```r
p_values <- c(0.001, 0.008, 0.015, 0.042, 0.067, 0.089, 
              0.112, 0.134, 0.198, 0.245)
adjusted <- p.adjust(p_values, method = "BH", n = length(p_values))
significant <- adjusted < 0.1
```

### Python Code
```python
from statsmodels.stats.multitest import multipletests
p_values = [0.001, 0.008, 0.015, 0.042, 0.067, 0.089, 
            0.112, 0.134, 0.198, 0.245]
rejected, corrected, _, _ = multipletests(p_values, alpha=0.1, method='fdr_bh')
```

---

## Related Zettels

- [[FDR_Threshold_Selection_[Z-001-0932]]] — FDR 0.1 vs 0.05 Selection Framework
- [[Multiple_Testing_Burden_High_Dimensional_Data_[Z-001-0934]]] — Multiple Testing Burden in High-Dimensional Data
- [[Power_Analysis_Formula_Metabolomics_[Z-001-0928]]] — Power Analysis Formula
- [[LitNote_FDR_Multiple_Testing_Correction_L-001-0515]] — False Discovery Rate and Multiple Testing Correction

---

## References

- Benjamini, Y., & Hochberg, Y. (1995). Controlling the false discovery rate: a practical and powerful approach to multiple testing. *Journal of the Royal Statistical Society: Series B*, 57(1), 289-300.
- Benjamini, Y., & Yekutieli, D. (2001). The control of the false discovery rate in multiple testing under dependency. *Annals of Statistics*, 29(4), 1165-1188.
- Source: [[LitNote_FDR_Multiple_Testing_Correction_L-001-0515]]

---

*Created: 2026-03-03 | Status: Conscious | Domain: 001*

## RELATED FILES
- [[MOC-INDEX|Master Index]]
