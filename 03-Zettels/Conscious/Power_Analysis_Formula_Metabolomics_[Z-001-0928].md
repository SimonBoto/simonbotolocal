---
uid: Z-001-0928
type: zettel
title: Power Analysis Formula and Sample Size Calculation for Metabolomics
aliases: [Z-001-0928, Z-001-0521-deprecated, Sample Size Formula, Cohen's f, ANOVA Power]
domain: 001
tags: [zettel, power-analysis, sample-size, cohens-f, anova, formula, statistics]
parent-moc: [[MOC-Research-Methods]]
status: conscious
source: "[[LitNote_Power_Analysis_Metabolomics_L-001-0514]]"
extraction-date: 2026-03-02
updated: 2026-03-05
---

# Power Analysis Formula and Sample Size Calculation for Metabolomics

**Core Formula:** Sample size depends on effect size, desired power, significance level, and number of groups.

## Cohen's f Effect Size

**Definition:** Standardized measure of variance explained by group differences

**Formula:**
```
f = √(η² / (1 - η²))

Where η² = variance between groups / total variance
```

**Typical Values in Metabolomics:**
| Effect Size | f Value | Variance Explained | Interpretation |
|-------------|---------|-------------------|----------------|
| Small | 0.10 | 1% | Subtle metabolic shifts |
| Medium | 0.25 | 6% | Moderate biomarker changes |
| Large | 0.40 | 14% | Strong metabolic signatures |

**Biological Reality:** Most metabolomics effects are small (f=0.1-0.2) due to metabolic complexity and individual variation.

## Sample Size Formula (ANOVA)

**Per-group sample size:**
```
n = (Z₁₋β + Z₁₋α/₂)² × (k - 1) / f²
```

**Variables:**
| Symbol | Meaning | Typical Value |
|--------|---------|---------------|
| Z₁₋β | Power Z-score | 0.84 (80% power) or 1.28 (90% power) |
| Z₁₋α/₂ | Significance Z-score | 1.96 (α=0.05, two-tailed) |
| k | Number of groups | 2, 3, 4+ |
| f | Effect size | 0.1, 0.25, 0.4 |

## Worked Examples

### Example 1: Small Effect, 80% Power

**Parameters:**
- Effect size: f = 0.1
- Groups: k = 4
- α = 0.05
- Power = 0.80

**Calculation:**
```
n = (0.84 + 1.96)² × (4 - 1) / (0.1)²
n = (2.8)² × 3 / 0.01
n = 7.84 × 3 / 0.01
n = 2,355 per group
```

**Total subjects needed:** 2,355 × 4 = **9,420**

### Example 2: Medium Effect, 80% Power

**Parameters:**
- Effect size: f = 0.25
- Groups: k = 4
- α = 0.05
- Power = 0.80

**Calculation:**
```
n = (0.84 + 1.96)² × 3 / (0.25)²
n = 7.84 × 3 / 0.0625
n = 377 per group
```

**Total subjects needed:** 377 × 4 = **1,508**

### Example 3: Large Effect, 90% Power

**Parameters:**
- Effect size: f = 0.4
- Groups: k = 2 (case-control)
- α = 0.05
- Power = 0.90

**Calculation:**
```
n = (1.28 + 1.96)² × (2 - 1) / (0.4)²
n = (3.24)² × 1 / 0.16
n = 10.5 / 0.16
n = 66 per group
```

**Total subjects needed:** 66 × 2 = **132**

## Practical Implications

**For Untargeted Metabolomics:**
- Expect small effects (f=0.1-0.15)
- Need 500-2000+ subjects per group
- Often prohibitive for single-center studies

**For Targeted Validation:**
- Can focus on larger effects (f=0.25+)
- Need 50-150 subjects per group
- More feasible for PhD projects

## Quick Reference Table

| Effect Size | Groups | Power | n/group | Total n |
|-------------|--------|-------|---------|---------|
| Small (0.1) | 2 | 80% | 786 | 1,572 |
| Small (0.1) | 4 | 80% | 2,355 | 9,420 |
| Medium (0.25) | 2 | 80% | 126 | 252 |
| Medium (0.25) | 4 | 80% | 377 | 1,508 |
| Large (0.4) | 2 | 80% | 50 | 100 |
| Large (0.4) | 4 | 80% | 147 | 588 |

**Rule of Thumb:** For metabolomics with multiple groups, plan for **minimum 100-200 per group** for medium effects, **500+** for small effects.

---

*See also: [[Underpowered_Study_Consequences_[Z-001-0929]]]*
