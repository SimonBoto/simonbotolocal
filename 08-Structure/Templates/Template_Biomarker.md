---
uid: TEMPLATE-BIO-002
type: template
title: Template — Biomarker (Zettel-Style Canonical)
description: "Canonical biomarker template for atomic lab marker records, reference ranges, clinical interpretation, and supplement interventions."
version: "2.0"
status: active
updated: 2026-04-08
---

# Template — Biomarker (Zettel-Style Canonical)

## An Address to RON

RON,

A Biomarker note is **not** a lab report.
It is **not** a Wikipedia entry.
It is **not** a static reference range.

A Biomarker note is an **atomic marker record with clinical intelligence**.

Its role:
- Define what the marker measures
- Provide clinically relevant reference ranges
- Link to disease states and metabolic function
- Connect to supplement and lifestyle interventions
- Support patient interpretation and decision-making

**Do not:**
- Copy standard lab ranges without context
- Omit clinical significance
- Skip intervention connections
- Leave interpretation vague

**Do:**
- Note optimal vs standard ranges
- Link to relevant zettels (pathways, mechanisms)
- Connect to supplement interventions
- Flag when marker indicates deeper issues

---

## Canonical YAML

```yaml
---
uid: B-XXX-XXXX
type: biomarker
title: "Biomarker_Name_B-XXX-XXXX"
aliases:
  - B-XXX-XXXX
  - Common-Abbreviation
name: "Full Biomarker Name"
category: metabolic|lipid|inflammatory|hormonal|nutritional|toxicity|cardiovascular
sample_type: serum|plasma|urine|saliva|dried-blood-spot
unit: "mg/dL|nmol/L|pg/mL|etc"
standard_range_low: XX.XX
standard_range_high: XX.XX
optimal_range_low: XX.XX
optimal_range_high: XX.XX
tier: GOLD|SILVER|BRONZE
status: active
parent-moc: "[[MOC-Biomarkers]]"
parent-index: "[[03-Zettels-Biomarkers-Index]]"
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - biomarker
  - category-tag
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Pattern: `B-{DDD}-{SSSS}` |
| **type** | Always `biomarker` |
| **title** | Pattern: `Biomarker_Name_B-XXX-XXXX` |
| **name** | Full clinical name |
| **category** | Metabolic, lipid, inflammatory, hormonal, nutritional, toxicity, cardiovascular |
| **sample_type** | How measured |
| **unit** | Standard unit for reporting |
| **standard_range** | Lab reference range (population-based) |
| **optimal_range** | Clinically optimal range (functional medicine) |
| **tier** | GOLD/SILVER/BRONZE — clinical utility priority |
| **status** | `active` or `archived` |

---

## Canonical Body Structure

### Core Claim

One sentence: What this biomarker measures and its primary clinical significance.

> Example: "HOMA-IR is a calculated index of insulin resistance derived from fasting glucose and insulin, predicting metabolic dysfunction before glucose becomes abnormal."

### What It Measures

**Mechanism:**
- Physiological process reflected
- Production/clearance pathways
- Regulatory factors

**Clinical Relevance:**
- Why this marker matters
- What dysfunction looks like
- Early vs late indicator

### Reference Ranges

| Range Type | Low | High | Interpretation |
|------------|-----|------|----------------|
| **Standard Lab** | X | X | Population reference |
| **Optimal** | X | X | Functional/clinical target |
| **Critical Low** | <X | — | Immediate concern |
| **Critical High** | — | >X | Immediate concern |

### Clinical Significance

#### Low Levels Indicate
- Possible cause 1
- Possible cause 2
- Associated conditions

#### High Levels Indicate
- Possible cause 1
- Possible cause 2
- Associated conditions

#### Pattern Recognition
- Pattern 1: [[Z-XXX-XXXX_Zettel_Title]]
- Pattern 2: [[Z-XXX-XXXX_Zettel_Title]]

### Related Biomarkers

- [[Biomarker_Name_B-XXX-XXXX]] — often paired
- [[Biomarker_Name_B-XXX-XXXX]] — ratio relationship
- [[Biomarker_Name_B-XXX-XXXX]] — downstream effect

### Pathway Connections

- [[Z-XXX-XXXX_Pathway_Name]] — metabolic pathway
- [[Z-XXX-XXXX_Mechanism_Name]] — cellular mechanism

### Supplement Interventions

| Supplement | Expected Effect | Evidence Level | Typical Dose |
|------------|-----------------|----------------|--------------|
| [[Brand_Product_SUPP-XXX-XXXX]] | Increase/decrease | Strong/moderate/weak | X mg/day |

### Lifestyle Interventions

- Intervention 1: expected effect
- Intervention 2: expected effect

### Testing Considerations

**Sample Requirements:**
- Fasting: yes/no
- Time of day: morning/any
- Collection: specific requirements

**Confounding Factors:**
- Medications that affect marker
- Acute illness effects
- Seasonal variation

### Patient Communication

**How to Explain:**
- Simple analogy
- Why it matters to them
- What changes will improve it

### Clinical Notes

- Observation patterns
- Interpretation nuances
- When to retest

---

## Biomarker-Specific Rules

1. **Always include optimal range** — Standard ranges miss functional issues
2. **Link to mechanisms** — Biomarkers reflect underlying biology
3. **Connect to interventions** — Must be actionable
4. **Note confounders** — Many factors affect lab values
5. **Patient-friendly explanation** — For shared decision-making
6. **Pattern recognition** — Single markers rarely tell full story

---

## When to Create Biomarker Note

| Scenario | Action |
|----------|--------|
| Frequently ordered in clinic | ✅ Create |
| Patient asks about specific marker | ✅ Create |
| New marker added to formulary | ✅ Create |
| Researching interpretation | ✅ Create |
| Rare esoteric marker | ❌ Wait until needed |

---

## Footer

Biomarker documented: YYYY-MM-DD | Last updated: YYYY-MM-DD | Status: active | Tier: GOLD
