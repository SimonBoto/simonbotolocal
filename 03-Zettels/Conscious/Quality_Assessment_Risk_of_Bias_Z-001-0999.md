---
uid: Z-001-0999
type: zettel
title: Quality Assessment and Risk of Bias — Tools for Systematic Reviews
aliases: [Z-001-0999]
domain: 001
tags: [zettel, systematic-review, quality-assessment, risk-of-bias, rob-2, robins-i, cochrane, grade, newcastle-ottawa, conscious]
parent-moc: [[MOC-Insulin-Signaling]]
extraction-date: 2026-03-07
source-litnote: [[LitNote_Meta_Analysis_Methodology_L-001-0580]
status: conscious
---

# Quality Assessment and Risk of Bias — Tools for Systematic Reviews

## Overview

Quality assessment evaluates the methodological rigor of included studies. Risk of bias assessment specifically examines factors that could systematically distort study results. This is distinct from study quality and focuses on internal validity.

## Risk of Bias vs Study Quality

**Risk of Bias:**
- Internal validity
- Systematic errors in design/conduct
- Direction of effect on results

**Study Quality:**
- External validity
- Reporting completeness
- Generalizability

**Importance:**
- Risk of bias affects trustworthiness of effect estimates
- Should inform sensitivity analyses
- Incorporated into GRADE ratings

## Tools by Study Design

### Randomized Controlled Trials

#### Cochrane Risk of Bias 2 (RoB 2)

**Domains:**
1. Randomization process
2. Deviations from intended interventions
3. Missing outcome data
4. Measurement of outcome
5. Selection of reported result

**Ratings per Domain:**
- **Low risk:** No concerns
- **Some concerns:** Issues raise some doubt
- **High risk:** Issues seriously weaken confidence

**Overall Judgment:**
- Algorithm-based
- Can be low, some concerns, or high risk

**Implementation:**
- Signaling questions for each domain
- Algorithm determines rating
- Mandatory for Cochrane reviews

#### Cochrane Risk of Bias (Legacy)

**Still used for older reviews:**
- Selection bias (randomization, allocation concealment)
- Performance bias (blinding of participants/personnel)
- Detection bias (blinding of outcome assessment)
- Attrition bias (incomplete outcome data)
- Reporting bias (selective reporting)
- Other bias

**Ratings:**
- Low, unclear, high risk

### Non-Randomized Studies

#### ROBINS-I (Risk Of Bias In Non-randomized Studies of Interventions)

**Domains:**
1. Confounding
2. Selection of participants
3. Classification of interventions
4. Deviations from intended interventions
5. Missing data
6. Measurement of outcomes
7. Selection of reported result

**Ratings:**
- **Low risk:** Comparable to RCT
- **Moderate risk:** Sound for non-randomized but not comparable to RCT
- **Serious risk:** Important problems
- **Critical risk:** Too problematic to provide useful evidence

**Confounding:**
- Critical domain for observational studies
- Must pre-specify confounders
- Assess adequacy of adjustment

#### Newcastle-Ottawa Scale (NOS)

**For Cohort and Case-Control Studies:**

**Selection (4 stars):**
- Representativeness of exposed cohort
- Selection of non-exposed cohort
- Ascertainment of exposure
- Outcome not present at start

**Comparability (2 stars):**
- Control for confounders

**Outcome (3 stars):**
- Assessment of outcome
- Follow-up duration
- Adequacy of follow-up

**Interpretation:**
- 0-3: Low quality
- 4-6: Moderate quality
- 7-9: High quality

**Limitations:**
- Doesn't cover all bias domains
- Subjectivity in scoring
- Less granular than ROBINS-I

### Diagnostic Accuracy Studies

#### QUADAS-2

**Domains:**
1. Patient selection
2. Index test
3. Reference standard
4. Flow and timing

**Ratings:**
- Low, high, unclear risk

## Implementation

### Timing

**When to Assess:**
- After full-text screening
- Before or concurrent with data extraction
- Prevents bias in extraction

### Process

**1. Pilot Testing:**
- 2-3 studies with all reviewers
- Calibrate understanding
- Resolve discrepancies

**2. Independent Assessment:**
- Two reviewers assess each study
- Blinded to other's ratings

**3. Compare and Resolve:**
- Discuss disagreements
- Refer to third reviewer if needed
- Document rationale

**4. Report:**
- Summary tables
- Risk of bias graphs
- Study-level details

## Incorporating into Synthesis

### Sensitivity Analyses

**By Risk of Bias:**
- Exclude high-risk studies
- Compare effect estimates
- Assess robustness

**Example:**
- All studies: RR 0.75 (0.65-0.86)
- Low risk only: RR 0.72 (0.60-0.86)
- Conclusion: Robust to bias

### Subgroup Analyses

**Explore Effect Modification:**
- Does effect differ by risk of bias?
- Meta-regression

**Interpretation:**
- If low-risk studies show larger effect: Suspicious
- If similar across risk levels: More trustworthy

### GRADE Assessment

**Rating Certainty of Evidence:**

**Start:**
- RCTs: High certainty
- Observational: Low certainty

**Downgrade for:**
1. **Risk of bias:** Serious limitations
2. **Inconsistency:** Unexplained heterogeneity
3. **Indirectness:** Different population/intervention/outcome
4. **Imprecision:** Wide confidence intervals
5. **Publication bias:** Funnel plot asymmetry

**Upgrade for (observational only):**
1. Large magnitude of effect
2. Dose-response gradient
3. All plausible confounders would reduce effect

**Final Ratings:**
- High
- Moderate
- Low
- Very low

## Visualization

### Risk of Bias Graph

**Traffic Light Plot:**
- Rows: Studies
- Columns: Domains
- Colors: Green (low), Yellow (unclear), Red (high)

**Summary Graph:**
- Percentage of studies at each risk level per domain

### Implementation Tools

**RevMan:**
- Built-in risk of bias tables
- Automatic graph generation

**robvis:**
- R package for visualization
- Customizable plots

**Excel Templates:**
- Manual creation
- Flexibility

## Reporting

### PRISMA Requirements

**Section:**
- Methods: Describe tool used
- Results: Present assessments
- Discussion: Consider limitations

**Required Elements:**
- Tool name and version
- Domains assessed
- How assessed (independent, dual)
- How incorporated

### Tables

**Study-Level:**
| Study | D1 | D2 | D3 | D4 | D5 | Overall |
|-------|----|----|----|----|----|---------|
| Smith 2020 | Low | Low | Unclear | Low | Low | Low |

**Summary:**
| Domain | Low (%) | Unclear (%) | High (%) |
|--------|---------|-------------|----------|
| Randomization | 80 | 15 | 5 |

## Common Challenges

### Incomplete Reporting

**Issue:** Study doesn't describe methods adequately

**Approach:**
- Assume high risk if critical domain unclear
- Contact authors
- Sensitivity analysis

### Subjective Judgments

**Issue:** Different reviewers rate differently

**Mitigation:**
- Detailed guidance
- Pilot calibration
- Discussion of discrepancies

### Tool Selection

**Issue:** Many tools available

**Guidance:**
- Match tool to study design
- Pre-specify in protocol
- Use validated tools

## Best Practices

1. **Pre-specify:** State tool and approach in protocol
2. **Pilot test:** Calibrate reviewers
3. **Independent assessment:** Dual review
4. **Transparent reporting:** Show all assessments
5. **Incorporate:** Use in sensitivity analyses
6. **GRADE:** Assess certainty of evidence

## Summary

**Key Points:**
- Risk of bias ≠ study quality (focus on internal validity)
- Use design-appropriate tools (RoB 2 for RCTs, ROBINS-I for observational)
- Dual independent assessment essential
- Incorporate into synthesis via sensitivity analyses
- GRADE provides overall certainty rating

** Pearl:** A meta-analysis is only as trustworthy as the studies included. Rigorous risk of bias assessment distinguishes rigorous reviews from simple aggregations.

---

**Related:** [[Systematic_Search_Strategy_Z-001-0996]] | [[Screening_Protocols_Systematic_Review_Z-001-0997]] | [[Data_Extraction_Systematic_Review_Z-001-0998]] | [[Meta_Analysis_Statistics_Forest_Plots_Z-001-1000]

**Source:** CGPT-0621 — Publishing Meta-Analysis Guidelines


## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
