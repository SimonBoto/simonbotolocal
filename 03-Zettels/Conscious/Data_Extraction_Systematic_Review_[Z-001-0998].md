---
uid: Z-001-0998
type: zettel
title: Data Extraction for Systematic Reviews — Forms, Software, and Missing Data
aliases: [Z-001-0998]
domain: 001
tags: [zettel, systematic-review, data-extraction, extraction-form, covidence, distiller-sr, missing-data, pilot-testing, conscious]
parent-moc: 
extraction-date: 2026-03-07
source-litnote: [[LitNote_Meta_Analysis_Methodology_L-001-0580]]
status: conscious
---

# Data Extraction for Systematic Reviews — Forms, Software, and Missing Data

## Overview

Data extraction transforms information from primary studies into a standardized format for synthesis. Accurate, consistent extraction is critical for valid meta-analysis results.

## What to Extract

### Study Identification
- First author, year
- Country of study
- Study design
- Funding source
- Registration number (if applicable)

### Population Characteristics
- Sample size (enrolled, randomized, analyzed)
- Demographics (age, sex, race/ethnicity)
- Inclusion/exclusion criteria
- Baseline characteristics
- Disease severity/stage

### Intervention Details
- Type of intervention
- Dose/duration/frequency
- Route of administration
- Comparator details
- Co-interventions
- Adherence/compliance

### Outcomes
- Primary outcomes (as defined by study)
- Secondary outcomes
- Measurement methods
- Timing of assessments
- Effect estimates (mean, SD, n for continuous; events, n for dichotomous)
- Missing data handling

### Study Quality Elements
- Randomization method
- Blinding
- Allocation concealment
- Follow-up duration
- Dropout rates
- Analysis method (ITT, per-protocol)

## Data Extraction Form Design

### Principles

**Comprehensive:**
- Capture all data needed for analysis
- Include fields for planned subgroup analyses
- Anticipate sensitivity analyses

**Structured:**
- Standardized format
- Clear field definitions
- Consistent units

**Pilot-Tested:**
- Test on 2-3 studies
- Refine based on experience
- Ensure feasibility

### Format Options

**Spreadsheet (Excel/Google Sheets):**
- Pros: Simple, familiar, flexible
- Cons: Limited validation, version control issues
- Best for: Small reviews, limited budget

**Database (Access/RedCap):**
- Pros: Validation rules, relational structure
- Cons: Requires technical expertise
- Best for: Large reviews, complex data

**Software-Integrated (Covidence/DistillerSR):**
- Pros: Integrated with screening, built-in forms
- Cons: Subscription cost
- Best for: Most systematic reviews

### Form Sections

```
1. Study Identification
   - Author, year, title
   - Journal, volume, pages
   - DOI/PMID

2. Study Characteristics
   - Design
   - Country
   - Setting
   - Duration

3. Population
   - Sample size
   - Age (mean, SD, range)
   - Sex (% male/female)
   - Baseline values

4. Intervention
   - Description
   - Dose
   - Duration
   - Delivery

5. Outcomes
   - Primary: [name]
     - Time point
     - Measure
     - Result (n, mean, SD or events/n)
   - Secondary: [name]
     - [same structure]

6. Quality Assessment
   - Risk of bias ratings
   - Notes

7. Additional Notes
   - Any relevant comments
```

## Dual Data Extraction

### Why Dual?

**Error Reduction:**
- Transcription errors common
- Single extractor: ~2-5% error rate
- Dual independent: ~0.5-1% error rate

**Quality Assurance:**
- Identifies unclear reporting
- Highlights discrepancies
- Improves reliability

### Implementation

**Independent Extraction:**
- Two extractors work separately
- No consultation during extraction
- Blind to other's entries

**Compare:**
- Software identifies discrepancies
- Calculate agreement statistics

**Resolve:**
- Discussion between extractors
- Refer to source document
- Third extractor if needed

## Software Solutions

### Covidence

**Features:**
- Integrated extraction forms
- Dual extraction workflow
- Conflict identification
- Export to RevMan

**Best for:** Cochrane reviews, funded projects

### DistillerSR

**Features:**
- Customizable forms
- Advanced validation
- Multiple reviewer management
- Comprehensive reporting

**Best for:** Large reviews, regulatory work

### REDCap

**Features:**
- Free for academic use
- Sophisticated validation
- Database structure
- Export flexibility

