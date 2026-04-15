---
uid: Z-003-0013
type: zettel
title: Iron Status Patterns Deficiency ACD Overload
aliases: [Z-003-0013, Iron Deficiency, Anemia Chronic Disease, Iron Overload]
domain: 003
tags: [zettel, biomarker, iron, status/deficient, status/toxic, clinical-protocol]
parent-moc: [[MOC-Vitamin-Metabolism]]
biomarker-type: iron-status-pattern
status: conscious
connections:
  - Z-003-0001
  - Z-003-0002
  - Z-007-0001
  - Z-004-0011
source-litnote: Synthesized from clinical practice
extraction-date: 2026-04-15
---

# Iron Status Patterns — Deficiency, ACD, Overload

Iron status cannot be assessed by ferritin alone. **Three distinct patterns** require different interpretations and interventions: true deficiency, anemia of chronic disease (functional deficiency), and iron overload.

---

## 🎯 The Three Patterns

### Pattern 1: True Iron Deficiency
| Marker | Finding | Mechanism |
|--------|---------|-----------|
| **Ferritin** | <30 ng/mL | Depleted stores |
| **Serum iron** | Low | Insufficient circulating iron |
| **TIBC** | High | Liver increases transferrin production |
| **Transferrin sat** | <20% | Low iron relative to capacity |
| **CRP** | Normal | No inflammation confounding |

**Cause:** Blood loss, inadequate intake, malabsorption
**Action:** Iron supplementation (bisglycinate preferred)

---

### Pattern 2: Anemia of Chronic Disease (ACD)
| Marker | Finding | Mechanism |
|--------|---------|-----------|
| **Ferritin** | 80-300 ng/mL | "Normal" or elevated (acute phase reactant) |
| **Serum iron** | Low | Iron trapped in macrophages |
| **TIBC** | Low | Hepcidin suppresses transferrin |
| **Transferrin sat** | <20% | Functional unavailability |
| **CRP** | 🔴 Elevated | Inflammation driving hepcidin |

**Mechanism:** 
- Inflammation → IL-6 → hepcidin ↑
- High hepcidin → iron trapped in macrophages
- Result: Iron present but unavailable for erythropoiesis

**Action:** Treat inflammation, NOT iron (may worsen infection risk)

---

### Pattern 3: Iron Overload
| Marker | Finding | Mechanism |
|--------|---------|-----------|
| **Ferritin** | >300 ng/mL (M), >150 ng/mL (F) | Excess stores |
| **Transferrin sat** | >50% | Excess iron relative to capacity |
| **Serum iron** | High | Elevated circulating iron |
| **Consider** | | HFE hemochromatosis screening |

**Cause:** Hereditary hemochromatosis, transfusion overload, excess supplementation
**Action:** Phlebotomy, avoid iron-rich foods/supplements

---

## 🔗 Connected Systems

**Ferritin Interpretation:**
- [[Ferritin_Interpretation_Iron_Status_Z-003-0001.md] — Ferritin as dual marker (iron + inflammation)
- [[Iron_Studies_TIBC_Transferrin_Sat_Z-003-0002.md] — Transferrin/TIBC dynamics

**Inflammation:**
- [[Inflammation_Markers_CRP_ESR_Z-007-0001.md] — CRP, hepcidin regulation
- Z-003-0014 (Hepcidin in detail) — *link pending*

**Methylation:**
- Z-004-0011 (Iron required for methionine synthase) — *link pending*
- Iron deficiency → elevated homocysteine

---

## 🩺 Clinical Application

### Differentiation Algorithm
```
Low serum iron
│
├─> Check ferritin
│   ├─> <30 ng/mL → True deficiency
│   ├─> 30-100 ng/mL → Check CRP (may be ACD with low-normal ferritin)
│   └─> >100 ng/mL → Check CRP
│       ├─> CRP elevated → Likely ACD
│       ├─> CRP normal + high transferrin sat → Overload
│       └─> CRP normal + low transferrin sat → Mixed picture
│
└─> Check TIBC
    ├─> High TIBC → Deficiency
    └─> Low TIBC → ACD or overload
```

### Soluble Transferrin Receptor (sTfR)
When ferritin is confounded by inflammation:

| Marker | Deficiency | ACD | Overload |
|--------|------------|-----|----------|
| Ferritin | Low | High | High |
| sTfR | 🔴 Elevated | Normal | Low |
| sTfR/log ferritin | >2 | <1 | <1 |

**sTfR** is not affected by inflammation — definitive differentiator.

---

## 🔬 PhD-METHAP Relevance

**Hypothesis:**
Functional iron deficiency (ACD) common in metabolic syndrome
- Obesity = chronic low-grade inflammation
- High hepcidin → iron dysregulation
- May impair methylation, energy 

**Data fields:**
```csv
patient_id,visit,ferritin_ng_ml,iron_ug_dl,tibc_ug_dl,transferrin_sat_pct,crp_mg_l,iron_pattern
```

---

## 💡 Clinical Pearl

> "The most common mistake I see: giving iron to someone with anemia of chronic disease. Their ferritin is 200, CRP is 15 — they're not iron-deficient, they're inflamed. Iron supplementation in ACD can worsen outcomes."

> "When in doubt, check soluble transferrin receptor. It's the only iron marker that doesn't lie about inflammation."

---

*Source: , *
*Created: 2026-02-26 | Domain: 003 | Status: Conscious*

## RELATED FILES
- [[CRP_[B-002-0001]|Biomarker Family]
- [[Iron_Family_[B-003-0001]|Biomarker Family]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- s/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- |Biomarkers MOC]


---

## Connection to Vault

- Up: [[MOC-Vitamin-Metabolism]]
- Related: [[MOC-Metabolomics]], [[MOC-Clinical-Protocols]]

---
parent-index: [[03-Zettels-Conscious]]
