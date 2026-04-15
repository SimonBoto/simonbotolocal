---
uid: Z-001-0580I
type: zettel
title: "Fixed vs Random Effects Models"
aliases: []
  - Z-001-0580I
  - Fixed-Effects
  - Random-Effects
  - Meta-Analysis-Models
 domain: 001
tags: []
  - zettel
  - meta-analysis
  - statistical-models
parent-moc: "[[MOC-Research-Methodology]]"
source-litnote: "[[Meta-Analysis_Methodology_-_From_Search_Strategy_L-001-0580_v4.0]]"
extraction-date: 2026-04-15
status: conscious
---

# Fixed vs Random Effects Models

> **Definition:** Fixed-effects and random-effects models are two fundamental statistical approaches for combining effect estimates in meta-analysis, differing in their assumptions about the distribution of true effects across studies.

## Core Principle

> **Definition:** Fixed-effects and random-effects models are two fundamental statistical approaches for combining effect estimates in meta-analysis, differing in their assumptions about the distribution of true effects across studies.

## Fixed-Effects Model

- **Assumption:** All studies share a common true effect size
- **Appropriate when:** Little or no heterogeneity exists (I² < 25%)
- **Weighting:** Studies weighted by inverse variance of their effect estimates
- **Interpretation:** Estimate applies only to studies similar to those included

## Core Principle

> **Definition:** Fixed-effects and random-effects models are two fundamental statistical approaches for combining effect estimates in meta-analysis, differing in their assumptions about the distribution of true effects across studies.

## Random-Effects Model

- **Assumption:** True effect sizes vary across studies according to a distribution
- **Appropriate when:** Substantial heterogeneity exists (I² > 50%)
- **Weighting:** Studies weighted by inverse variance plus estimate of between-study variance (τ²)
- **Interpretation:** Estimate represents average effect across a population of similar studies

## Core Principle

> **Definition:** Fixed-effects and random-effects models are two fundamental statistical approaches for combining effect estimates in meta-analysis, differing in their assumptions about the distribution of true effects across studies.

## Key Differences

| Feature | Fixed-Effects | Random-Effects |
|---------|---------------|----------------|
| **Assumption** | Common true effect | Distribution of true effects |
| **Weighting** | Inverse variance only | Inverse variance + τ² |
| **Confidence intervals** | Narrower | Wider |
| **Heterogeneity handling** | Ignores heterogeneity | Accounts for heterogeneity |
| **When to use** | Low heterogeneity | Moderate/high heterogeneity |

## Core Principle

> **Definition:** Fixed-effects and random-effects models are two fundamental statistical approaches for combining effect estimates in meta-analysis, differing in their assumptions about the distribution of true effects across studies.

## Selection Criteria

- **Statistical tests:** I² statistic, Cochran's Q test
- **Clinical judgment:** Assessment of clinical and methodological heterogeneity
- **Sensitivity analysis:** Testing robustness of conclusions to model choice
- **Reporting:** Presenting results from both models when appropriate

## Core Principle

> **Definition:** Fixed-effects and random-effects models are two fundamental statistical approaches for combining effect estimates in meta-analysis, differing in their assumptions about the distribution of true effects across studies.

## Best Practices

- Test for heterogeneity before model selection
- Report heterogeneity statistics (I², τ², Q) regardless of model choice
- Consider random-effects as default when heterogeneity is present
- Conduct sensitivity analyses to assess model assumptions

---

## Core Principle

> **Definition:** Fixed-effects and random-effects models are two fundamental statistical approaches for combining effect estimates in meta-analysis, differing in their assumptions about the distribution of true effects across studies.

## Significance

- **Clinical judgment:** Assessment of clinical and methodological heterogeneity

## Related Concepts

- [[Heterogeneity_Statistics_Z-001-0580H]]
- [[Forest_Plot_Interpretation_Z-001-0580J]]
- [[Statistical_Analysis_Methodology_Z-001-0580E]]