**Best for:** Academic institutions, complex data

### Excel/Google Sheets

**Features:**
- Widely available
- Simple to create
- Easy to share

**Best for:** Small reviews, quick projects

## Pilot Testing

### Purpose

**Validate Form:**
- Are all necessary fields present?
- Are definitions clear?
- Are units consistent?

**Estimate Time:**
- How long per study?
- Resource planning

**Identify Issues:**
- Ambiguous reporting in studies
- Missing fields
- Data not extractable

### Process

**Sample:**
- 2-3 representative studies
- Range of study types
- Different outcome types

**Independent Extraction:**
- Both extractors extract same studies
- Compare results
- Identify discrepancies

**Refine Form:**
- Add missing fields
- Clarify definitions
- Adjust structure

**Document Changes:**
- Version control
- What changed and why

## Handling Missing Data

### Types of Missing Data

**Not Reported:**
- Authors didn't collect or didn't report
- Contact authors for clarification

**Not Applicable:**
- Doesn't apply to study design
- Note as "NA"

**Unclear:**
- Reporting ambiguous
- Contact authors or exclude

### Strategies

**1. Contact Authors:**
- Email corresponding author
- Request specific data
- 30-50% response rate typical
- Template email recommended

**2. Estimate from Other Data:**
- Calculate SD from SE or CI
- Estimate from graphs
- Use median/IQR if mean/SD unavailable

**3. Exclude from Meta-Analysis:**
- Include in qualitative synthesis
- Note as limitation
- Sensitivity analysis

**4. Imputation (Last Resort):**
- Statistical imputation
- Assumptions required
- Clearly report method

### Calculating Statistics

**Converting SE to SD:**
```
SD = SE × √n
```

**Converting 95% CI to SD:**
```
SD = (Upper limit - Lower limit) / 3.92 × √n
```

**Converting IQR to SD (approximate):**
```
SD ≈ IQR / 1.35
```

**Converting Median to Mean (approximate):**
```
If distribution symmetric: Mean ≈ Median
If skewed: More complex formulas available
```

## Quality Control

### During Extraction

**Spot Checks:**
- Principal investigator reviews random sample
- 10-20% of studies
- Identifies systematic errors

**Query Log:**
- Document all questions
- Track resolutions
- Maintain consistency

### Final Verification

**Before Analysis:**
- Range checks (impossible values?)
- Consistency checks
- Missing data audit

## Documentation

### Data Dictionary

**Create for Each Form:**
- Field name
- Definition
- Data type
- Units
- Codes/categories

**Example:**
| Field | Definition | Type | Values |
|-------|-----------|------|--------|
| age_mean | Mean age of participants | Numeric | Years |
| female_pct | Percentage female | Numeric | 0-100 |
| study_design | Study design | Categorical | RCT, CCT, cohort |

### Version Control

**Track Changes:**
- Version number
- Date
- What changed
- Who made changes
- Why

## Common Challenges

### Inconsistent Reporting

**Issue:** Same outcome measured differently across studies

**Solutions:**
- Standardize during extraction
- Document conversion methods
- Subgroup by measurement method

### Multiple Time Points

**Issue:** Different follow-up durations

**Approaches:**
- Pre-specify primary time point
- Extract all time points
- Meta-regression by time

### Multiple Intervention Groups

**Issue:** Studies with >2 arms

**Strategies:**
- Pairwise comparisons
- Split control group (cautiously)
- Network meta-analysis

### Cluster Trials

**Issue:** Unit of analysis errors

**Handling:**
- Adjust for ICC
- Extract cluster-level data
- Contact authors

## Summary

**Key Principles:**
1. Design comprehensive, pilot-tested forms
2. Dual independent extraction essential
3. Contact authors for missing data
4. Document everything
5. Validate data before analysis
6. Use appropriate software
7. Maintain version control

** Pearl:** Data extraction errors propagate into meta-analysis results. Invest in rigorous extraction procedures—quality control here pays dividends in validity.

---

**Related:** [[Systematic_Search_Strategy_[Z-001-0996].md]] | [[Screening_Protocols_Systematic_Review_[Z-001-0997].md]] | [[Quality_Assessment_Risk_of_Bias_[Z-001-0999].md]]

**Source:** CGPT-0621 — Publishing Meta-Analysis Guidelines
