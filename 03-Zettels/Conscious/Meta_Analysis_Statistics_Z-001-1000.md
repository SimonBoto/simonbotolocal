---uid: Z-001-1000
type: zettel
title: Meta-Analysis Statistics — Effect Sizes, Heterogeneity, and Forest Plots
aliases: '[Z-001-1000]'
domain: 1
tags:
- '""[zettel""'
- '""meta-analysis""'
- '""statistics""'
- '""effect-size""'
- '""heterogeneity""'
- '""i2""'
- '""forest-plot""'
- '""fixed-effect""'
- '""random-effects""'
- '""conscious]""'
parent-moc: '"[[MOC-Insulin-Signaling]]"'
extraction-date: '2026-03-07'
source-litnote: '[[LitNote_Meta_Analysis_Methodology_L-001-0580]'
status: conscious
---

source-litnote: "[[CGPT_0621_Publishing_Meta-Analysis_Guidelines_L-001-0716]]"
# Meta-Analysis Statistics — Effect Sizes, Heterogeneity, and Forest Plots
## Source

[[LitNote_Meta_Analysis_Methodology_L-001-0580]

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


## Source

[[LitNote_Meta_Analysis_Methodology_L-001-0580]

## Overview

Meta-analysis statistically combines results from multiple studies to obtain a pooled effect estimate. Understanding the statistical methods is essential for valid interpretation and reporting.

## Effect Sizes

### Types by Outcome

**Continuous Outcomes:**

**Mean Difference (MD):**
- Same measurement scale across studies
- Natural interpretation (e.g., mmHg blood pressure)
- Formula: Mean1 - Mean2

**Standardized Mean Difference (SMD):**
- Different scales across studies
- Expressed in standard deviation units
- Cohen's d: (Mean1 - Mean2) / SD_pooled
- Hedges' g: Adjusted for small sample bias
- Interpretation:
  - 0.2: Small effect
  - 0.5: Medium effect
  - 0.8: Large effect

**Dichotomous Outcomes:**

**Risk Ratio (RR):**
- Relative effect
- (Events1/n1) / (Events2/n2)
- Preferred when event rate matters

**Odds Ratio (OR):**
- Common in case-control studies
- (Events1/Non-events1) / (Events2/Non-events2)
- Approximates RR when events rare

**Risk Difference (RD):**
- Absolute effect
- Events1/n1 - Events2/n2
- Useful for number needed to treat (NNT)

**Time-to-Event:**

**Hazard Ratio (HR):**
- Cox proportional hazards model
- Instantaneous risk over time

## Statistical Models

### Fixed-Effect Model

**Assumption:**
- One true effect size
- All variation due to sampling error
- Studies estimate same underlying effect

**When Appropriate:**
- Conceptually similar studies
- Same intervention, population, outcome
- Testing specific hypothesis

**Limitation:**
- Rarely true in practice
- Underestimates uncertainty

**Formula:**
```
Weight = 1 / Variance
Pooled effect = Σ(Weight × Effect) / Σ(Weight)
```

### Random-Effects Model

**Assumption:**
- Distribution of true effects
- Variation from sampling + true effect differences
- Studies sample from distribution of effects

**When Appropriate:**
-  or methodological diversity expected
- Generalizing to range of scenarios
- Most common in practice

**Estimation:**
- Inverse variance with between-study variance (τ²)
- τ² estimated (DerSimonian-Laird, REML, etc.)

**Formula:**
```
Weight = 1 / (Variance + τ²)
Pooled effect = Σ(Weight × Effect) / Σ(Weight)
```

**Tau (τ):**
- Standard deviation of true effects
- Absolute measure of heterogeneity

### Model Selection

**Generally Use Random-Effects:**
- More conservative
- Accounts for heterogeneity
- Better prediction interval

**Fixed-Effect Rarely Appropriate:**
- Only when truly identical studies
- Sensitivity analysis

## Heterogeneity

### Measuring Heterogeneity

**Cochran's Q:**
- Chi-squared test
- P < 0.10 suggests significant heterogeneity
- Underpowered with few studies

**I² Statistic:**
- Percentage of variation due to heterogeneity (not chance)
- Formula: I² = 100% × (Q - df) / Q
- Interpretation:
  - 0-40%: Low
  - 30-60%: Moderate
  - 50-90%: Substantial
  - 75-100%: Considerable

**Predictive Interval:**
- Where true effects of future studies likely fall
- Only with random-effects
- Wider than confidence interval

### Exploring Heterogeneity

**Subgroup Analyses:**
- Pre-specify subgroups in protocol
- Compare effects across groups
- Test for interaction (not just separate analyses)

**Meta-Regression:**
- Continuous covariates
- Study-level characteristics only
- Ecological fallacy risk
- Minimum 10 studies per covariate

**Sensitivity Analyses:**
- Exclude high-risk studies
- Different statistical models
- Different effect measures

## Forest Plots

### Structure

**Horizontal Axis:**
- Effect size scale
- Center line at null (1 for RR/OR, 0 for MD)

**Individual Studies:**
- Square: Point estimate (size ∝ weight)
- Horizontal line: 95% confidence interval
- Study identifier on left

**Summary Effect:**
- Diamond: Pooled estimate
- Center: Point estimate
- Width: 95% CI

**Right Side:**
- Numerical effect sizes
- Weights (%)

### Interpretation

**Direction:**
- Left of center: Favors intervention (if defined)
- Right of center: Favors control

**Precision:**
- Narrow CI: Precise estimate
- Wide CI: Imprecise (small study)

**Consistency:**
- Similar effect directions: Consistent
- Crossing center: Inconsistent

**Example Layout:**
```
Study            Effect (95% CI)        Weight
Smith 2020       0.80 (0.65, 0.98)      25%
Jones 2019       0.75 (0.55, 1.02)      15%
Lee 2021         0.85 (0.70, 1.03)      30%
[...]
Overall          0.81 (0.71, 0.92)      100%
                    |-------♦-------|
                    0.5   0.8   1.0
```

## Publication Bias

### Funnel Plots

**Structure:**
- X-axis: Effect size
- Y-axis: Standard error (precision)
- Asymmetric funnel shape expected

**Interpretation:**
- Symmetric: No publication bias
- Asymmetric (missing small negative studies): Possible bias

### Statistical Tests

**Egger's Test:**
- Regression of effect on precision
- P < 0.10 suggests asymmetry
- Power limited with few studies

**Begg's Test:**
- Rank correlation
- Less sensitive

**Trim and Fill:**
- Imputes missing studies
- Adjusts pooled estimate
- Assumes symmetry

### Small Study Effects

**Reasons for Asymmetry:**
- Publication bias (selective reporting)
- True heterogeneity (small studies different)
- Methodological quality (small studies poorer)
- Chance

**Interpretation:**
- Don't assume publication bias only
- Consider other explanations

## Software

### RevMan (Cochrane)

**Features:**
- Free for Cochrane reviews
- Comprehensive analysis
- Forest plots, funnel plots
- Risk of bias integration

### R (meta, metafor packages)

**Flexibility:**
- Advanced analyses
- Custom graphics
- Network meta-analysis
- Requires coding

### Stata (metan)

**Commands:**
- metan: Basic meta-analysis
- metareg: Meta-regression
- metabias: Publication bias

### Comprehensive Meta-Analysis (CMA)

**Commercial:**
- User-friendly
- Comprehensive features
- Educational version available

## Reporting

### Essential Elements

**Methods:**
- Effect measure
- Statistical model
- Software
- Heterogeneity assessment

**Results:**
- Number of studies, participants
- Pooled effect with CI
- I², τ²
- Forest plot
- Funnel plot
- Subgroup analyses

**Interpretation:**
- Clinical significance
- Certainty of evidence (GRADE)
- Limitations

### Example Results Paragraph

> "Meta-analysis of 12 RCTs (n=3,456) showed  supplementation reduced HbA1c by 0.4% (95% CI 0.2 to 0.6) compared to placebo. Heterogeneity was moderate (I² = 45%, τ² = 0.03). The effect was consistent across subgroups by baseline vitamin D level and  duration."

## Common Pitfalls

**1. Ignoring Heterogeneity:**
- Always assess and report I²
- Explore sources

**2. Multiple Testing:**
- Subgroup analyses inflate Type I error
- Pre-specify
- Interpret cautiously

**3. Sparse Data:**
- Rare events: Use Peto OR or exact methods
- Zero cells: Continuity correction or alternative methods

**4. Combining Incompatible Studies:**
- Clinical heterogeneity
- Different interventions/populations

## Summary

**Key Points:**
1. Choose appropriate effect measure for outcome type
2. Generally use random-effects model
3. Assess heterogeneity (I², Q, τ)
4. Explore heterogeneity via subgroups/meta-regression
5. Assess publication bias (funnel plot, Egger's)
6. Report comprehensively with forest plots
7. Interpret clinical significance, not just statistical

**Clinical Pearl:** Statistics don't save a poorly conducted review. Rigorous methodology at every stage produces trustworthy meta-analytic evidence.

---

**Related:** [[Quality_Assessment_Risk_of_Bias_Z-001-0999]] | [[GRADE_Certainty_of_Evidence_Z-001-1001] | [[PRISMA_Reporting_Guidelines_Z-001-1002]

**Source:** CGPT-0621 — Publishing Meta-Analysis Guidelines


## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
