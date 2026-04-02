---
uid: Z-001-1001
type: zettel
title: GRADE Approach — Rating Certainty of Evidence in Systematic Reviews
aliases: [Z-001-1001]
domain: 001
tags: [zettel, grade, certainty-of-evidence, systematic-review, recommendations, confidence, downgrade, upgrade, conscious]
parent-moc: 
extraction-date: 2026-03-07
source-litnote: [[LitNote_Meta_Analysis_Methodology_L-001-0580]
status: conscious
---

# GRADE Approach — Rating Certainty of Evidence in Systematic Reviews

## Overview

GRADE (Grading of Recommendations Assessment, Development and Evaluation) provides a systematic approach to rating the certainty of evidence and strength of recommendations in systematic reviews and guidelines.

## Framework

### Two Components

**1. Certainty of Evidence:**
- Confidence in effect estimates
- Per outcome across studies
- Four levels: High, Moderate, Low, Very Low

**2. Strength of Recommendation:**
- Balance of benefits and harms
- Values and preferences
- Resource use
- Two levels: Strong, Conditional

## Rating Certainty of Evidence

### Starting Point

**Study Design:**
- **Randomized trials:** Start HIGH
- **Observational studies:** Start LOW

### Downgrading Factors

**1. Risk of Bias (-1 or -2 levels):**
- Serious limitations in study design/conduct
- High risk of bias in majority of studies
- Lack of allocation concealment, blinding
- High attrition, selective reporting

**Assessment:**
- Review risk of bias for all studies
- Determine proportion at high risk
- Consider direction of bias

**2. Inconsistency (-1 or -2 levels):**
- Unexplained heterogeneity
- Wide variation in effect estimates
- I² > 50-75%
- Non-overlapping confidence intervals

**Assessment:**
- Statistical heterogeneity (I², τ²)
-  heterogeneity
- Subgroup analyses

**3. Indirectness (-1 or -2 levels):**
- Differences from review question:
  - Population (P)
  - Intervention (I)
  - Comparison (C)
  - Outcome (O)

**Examples:**
- Different age group
- Different dose/duration
- Different outcome measure
- Different setting

**4. Imprecision (-1 or -2 levels):**
- Wide confidence intervals
- Few events or participants
- Sample size < OIS (Optimal Information Size)
- Confidence interval includes clinically important benefit and no benefit

**OIS Calculation:**
- Based on relative risk reduction
- Baseline risk
- Power (80-90%)
- Alpha (0.05)

**5. Publication Bias (-1 or -2 levels):**
- Funnel plot asymmetry
- Egger's test significant
- Industry funding
- Small study effects

**Assessment:**
- Funnel plot visual inspection
- Statistical tests
- Study registry searches

### Upgrading Factors (Observational Studies Only)

**1. Large Magnitude of Effect (+1 or +2):**
- RR > 2 or RR < 0.5 (strong)
- RR > 5 or RR < 0.2 (very strong)
- No plausible confounding

**2. Dose-Response Gradient (+1):**
- Clear trend with increasing exposure
- Monotonic relationship

**3. All Plausible Confounders Would Reduce Effect (+1):**
- Residual confounding would bias toward null
- Observed effect likely underestimates true effect

**Example:**
- Smoking and lung 
- Socioeconomic confounders would reduce observed effect

## Certainty Ratings

| Level | Interpretation | Implication |
|-------|----------------|-------------|
| **High** | Very confident effect estimate is close to true effect | Further  unlikely to change confidence |
| **Moderate** | Moderately confident; true effect likely close to estimate | Further research may have important impact |
| **Low** | Limited confidence; true effect may be substantially different | Further research likely to have important impact |
| **Very Low** | Very little confidence; true effect likely substantially different | Any estimate of effect is uncertain |

## Evidence Profiles

### Structure

**Per Outcome:**
1. Number of studies (participants)
2. Study design
3. Risk of bias
4. Inconsistency
5. Indirectness
6. Imprecision
7. Publication bias
8. Overall certainty
9. Effect estimate
10. Importance

### Example

| Outcome | Studies (n) | Risk of Bias | Inconsistency | Indirectness | Imprecision | Publication Bias | Certainty |
|---------|-------------|--------------|---------------|--------------|-------------|------------------|-----------|
| Mortality | 5 RCTs (2000) | Not serious | Serious (-1) | Not serious | Not serious | Undetected | ⊕⊕⊕◯ MODERATE |
| HbA1c | 10 RCTs (3500) | Serious (-1) | Not serious | Not serious | Not serious | Strong suspicion (-1) | ⊕⊕◯◯ LOW |

## Summary of Findings Tables

### Purpose

**User-Friendly Presentation:**
- Key outcomes
- Effect estimates
- Certainty ratings
- Plain language summary

### Elements

**For Each Outcome:**
1. Outcome name
2. Number of participants (studies)
3. Relative effect (95% CI)
4. Anticipated absolute effects
5. Certainty
6. Comments

### Creating

**Software:**
- GRADEpro GDT (free online)
- Template generation
- Export to guidelines/reviews

## From Evidence to Recommendations

### Factors Influencing Recommendations

**1. Balance of Benefits and Harms:**
- Net benefit clear → Strong recommendation
- Net benefit uncertain → Conditional recommendation

**2. Certainty of Evidence:**
- High certainty → Can make strong recommendation
- Low certainty → Usually conditional

**3. Values and Preferences:**
- Similar across patients → Strong
- Variable → Conditional

**4. Resource Use:**
- Cost-effective → Easier to recommend
- Expensive → Conditional recommendation

### Recommendation Strength

**Strong ("We recommend..."):**
- Most patients would want intervention
- Only small proportion would not
- Follow unless compelling reason not to

**Conditional ("We suggest..."):**
- Majority would want, but many would not
- Shared decision-making
- Individualize based on preferences

## GRADE in Practice

### For Systematic Reviews

**Role:**
- Rate certainty for each outcome
- Present in summary of findings
- Inform conclusions
- Guide research priorities

**Not For:**
- Making recommendations (unless guideline)
- Individual patient decisions

### For Clinical Guidelines

**Role:**
- Systematic approach to recommendations
- Transparent process
- Explicit judgments
- Stakeholder input

## Criticisms and Limitations

**Subjectivity:**
- Judgment-based
- Different raters may disagree
- Requires calibration

**Focus on RCTs:**
- May undervalue observational evidence
- Some questions RCTs infeasible

**Binary Ratings:**
- Four categories may be coarse
- Continuous certainty conceptually

## Alternatives and Complements

**Other Systems:**
- Oxford CEBM Levels of Evidence
- USPSTF approach
- SIGN (Scottish Intercollegiate Guidelines Network)

**Complementary Tools:**
- AMSTAR 2 (review quality)
- ROBIS (review bias)

## Best Practices

**1. Pre-specify:**
- Plan GRADE assessment in protocol
- Define important outcomes
- Plan subgroup analyses

**2. Independent Assessment:**
- Two reviewers rate certainty
- Discuss discrepancies
- Document rationale

**3. Transparent Reporting:**
- Evidence profiles
- Footnotes explaining judgments
- Summary of findings tables

**4. Interpret Carefully:**
- Not just about statistical significance
- Clinical importance
- Applicability to population

## Summary

**Key Points:**
1. Start with study design (RCTs = HIGH, observational = LOW)
2. Consider 5 downgrade factors (RoB, inconsistency, indirectness, imprecision, publication bias)
3. Upgrade observational studies for large effects, dose-response, or bias toward null
4. Make judgments explicit
5. Present in evidence profiles and summary of findings tables
6. Separate certainty of evidence from strength of recommendations

**Clinical Pearl:** GRADE moves beyond "levels of evidence" to explicit, transparent judgments about certainty. The goal is informed decision-making, not just labeling.

---

**Related:** [[Meta_Analysis_Statistics_Z-001-1000] | [[Quality_Assessment_Risk_of_Bias_Z-001-0999] | [[PRISMA_Reporting_Guidelines_Z-001-1002]

**Source:** CGPT-0621 — Publishing Meta-Analysis Guidelines


## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]
