---
uid: Z-001-0930
type: zettel
title: Sample Size Strategies for PhD Metabolomics Studies
aliases: [Z-001-0930, Z-001-0523-deprecated, PhD Sample Size, Feasible Power, Strategic Design]
domain: 001
tags: [zettel, phd, sample-size, study-design, targeted-metabolomics, validation, pilot-study]
parent-moc: 
status: conscious
source: "[[LitNote_Power_Analysis_Metabolomics_L-001-0514]]"
extraction-date: 2026-03-02
updated: 2026-03-05
source-litnote: Synthesized from clinical practice
---

# Sample Size Strategies for PhD  Studies

**Reality:** Most PhD projects cannot achieve 500+ subjects per group. Strategic design allows meaningful science with feasible samples.

## Strategy 1: Phased Discovery/Validation Design

### Phase 1: Untargeted Discovery (Exploratory)

**Sample Size:** 50-100 per group
**Purpose:** Generate hypotheses, identify candidates
**Analysis:** 
- Focus on large effect sizes only (FC>2.0, VIP>1.5)
- Pathway enrichment over individual metabolites
- Rank-order candidates, don't over-interpret

**Reporting:**
```
"Exploratory untargeted analysis identified 15 candidate 
metabolites warranting validation. Findings considered 
hypothesis-generating due to limited sample size."
```

### Phase 2: Targeted Validation (Confirmatory)

**Sample Size:** 30-50 per group  
**Purpose:** Test specific hypotheses about candidate metabolites
**Advantage:** 
- Fewer tests = less multiple testing burden
- Can detect medium effects with smaller n
- Focused, well-powered for specific questions

**Example Design:**
```
Discovery (n=80/group): Identify 20 candidates from 3000 metabolites
        ↓
Validation (n=40/group): Confirm 20 specific metabolites
        ↓
Clinical application: 5-10 validated s
```

## Strategy 2: Reduce Variance

### Strict Inclusion/Exclusion Criteria

**Benefit:** Lower variance → smaller required sample

**Examples:**
- **Age range:** 40-60 years (not 20-80)
- **BMI:** Narrow range (e.g., 25-30)
- **Disease stage:** Specific (e.g., early T2DM, not all stages)
- **Medication:** Exclude confounding drugs
- **Fasting status:** Standardize collection time

**Trade-off:** Reduced generalizability but increased power

### Standardized Protocols

**Pre-analytical:**
- Same time of day for all samples
- Standardized fasting duration
- Consistent collection tubes
- Immediate processing or standardized storage

**Analytical:**
- Batch randomization
- QC samples every 10 injections
- Single analytical batch if possible

**Impact:** Can reduce CV from 20% to 10%, effectively quadrupling power

## Strategy 3: Paired Designs

### Within-Subject Comparisons

**Designs:**
- Baseline vs. treatment (same subject)
- Before vs. after intervention
- Treated vs. untreated tissue (same individual)

**Advantage:**
- Removes inter-individual variability
- Focuses on within-subject changes
- Effectively doubles statistical power

**Example:**
```
Unpaired: n=100 per group needed
Paired: n=50 subjects, measured twice = equivalent power
```

**METHAP Application:**
- Baseline metabolomics → intervention → follow-up metabolomics
- Requires repeated measures ANOVA
- Very powerful for detecting treatment effects

## Strategy 4: Focus on Extremes

### Extreme Phenotype Design

**Rationale:** Comparing extremes increases effect size

**Design:**
- Bottom quartile vs. top quartile
- Severe disease vs. super-healthy
- High responders vs. non-responders

**Example:**
```
All T2DM patients: Effect size f=0.15, need n=500/group
Severe T2DM (HbA1c>9) vs. healthy: Effect size f=0.35, need n=100/group
```

**Trade-off:**
- Increased effect size
- Reduced generalizability to "average" patients
- Useful for proof-of-concept

## Strategy 5: Multi-Site Collaboration

### Collaborative Consortia

**Approach:**
- Partner with other centers
- Standardize protocols across sites
- Pool samples for analysis
- Share costs and expertise

**Challenges:**
- Protocol harmonization
- Shipping logistics
- Data sharing agreements
- Authorship negotiations

**Benefit:** Can reach required sample sizes impossible for single center

## Strategy 6: Increase Alpha (When Appropriate)

### Relaxed Significance for Discovery

**Standard:** α=0.05
**Discovery:** α=0.10 or α=0.20

**Rationale:**
- Prioritize sensitivity over specificity
- Generate candidates for validation
- Accept higher false positive rate

**Must Combine With:**
- Mandatory validation step
- Independent replication
- Functional follow-up

## Practical Decision Framework

### Step 1: Calculate Required Sample

**Example:**
- Expected effect: f=0.25 (medium)
- Groups: 2
- Power: 80%
- Required: **n=64 per group**

### Step 2: Assess Feasibility

| Scenario | Action |
|----------|--------|
| Can achieve n=64 | Proceed as planned |
| Can achieve n=40 | Use paired design or reduce variance |
| Can achieve n=20 | Switch to extreme phenotype design |
| Can achieve n=10 | Consider different research question |

### Step 3: Adjust Design

**If underpowered:**
1. Reduce number of comparison groups
2. Use paired design
3. Focus on targeted (not untargeted) approach
4. Collaborate for larger sample
5. Extend timeline

## METHAP Recommendation

**For PhD Timeline (3-4 years):**

| Phase | Sample | Timeline | Output |
|-------|--------|----------|--------|
| Pilot | n=20 | Year 1 | Methods validation, variance estimates |
| Discovery | n=60-80 | Year 1-2 | Candidate identification |
| Validation | n=40-60 | Year 2-3 | Biomarker confirmation |
| Clinical | n=30-50 | Year 3-4 | Correlation with outcomes |

**Total:** 150-210 subjects, feasible for single-center PhD with good recruitment

---

*See also: [[Power_Analysis_Formula_Metabolomics_Z-001-0928]]*

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- /Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]]
- 

