---
uid: Z-001-0997
type: zettel
title: Screening Protocols for Systematic Reviews — Dual Review and Conflict Resolution
aliases: [Z-001-0997]
domain: 001
tags: [zettel, systematic-review, screening, inclusion-criteria, exclusion-criteria, dual-review, rayyan, covidence, inter-rater-reliability, conscious]
parent-moc: [[MOC-Insulin-Signaling]]
extraction-date: 2026-03-07
source-litnote: [[LitNote_Meta_Analysis_Methodology_L-001-0580]
status: conscious
---

# Screening Protocols for Systematic Reviews — Dual Review and Conflict Resolution
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

Study screening is the process of evaluating search results against inclusion and exclusion criteria to identify relevant studies. Rigorous, transparent screening is essential for minimizing bias and ensuring reproducibility.

## Two-Stage Screening Process

### Stage 1: Title and Abstract Screening

**Objective:**
- Rapidly identify potentially relevant studies
- Exclude obviously irrelevant studies
- Conservative approach: When in doubt, include

**Process:**
1. Import all search results into screening software
2. Remove duplicates automatically
3. Review titles/abstracts against criteria
4. Mark as: Include, Exclude, or Uncertain

**Time Investment:**
- Experienced reviewer: 30-60 seconds per record
- Typical yield: 10-20% pass to full-text

### Stage 2: Full-Text Screening

**Objective:**
- Definitively determine inclusion
- Extract reason for exclusion
- Identify studies for data extraction

**Process:**
1. Retrieve full texts of potentially relevant studies
2. Apply inclusion/exclusion criteria systematically
3. Document reasons for exclusion
4. Finalize included studies list

**Time Investment:**
- 10-30 minutes per study
- May require contacting authors for clarification

## Inclusion and Exclusion Criteria

### Developing Criteria

**Use PICO Framework:**
| Element | Inclusion Criteria Example | Exclusion Criteria Example |
|---------|---------------------------|---------------------------|
| **Population** | Adults ≥18 years | Children, pregnant women |
| **Intervention** |  supplementation | Vitamin D from diet only |
| **Comparison** | Placebo or standard care | No comparator |
| **Outcome** | Fasting glucose, HbA1c | Surrogate markers only |
| **Study Design** | RCTs, controlled trials | Case reports, reviews |
| **Setting** | Outpatient | Inpatient only |
| **Language** | English | Non-English |
| **Date** | 2000-2024 | Before 2000 |

### Criteria Characteristics

**Specific:**
- Quantify when possible (age ranges, dosages)
- Define terms operationally
- Avoid ambiguous language

**Reproducible:**
- Different reviewers should apply consistently
- Pilot test before full screening

**Justified:**
- Based on  question
- Document rationale

## Dual Review Methodology

### Why Dual Review?

**Error Reduction:**
- Single reviewer: ~5-10% error rate
- Dual independent review: ~2-5% error rate
- Triple review: Diminishing returns

**Bias Mitigation:**
- Individual reviewer biases average out
- Conflicts highlight ambiguous criteria
- Consensus improves validity

### Implementation

**Independent Review:**
- Both reviewers screen same records
- No communication during initial screening
- Blinded to other's decisions

**Compare Results:**
- Software identifies agreements and conflicts
- Calculate inter-rater reliability

**Resolve Conflicts:**
- Discussion between reviewers
- Consultation with third reviewer if needed
- Refine criteria if systematic disagreements

### Inter-Rater Reliability

**Cohen's Kappa (κ):**
- <0.20: Poor agreement
- 0.21-0.40: Fair
- 0.41-0.60: Moderate
- 0.61-0.80: Good
- 0.81-1.00: Very good

**Calculation:**
```
κ = (Observed agreement - Expected agreement) / (1 - Expected agreement)
```

**Target:** κ ≥ 0.60 (moderate to good)

**If Low Reliability:**
- Revisit criteria
- Additional training
- Pilot more studies
- Consider triple review

## Screening Software Tools

### Rayyan (Free)

**Features:**
- Web-based, collaborative
- Import from multiple formats
- Mobile app available
- Conflict detection
- PRISMA flow diagram generation

**Best for:** Small to medium reviews, free option essential

### Covidence (Subscription)

**Features:**
- Industry standard
- Excellent interface
- Full systematic review support
- Data extraction integration
- Export to RevMan

**Best for:** Large reviews, Cochrane reviews, funded projects

### DistillerSR (Subscription)

**Features:**
- Enterprise-level
- Customizable workflows
- Advanced reporting
- FDA-compliant options

**Best for:** Regulatory submissions, large teams

### EndNote (Reference Management)

**Features:**
- Not dedicated screening tool
- Can use for basic screening
- Good for reference management

**Best for:** Already using for reference management

## Conflict Resolution Strategies

### Level 1: Discussion

**Process:**
1. Reviewers meet to discuss disagreements
2. Each presents rationale
3. Refer to inclusion/exclusion criteria
4. Reach consensus

**Documentation:**
- Record final decision
- Note any criteria clarification
- Update screening protocol if needed

### Level 2: Third Reviewer

**When to Use:**
- Discussion doesn't resolve conflict
- Strong disagreement on interpretation
- Systematic pattern of disagreement

**Process:**
1. Independent review by senior/third reviewer
2. Majority rule or third reviewer decides
3. Document decision rationale

### Level 3: Team Consensus

**When to Use:**
- Multiple systematic conflicts
- Criteria fundamentally ambiguous
- High-profile or controversial topic

**Process:**
1. Team meeting with all reviewers
2. Discuss systematic issues
3. Refine criteria
4. Re-screen if necessary

## Pilot Screening

### Purpose

**Test Criteria:**
- Are criteria clear and applicable?
- Do they distinguish relevant from irrelevant?

**Calibrate Reviewers:**
- Ensure shared understanding
- Identify training needs
- Establish reliability

### Implementation

**Sample Size:**
- 50-100 records typically sufficient
- Include range of study types
- Include some obvious includes and excludes

**Process:**
1. Both reviewers screen pilot independently
2. Calculate inter-rater reliability
3. Discuss all disagreements
4. Refine criteria if needed
5. Document decisions for consistency

**Iterate if Needed:**
- If κ < 0.60, refine and re-pilot
- May take 2-3 iterations

## Documentation

### PRISMA 2020 Flow Diagram

**Required Elements:**
1. Records identified from databases
2. Records identified from other sources
3. Records removed before screening (duplicates)
4. Records screened (title/abstract)
5. Records excluded (title/abstract)
6. Full-text assessed
7. Full-text excluded (with reasons)
8. Studies included in qualitative synthesis
9. Studies included in quantitative synthesis (meta-analysis)

### Exclusion Reasons

**Categorize at Full-Text:**
- Wrong population
- Wrong intervention
- Wrong comparator
- Wrong outcomes
- Wrong study design
- Wrong setting
- Insufficient data
- Duplicate publication
- Language (if excluded)

**Report:**
- Number excluded per reason
- Often in supplementary table

## Common Challenges

### Missing Full Texts

**Strategies:**
1. Interlibrary loan
2. Contact authors directly
3. Contact corresponding author
4. Check ResearchGate, Academia.edu
5. Google Scholar search

**If Unavailable:**
- Exclude and document
- Note as limitation
- Sensitivity analysis

### Ambiguous Abstracts

**Approach:**
- When in doubt, include for full-text review
- Better to over-include at title/abstract stage
- Definitive decision at full-text

### Foreign Language Studies

**Options:**
1. Include if translation available
2. Exclude with justification
3. Native speaker review
4. Abstract translation tools (cautious)

**Report:**
- Number excluded for language
- Consider as limitation

### Conference Abstracts

**Considerations:**
- Often limited data
- May not be peer-reviewed
- Full publication may exist

**Approach:**
- Include if only source of data
- Search for full publication
- Contact authors

## Quality Control

### Ongoing Monitoring

**During Screening:**
- Spot-check reviewer decisions
- Monitor inter-rater reliability
- Address systematic issues promptly

### Final Verification

**Before Analysis:**
- Final check of included studies
- Verify no duplicates
- Confirm all data available

## Summary

**Key Principles:**
1. Two-stage screening (title/abstract → full-text)
2. Dual independent review essential
3. Clear, specific, justified criteria
4. Document everything (PRISMA flow)
5. Resolve conflicts systematically
6. Pilot before full screening
7. Use appropriate software

** Pearl:** Screening is subjective despite criteria. Dual review and conflict resolution are not optional—they're essential quality control.

---

**Related:** [[Systematic_Search_Strategy_Z-001-0996]] | [[Data_Extraction_Systematic_Review_Z-001-0998]] | [[Quality_Assessment_Risk_of_Bias_Z-001-0999]

**Source:** CGPT-0621 — Publishing Meta-Analysis Guidelines


## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]

---

## Significance

| **Setting** | Outpatient | Inpatient only |

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
