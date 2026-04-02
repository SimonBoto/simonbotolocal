---
uid: Z-001-0942
type: zettel
title: Line-by-Line Critique Framework for Conclusions Sections
aliases: [Z-001-0942]
domain: 001
tags: [zettel, critical-assessment, conclusions, scientific-writing, peer-review, methodology, evidence-evaluation, conscious]
parent-moc: 
status: conscious
source-litnote: Synthesized from clinical practice
---

# Line-by-Line Critique Framework for Conclusions Sections

## Purpose
Systematically deconstruct each sentence of a study's conclusions to identify **unsupported claims, extrapolations, and logical errors** that distort the actual findings.

## The Framework

### Step 1: Isolate Each Claim
Break conclusions into individual sentences/claims. Example from CGPT-0328:

> "Two potential s, DHEAS and L-TA, were successfully identified and validated as being strongly associated with disease progression."

### Step 2: Assess What Was Actually Done
| Aspect | Evidence Required | Actual Status |
|--------|------------------|---------------|
| **Identification** | Statistical significance (FDR < 0.05) | ✓ Yes |
| **Validation** | Independent cohort, external testing | ✗ No |
| **"Successfully"** | Replication, robust effect | ✗ Unverified |
| **"Strongly associated"** | Effect size (Cohen's d > 0.8) | ✗ Not reported |

### Step 3: Identify the Gap
**Claim:** Validated  strongly associated with disease
**Reality:** Statistically significant metabolites in small underpowered study

**Gap:** Validation = none; Strong association = unmeasured; Success = premature

### Step 4: Classify the Issue
| Category | Description | Severity |
|----------|-------------|----------|
| **Extrapolation** | Beyond data collected | High |
| **Overstatement** | Stronger language than evidence supports | Medium |
| **Omission** | Key limitations not mentioned | High |
| **Ambiguity** | Vague terms hiding uncertainty | Low |

## Critical Questions for Each Claim

### Evidence Questions
1. **What is the sample size?** (n=10-19 = exploratory only)
2. **Was there external validation?** (No = candidate only, not validated)
3. **What is the effect size?** (Not reported = magnitude unknown)
4. **Are there confounders?** (Batch effects, selection bias)

### Logic Questions
1. **Does A prove B?** (Correlation ≠ causation ≠ clinical utility)
2. **Is this the only explanation?** (Technical artifacts vs. biology)
3. **Would this replicate?** (Power analysis says unlikely)

### Language Questions
1. **"Successfully"** — By what criteria?
2. **"Validated"** — Internal or external?
3. **"Strongly"** — Compared to what benchmark?
4. **"Clinically useful"** — Sensitivity? Specificity? AUC?

## Example Application

### Original Claim (CGPT-0328)
> "A method for the simultaneous determination of these potential biomarkers was developed, which may provide a valuable tool for the early diagnosis and clinical risk assessment."

### Line-by-Line Critique

**Part A:** "A method was developed"
- ✓ Accurate — UPLC-MS/MS method described
- No overstatement

**Part B:** "may provide a valuable tool"
- ⚠️ "May" is cautious but "valuable" presupposes utility
- No evidence of value yet (no clinical testing)
- Better: "may serve as a basis for future diagnostic development"

**Part C:** "for early diagnosis and clinical risk assessment"
- ✗ No diagnostic performance metrics reported
- ✗ No prospective clinical testing
- ✗ "Early diagnosis" assumes progression prediction (not tested)
- This is clinical utility claim without clinical validation

### Revised Honest Statement
> "A UPLC-MS/MS method for simultaneous DHEAS and L-TA quantification was developed and analytically validated. Future studies should assess diagnostic performance in prospective cohorts."

## Common Conclusion Pitfalls

### 1. The Validation Leap
**Claim:** "Biomarkers were validated"
**Reality:** Internally cross-validated only
**Issue:** "Validation" implies external confirmation

### 2. The Clinical Utility Assumption
**Claim:** "Useful for clinical diagnosis"
**Reality:** Statistically significant difference in small study
**Issue:** Sensitivity, specificity, predictive value unknown

### 3. The Mechanism Speculation
**Claim:** "Indicates disruption in X pathway"
**Reality:** Metabolite concentrations altered
**Issue:** Correlation ≠ mechanism

### 4. The Generalization Error
**Claim:** "In patients with gastric "
**Reality:** In 9 patients at one hospital
**Issue:** Sample not representative of disease population

## Application in Peer Review

### Red Flag Phrases
- "Successfully validated" (without external cohort)
- "Clinically useful" (without clinical testing)
- "Strongly associated" (without effect sizes)
- "Proven to" (in observational study)

### Reviewer Response Template
> "The conclusion that [CLAIM] is not sufficiently supported by the evidence presented. The study [ACTUAL LIMITATION]. The authors should revise to state [CAUTIOUS ALTERNATIVE] and acknowledge [SPECIFIC LIMITATION]."

## Related Zettels
- [[Limitation_Statement_Best_Practices_Z-001-0943]] — Honest limitations
- [[Rewriting_Overstated_Claims_Cautious_Language_Z-001-0944]] — Fix strategies

## Source
[[LitNote_Critical_Assessment_Methodology_L-001-0521]]

---

**Status:** Conscious (reviewable)
**Extracted:** 2026-03-06

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- [[Liver_Function_[B-009-0001]|Biomarker Family Guide]]
- 

