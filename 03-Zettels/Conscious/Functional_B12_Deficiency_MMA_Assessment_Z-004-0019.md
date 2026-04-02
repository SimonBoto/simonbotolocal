---
uid: Z-004-0019
type: zettel
title: Functional B12 Deficiency MMA and Homocysteine Assessment
aliases: [Z-004-0019, Functional B12 Deficiency, MMA, Methylmalonic Acid]
domain: 004
tags: [zettel, biomarker, methylation, b12, status/deficient, clinical-protocol]
parent-moc: 
biomarker-type: functional-nutrient-status
mma-threshold: <271 nmol/L
homocysteine-threshold: <10 μmol/L
serum-b12-target: ">600 pg/mL"
status: conscious
source-litnote: Synthesized from clinical practice
connections:
  - Z-004-0001
  - Z-004-0005
  - Z-003-0010
  - Z-003-0011
---

# Functional B12 Deficiency — MMA and Homocysteine Assessment

**Functional B12 deficiency** occurs when serum B12 appears normal (200-900 pg/mL) but tissue B12 is inadequate. Methylmalonic acid (MMA) and homocysteine reveal the true status. **If methylation is broken, nothing works.**

---

## 🎯 The Problem

### Serum B12 Limitations
| Serum B12 | Status | Tissue Reality |
|-----------|--------|----------------|
| 200-400 pg/mL | "Low normal" | Often deficient |
| 400-600 pg/mL | "Normal" | May be functionally deficient |
| >600 pg/mL | Optimal | Likely adequate |

**Serum B12 measures circulating B12, not cellular availability.**

### Functional Markers
| Marker | Threshold | Meaning |
|--------|-----------|---------|
| **MMA** | <271 nmol/L | Mitochondrial B12 status (adenosylcobalamin) |
| **Homocysteine** | <10 μmol/L | Cytoplasmic B12 status (methylcobalamin) |
| **Both elevated** | — | Definite functional deficiency |

---

## 🔬 Why MMA?

**Methylmalonyl-CoA mutase** requires adenosylcobalamin (B12).

Without B12:
- Methylmalonyl-CoA → methylmalonic acid (MMA) accumulation
- MMA spills into blood and urine
- **Elevated MMA = mitochondrial B12 deficiency**

**Advantage over homocysteine:**
- More specific to B12 (homocysteine also rises with folate deficiency)
- Earlier marker (rises before homocysteine)
- Reflects tissue (mitochondrial) status

---

## 🔗 Connected Systems

