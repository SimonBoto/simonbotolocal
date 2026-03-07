---
uid: Z-001-0996
type: zettel
title: Systematic Search Strategy — Database Selection and Search String Construction
aliases: [Z-001-0996]
domain: 001
tags: [zettel, systematic-review, search-strategy, pubmed, embase, cochrane, boolean-operators, mesh, conscious]
parent-moc: [[MOC-Research-Methods]]
extraction-date: 2026-03-07
source-litnote: [[LitNote_Meta_Analysis_Methodology_L-001-0580]]
status: conscious
---

# Systematic Search Strategy — Database Selection and Search String Construction

## Overview

A comprehensive systematic search is the foundation of any rigorous systematic review. The search must be exhaustive, transparent, and reproducible.

## Database Selection

### Core Databases

**PubMed/MEDLINE:**
- **Coverage:** 30+ million citations, 1946-present
- **Strengths:** Broad biomedical, MeSH indexing, free access
- **Best for:** General medical topics, clinical questions
- **Unique features:** Clinical queries filters, PMID linking

**Embase:**
- **Coverage:** 32+ million records, 1947-present
- **Strengths:** European journals, drug coverage, conference abstracts
- **Best for:** Pharmacology, toxicology, device studies
- **Unique features:** Emtree indexing (broader than MeSH)

**Cochrane Library:**
- **Coverage:** Systematic reviews, trials, methods studies
- **Strengths:** Methodological rigor, CENTRAL trial registry
- **Best for:** Intervention effectiveness, high-quality trials
- **Unique features:** Cochrane Reviews, protocol registration

### Supplementary Databases

| Database | Focus | When to Use |
|----------|-------|-------------|
| **Web of Science** | Citation tracking | Comprehensive searching, interdisciplinary topics |
| **Scopus** | Broad scientific | Multi-disciplinary, citation analysis |
| **CINAHL** | Nursing/allied health | Healthcare delivery questions |
| **PsycINFO** | Psychology/behavioral | Mental health, behavioral interventions |
| **ERIC** | Education | Educational interventions |
| **Google Scholar** | Grey literature | Thesis, conference papers (supplement only) |

## Search Strategy Construction

### PICO Framework

**Structure your question:**
- **P**opulation: Who are the participants?
- **I**ntervention: What is the intervention?
- **C**omparison: What is the comparison?
- **O**utcome: What are the outcomes?

**Example:**
- P: Adults with type 2 diabetes
- I: Metformin
- C: Placebo or standard care
- O: Cardiovascular events

### Keyword Development

**1. Identify Core Concepts:**
From PICO, extract key concepts

**2. Generate Synonyms:**
For each concept, list synonyms, abbreviations, and variations

| Concept | Terms |
|---------|-------|
| Diabetes | diabetes mellitus, type 2 diabetes, T2DM, NIDDM |
| Metformin | metformin, Glucophage, biguanide |
| Cardiovascular | myocardial infarction, stroke, heart disease, CVD, cardiovascular disease |

**3. Include Variations:**
- American vs British spelling (tumor/tumour)
- Abbreviations and full terms
- Brand and generic names
- Singular and plural forms

### Boolean Operators

**AND:**
- Narrows search
- Requires both terms present
- Use between concepts
- **Example:** diabetes AND metformin

**OR:**
- Broadens search
- Either term acceptable
- Use within concept groups
- **Example:** (myocardial infarction OR heart attack OR MI)

**NOT:**
- Excludes terms
- Use cautiously (may exclude relevant results)
- **Example:** diabetes NOT gestational

### Search String Construction

**Basic Structure:**
```
(Population terms) AND (Intervention terms) AND (Outcome terms)
```

**Example Search String:**
```
("diabetes mellitus"[Mesh] OR "type 2 diabetes"[tiab] OR T2DM[tiab] OR NIDDM[tiab])
AND
("metformin"[Mesh] OR metformin[tiab] OR Glucophage[tiab])
AND
("cardiovascular diseases"[Mesh] OR "myocardial infarction"[Mesh] OR "stroke"[Mesh] OR "heart disease*"[tiab] OR cardiovascular[tiab])
```

