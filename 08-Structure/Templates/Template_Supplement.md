---
uid: TEMPLATE-SUPP-002
type: template
title: Template — Supplement (Zettel-Style Canonical)
description: "Canonical supplement template for atomic product records, sourcing from companies or iHerb, with zettel-style structure and clinical annotations."
version: "4.0"
status: active
updated: 2026-04-08
---

# Template — Supplement (Zettel-Style Canonical)

## An Address to RON

RON,

A Supplement note is **not** a catalog entry.
It is **not** a marketing description.
It is **not** a shopping list.

A Supplement note is an **atomic product record with clinical intelligence**.

Its role:
- Capture product specifications precisely
- Enable cost-per-day calculations
- Link to biomarkers and clinical effects
- Support inventory and sourcing decisions
- Build a reusable product knowledge base

**Sources:** Company direct, iHerb, or verified distributor.

**Do not:**
- Copy marketing claims without verification
- Omit price/cost data
- Skip biomarker connections
- Leave sourcing unclear

**Do:**
- Record exact specifications from label
- Calculate cost-per-day at standard dosing
- Link to relevant biomarker zettels
- Note form quality and bioavailability
- Track sourcing for reordering

---

## Canonical YAML

```yaml
---
uid: SUPP-XXX-XXXX
type: supplement
title: "Brand_Product_Name_SUPP-XXX-XXXX"
aliases:
  - SUPP-XXX-XXXX
  - Brand-Product-Code
name: "Full Product Name"
brand: "Brand Name"
category: vitamin|mineral|amino-acid|herbal|omega|probiotic|specialty
form: tablet|capsule|softgel|powder|liquid|gummy
dosage_per_unit: "X mg/mcg/IU"
units_per_pack: XX
price_eur: XX.XX
price_per_unit: X.XX
suggested_dose: "X units"
price_per_day: X.XX
tier: GOLD|SILVER|BRONZE
status: active|discontinued|considering|reorder-needed
source: company-direct|iherb|distributor
source_url: ""
source_date: YYYY-MM-DD
parent-moc: "[[MOC-Supplements]]"
parent-index: "[[Templates-Index]]"
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - supplement
  - category-tag
  - brand-tag
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Pattern: `SUPP-{DDD}-{SSSS}` |
| **type** | Always `supplement` |
| **title** | Pattern: `Brand_Product_Name_SUPP-XXX-XXXX` |
| **name** | Full official product name |
| **brand** | Manufacturer brand |
| **category** | vitamin, mineral, amino-acid, herbal, omega, probiotic, specialty |
| **form** | Physical form affects bioavailability |
| **dosage_per_unit** | Active ingredient amount per unit |
| **units_per_pack** | Count in package |
| **price_eur** | Current price paid |
| **price_per_unit** | Auto-calculated: price_eur / units_per_pack |
| **suggested_dose** | Standard daily dose (may differ from label) |
| **price_per_day** | Auto-calculated: price_per_unit × suggested_dose |
| **tier** | GOLD/SILVER/BRONZE — clinical priority, not price |
| **status** | `active` (in use), `discontinued`, `considering`, `reorder-needed` |
| **source** | Where sourced from |
| **source_url** | Direct link for reordering |
| **source_date** | When price/data last verified |

---

## Canonical Body Structure

### Core Claim

One sentence: What this supplement is and its primary clinical purpose.

> Example: "Thorne Basic Nutrients 2/Day is a comprehensive multivitamin-mineral providing bioavailable forms of core micronutrients for metabolic support."

### Key Specifications

| Attribute | Value |
|-----------|-------|
| **Product** | Full name |
| **Brand** | Manufacturer |
| **Form** | Capsule/Tablet/etc. |
| **Pack Size** | XX units |
| **Price** | €XX.XX |
| **Cost per Unit** | €X.XX |
| **Suggested Dose** | X units/day |
| **Cost per Day** | €X.XX |
| **Source** | Company/iHerb/Distributor |

### Active Ingredients (per Unit)

#### Vitamins
| Nutrient | Amount | % NRV | Form | Notes |
|----------|--------|-------|------|-------|
| Vitamin D3 | 2000 IU | 1000% | Cholecalciferol | Preferred form |
| Vitamin K2 | 100 mcg | 133% | MK-7 | Trans-isomer |

#### Minerals
| Nutrient | Amount | % NRV | Form | Notes |
|----------|--------|-------|------|-------|
| Magnesium | 200 mg | 53% | Bisglycinate | Chelated, high absorption |
| Zinc | 15 mg | 150% | Picolinate | Preferred form |

#### Other Actives
| Compound | Amount | Function | Bioavailability |
|----------|--------|----------|-----------------|
| CoQ10 | 100 mg | Mitochondrial support | Ubiquinone |

### Form Quality Assessment

**Capsule/Tablet:**
- [ ] Vegetable cellulose (preferred)
- [ ] Gelatin
- [ ] Enteric-coated
- [ ] Standard release

**Excipients:**
- Clean: [list]
- Avoid: [list]

### Clinical Intelligence

#### Target Biomarkers
- [[Biomarker_Name_B-XXX-XXXX]] — expected effect
- [[Biomarker_Name_B-XXX-XXXX]] — monitoring recommended

#### Ideal For
- Clinical indication 1
- Clinical indication 2
- Patient profile

#### Contraindications / Cautions
- Condition 1
- Drug interaction 1

#### Form Advantages
- Why this form over alternatives
- Bioavailability considerations

### Sourcing & Reordering

| Field | Value |
|-------|-------|
| **Current Source** | Company/iHerb |
| **Product URL** | [Link](url) |
| **Product Code** | CODE123 |
| **Last Verified** | YYYY-MM-DD |
| **Reorder Trigger** | X units remaining |
| **Lead Time** | X days |

### Alternatives Considered

- [[Brand_Alternative_SUPP-XXX-XXXX]] — why not chosen
- [[Brand_Alternative_SUPP-XXX-XXXX]] — backup option

### Related Supplements

- [[Related_Product_SUPP-XXX-XXXX]] — synergistic
- [[Related_Product_SUPP-XXX-XXXX]] — alternative category

### Clinical Notes

- Observation from use
- Patient feedback patterns
- Bioavailability notes
- Timing considerations

### Business Synthesis

How this fits clinic operations:
- Volume usage
- Patient tier match
- Inventory strategy
- Margin if applicable

---

## Supplement-Specific Rules

1. **Price is mandatory** — No supplement without cost data
2. **Calculate cost-per-day** — At clinically relevant dose
3. **Link biomarkers** — Every supplement affects measurable markers
4. **Note form quality** — Not all forms are equivalent
5. **Source for reordering** — Must be reproducible
6. **Track verification date** — Prices and formulations change
7. **Tier by clinical value** — Not by price alone

---

## When to Create Supplement Note

| Scenario | Action |
|----------|--------|
| New product for clinic formulary | ✅ Create |
| Patient asking about specific product | ✅ Create |
| Researching alternatives | ✅ Create |
| Price/formulation change | ✅ Update existing |
| Just browsing | ❌ Wait |

---

## Navigation

- **Index:** [[Templates-Index]] — All templates
- **Up:** [[08-Structure-Index]] — System infrastructure
- **Related MOC:** [[MOC-Supplements]] — Supplement formulary

---

## Footer

Supplement cataloged: YYYY-MM-DD | Last verified: YYYY-MM-DD | Status: active | Tier: GOLD