**Methylation Cycle:**
- [[Homocysteine_Composite_Methylation_Marker_Z-004-0001.md] — Homocysteine (composite methylation status)
- Z-004-0005 (MTHFR — folate cycle, homocysteine alternative pathway) — *link pending*

**Iron Interdependence:**
- Z-003-0010 (Iron required for methionine synthase) — *link pending*
- Z-003-0011 (Iron deficiency → elevated homocysteine) — *link pending*

**Clinical Context:**
- Z-004-0012 (Serum B12 vs functional status comparison) — *link pending*
- Z-004-0020 (B12 supplementation protocols) — *link pending*

---

## 🩺 Clinical Scenarios

### Scenario 1: Normal Serum, Functional Deficiency
| Marker | Value | Interpretation |
|--------|-------|----------------|
| Serum B12 | 450 pg/mL | "Normal" |
| MMA | 450 nmol/L | 🔴 **Elevated** (>271) |
| Homocysteine | 14 μmol/L | 🔴 **Elevated** (>10) |

**Diagnosis:** Functional B12 deficiency despite "normal" serum
**Action:** B12 supplementation (methylcobalamin + adenosylcobalamin)

### Scenario 2: High Serum, Still Deficient (Supplementation Artifact)
| Marker | Value | Interpretation |
|--------|-------|----------------|
| Serum B12 | 1,200 pg/mL | High (supplementing) |
| MMA | 380 nmol/L | 🔴 **Elevated** |
| Homocysteine | 12 μmol/L | 🔴 **Elevated** |

**Diagnosis:** Taking B12 but not absorbing/utilizing
**Possible causes:**
- Cyanocobalamin form (poor conversion)
- MTHFR variant (impaired methylation)
- GI malabsorption (intrinsic factor issue)
- Medications (metformin, PPIs)

**Action:** Switch to methylcobalamin + adenosylcobalamin, sublingual or injectable

### Scenario 3: True Adequacy
| Marker | Value | Interpretation |
|--------|-------|----------------|
| Serum B12 | 800 pg/mL | Optimal |
| MMA | 180 nmol/L | ✅ Normal |
| Homocysteine | 8 μmol/L | ✅ Optimal |

**Diagnosis:** Adequate B12 status

---

## 🔄 Interpretation Algorithm

```
Start: Suspect B12 deficiency (fatigue, neuropathy, cognitive fog)
│
├─> Check Serum B12
│   ├─> <400 pg/mL → Deficient (treat)
│   ├─> 400-600 pg/mL → Check MMA + Homocysteine
│   │   ├─> Both normal → Adequate
│   │   ├─> Either elevated → Functional deficiency (treat)
│   └─> >600 pg/mL → Likely adequate (check MMA if symptoms persist)
│
└─> If supplementing and symptoms persist
    ├─> Check MMA + Homocysteine
    └─> Evaluate form (cyano vs methyl vs adenosyl)
```

---

## 💊 Supplementation Protocol

### Forms (Critical)
| Form | Use | Notes |
|------|-----|-------|
| **Methylcobalamin** | Primary | Active form for methylation |
| **Adenosylcobalamin** | Add-on | Mitochondrial function (MMA) |
| **Hydroxocobalamin** | Alternative | Long-acting, injectable |
| **Cyanocobalamin** | Avoid | Requires conversion, poor in some |

### Dosing
- **Sublingual:** 1,000-2,000 mcg daily (methylcobalamin)
- **Oral:** 1,000 mcg daily (absorption limited without IF)
- **Injectable:** 1,000 mcg IM weekly (severe deficiency, malabsorption)

### Cofactors
- **Folate (5-MTHF):** 400-800 mcg (not folic acid)
- **B6 (P5P):** 25-50 mg (for homocysteine )
- **Magnesium:** Required for B12 utilization

---

## 🔬 Causes of Functional Deficiency

### Common Causes
1. **MTHFR variant** — Impaired methylation, normal serum B12
2. **Metformin use** — B12 malabsorption (30-40% of long-term users)
3. **PPI/H2 blockers** — Reduced gastric acid → reduced B12 absorption
4. **Vegan/vegetarian diet** — No dietary B12
5. **Age >60** — Reduced gastric acid (atrophic gastritis)
6. **GI surgery** — Gastric bypass, ileal resection
7. **Pernicious anemia** — Autoimmune intrinsic factor deficiency

---

## 📊 Population Prevalence

| Population | Functional Deficiency Risk |
|------------|---------------------------|
| General adults | 5-10% |
| Metformin users | 30-40% |
| PPI users | 20-30% |
| Vegans (no supplementation) | 50-90% |
| Elderly (>65) | 10-15% |

---

## 💡 Clinical Pearls

> "Serum B12 is a screening test, not a diagnostic test. If symptoms persist with 'normal' B12, check MMA."

> "Metformin is a wonder drug for diabetes, but it's a B12 thief. Check MMA in all long-term users, not just serum B12."

> "Methylcobalamin + adenosylcobalamin covers both compartments: methylation (homocysteine) and mitochondria (MMA)."

---

## Data Export (METHAP)

```csv
patient_id,visit,serum_b12_pg_ml,mma_nmol_l,homocysteine_umol_l,functional_status
```

---

*Source: , , *
*Created: 2026-02-26 | Domain: 004 | Status: Conscious*

## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- s/Iron_Family_[B-003-0001]|Biomarker Family Guide]
- |Biomarkers MOC]