## Database-Specific Syntax

### PubMed

**Field Tags:**
- [Mesh] = MeSH term
- [tiab] = Title/abstract
- [ti] = Title only
- [au] = Author
- [dp] = Date

**Filters:**
- Humans
- English language
- Publication dates
- Article types

**Example:**
```
("vitamin D"[Mesh] OR "vitamin D"[tiab] OR cholecalciferol[tiab])
AND
("diabetes mellitus, type 2"[Mesh] OR "type 2 diabetes"[tiab])
Filters: Humans, English, last 10 years, randomized controlled trial
```

### Embase

**Emtree Terms:**
- Similar to MeSH but more comprehensive
- Broader drug coverage

**Syntax:**
- 'term'/exp = exploded Emtree term
- 'term':ab,ti = title/abstract

**Example:**
```
('diabetes mellitus'/exp OR 'diabetes':ab,ti)
AND
('metformin'/exp OR 'metformin':ab,ti)
```

### Cochrane Library

**Simple search:**
- Default searches title, abstract, keywords

**Advanced search:**
- Use MeSH terms
- Limit by study type

## Search Documentation

### PRISMA-S Requirements

**Document for each database:**
1. Database name and platform (e.g., PubMed via NCBI)
2. Search date
3. Complete search strategy
4. Number of results
5. Any filters applied
6. Export format

### Search Log Template

| Database | Date | Search String | Filters | Results | Exported |
|----------|------|---------------|---------|---------|----------|
| PubMed | 2024-01-15 | ("vitamin D"[Mesh]...) | Humans, English, 2014-2024 | 1,247 | RIS |
| Embase | 2024-01-15 | ('vitamin D'/exp...) | Humans, English, 2014-2024 | 1,893 | RIS |

## Supplementary Searching

### Reference Checking
- Review reference lists of included studies
- Review lists of relevant systematic reviews

### Citation Searching
- Forward citation searching (who cited key papers)
- Backward citation searching (references)

### Grey Literature
- Clinical trial registries (ClinicalTrials.gov, WHO ICTRP)
- Conference abstracts
- Thesis databases
- Contacting experts

## Search Validation

### Peer Review
- Have librarian or colleague review strategy
- Use PRESS checklist (Peer Review of Electronic Search Strategies)

### Gold Standard Approach
- Identify key papers that should be retrieved
- Ensure search captures these
- Adjust strategy if not

### Sensitivity vs Precision

**Sensitive (Broad):**
- Captures all relevant studies
- Many irrelevant results
- Appropriate for systematic reviews

**Precise (Narrow):**
- Few irrelevant results
- May miss relevant studies
- Appropriate for rapid reviews

## Common Pitfalls

**1. Too Narrow:**
- Excluding relevant synonyms
- Overuse of AND
- Excessive filters

**2. Too Broad:**
- Insufficient concept combination
- Underuse of AND
- Too many synonyms within concept

**3. Database-Specific Issues:**
- Not adapting syntax for each database
- Ignoring unique features
- Failing to export correctly

**4. Documentation Failures:**
- Incomplete recording
- Missing date stamps
- Unclear search strings

## Best Practices

1. **Work with librarian:** Expert assistance invaluable
2. **Test and refine:** Pilot search before full execution
3. **Document thoroughly:** Every detail matters for reproducibility
4. **Validate:** Ensure key papers are captured
5. **Update before submission:** Rerun search close to submission date
6. **Report completely:** PRISMA flow diagram essential

## Summary

**Key Elements:**
- Multi-database searching essential
- PICO guides concept development
- Boolean operators structure strategy
- Database-specific syntax required
- Thorough documentation critical
- Validation ensures completeness

**Clinical Pearl:** A systematic review is only as good as its search. Invest time upfront to ensure comprehensive retrieval.

---

**Related:** [[Screening_Protocols_Systematic_Review_[Z-001-0997].md]] | [[Data_Extraction_Systematic_Review_[Z-001-0998].md]] | [[Quality_Assessment_Risk_of_Bias_[Z-001-0999].md]]

**Source:** CGPT-0621 — Publishing Meta-Analysis Guidelines
