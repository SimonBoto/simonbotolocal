---
uid: Z-003-0001
type: zettel
title: Ferritin Interpretation Iron Status and Inflammation
aliases: [Z-003-0001, Ferritin, Iron Storage, Acute Phase Reactant]
domain: 003
tags: [zettel, biomarker, iron, status/optimal, clinical-protocol]
parent-moc: [[MOC-Iron-Metabolism]]
biomarker-type: iron-storage-inflammation-composite
target-range: 30-150 ng/mL (storage iron)
status: conscious
connections:
  - Z-003-0013
  - Z-004-0011
  - Z-004-0001
  - Z-007-0001
source-litnote: Synthesized from clinical practice
---

# Ferritin — Iron Status and Inflammation

**Ferritin** is the primary iron storage protein. However, it's also an **acute phase reactant** — elevated by inflammation independent of iron status. This dual nature makes interpretation nuanced.

---

## 🎯 Reference Ranges

### Standard Laboratory Ranges
| Population | Range |
|------------|-------|
| Adult men | 30-400 ng/mL |
| Adult women | 15-150 ng/mL |

### Optimal Metabolic Ranges
| Context | Target | Notes |
|---------|--------|-------|
| **Iron storage** | 30-150 ng/mL | Adequate stores without overload |
| **With inflammation** | Interpret cautiously | May be falsely elevated |
| **Methylation support** | >50 ng/mL | Iron needed for methionine synthase |
| **Optimal health** | 50-100 ng/mL | Sweet spot for most adults |

---

## 🔗 Connected Systems

**Iron [[KEYWORD-Metabolism|metabolism]]:**
- [[Iron_Status_Patterns_ACD_Overload_Z-003-0013.md]] — Iron status patterns (deficiency vs anemia of chronic disease)
- [[Iron_Studies_TIBC_Transferrin_Sat_Z-003-0002.md]] — Transferrin/TIBC (transport capacity)
- Z-003-0003 (Transferrin saturation — functional availability) — *link pending*

**Methylation:**
- Z-004-0011 (Iron required for methionine synthase) — *link pending*
- [[Homocysteine_Composite_Methylation_Marker_Z-004-0001.md]] — Homocysteine (elevated when iron low)

**Inflammation:**
- [[Inflammation_Markers_CRP_ESR_Z-007-0001.md]] — CRP (inflammation elevates ferritin)

---

## 🩺 Clinical Patterns

### Pattern 1: True Iron Deficiency
| Marker | Finding | Interpretation |
|--------|---------|----------------|
| Ferritin | <30 ng/mL | 🔴 Low stores |
| Serum iron | Low | Confirms deficiency |
| TIBC | High | Liver making more transferrin |
| Transferrin sat | <20% | Insufficient iron transport |
| CRP | Normal | No inflammation confounding |

**Action:** Iron supplementation (bisglycinate form preferred)

### Pattern 2: Anemia of Chronic Disease (Functional Iron Deficiency)
| Marker | Finding | Interpretation |
|--------|---------|----------------|
| Ferritin | 80-300 ng/mL | "Normal" or elevated |
| Serum iron | Low | Iron trapped in macrophages |
| TIBC | Low | Hepcidin suppresses transferrin |
| Transferrin sat | <20% | Functional unavailability |
| CRP | Elevated | 🔴 Inflammation driving hepcidin |

**Action:** Treat inflammation, NOT iron supplementation (may worsen)

### Pattern 3: Iron Overload
| Marker | Finding | Interpretation |
|--------|---------|----------------|
| Ferritin | >300 (M), >150 (F) | 🔴 Elevated |
| Transferrin sat | >50% | Iron overload |
| Consider | | Hemochromatosis HFE screening |

**Action:** Phlebotomy, avoid iron-rich foods/supplements

---

## 🔬 The Ferritin-Inflammation Problem

**Why ferritin rises in inflammation:**
1. Cytokines (IL-6) → hepatocyte ferritin synthesis
2. Iron trapped inside macrophages (hepcidin effect)
3. Result: High ferritin but functional iron deficiency

**Clinical consequence:**
- Patient appears iron-replete
- Actually iron-starved at tissue level
- Classic in chronic disease, infection, obesity

### Adjustment Strategy
| CRP | Ferritin Interpretation |
|-----|------------------------|
| <1 mg/L | Ferritin accurate for iron status |
| 1-10 mg/L | Ferritin may be 20-50% inflated |
| >10 mg/L | Ferritin unreliable — check sTfR |

**Soluble transferrin receptor (sTfR):** Not affected by inflammation — better marker when CRP elevated.

---

## 💊 Intervention Thresholds

### Supplementation Indicated
| Scenario | Ferritin | Action |
|----------|----------|--------|
| True deficiency | <30 ng/mL | Supplement 25-50 mg elemental iron |
| Suboptimal | 30-50 ng/mL | Consider supplement if symptomatic |
| Methylation support | <50 ng/mL | Supplement if high homocysteine |

### Monitor, Don't Supplement
| Scenario | Ferritin | Action |
|----------|----------|--------|
| Optimal | 50-150 ng/mL | Maintain diet, monitor |
| High with inflammation | >150 + high CRP | Treat inflammation, recheck |

### Reduce/Iron Restriction
| Scenario | Ferritin | Action |
|----------|----------|--------|
| Overload | >300 (M), >150 (F) | Phlebotomy, avoid supplements |
| Hemochromatosis | >1000 | Urgent intervention |

---

## 🔬 PhD-METHAP Relevance

**Secondary marker:**
- Ferritin as inflammation proxy (with CRP)
- Iron status → methylation capacity → metabolic flexibility

**Data fields:**
```csv
patient_id,visit,ferritin_ng_ml,crp_mg_l,iron_status_adjusted
```

---

## 💡 Clinical Pearls

> "Ferritin is a liar in inflammation. A patient with ferritin 200 and CRP 15 may be more iron-deficient than someone with ferritin 40 and CRP 0.5. Always check CRP."

> "When in doubt, check soluble transferrin receptor (sTfR). It's the only iron marker that doesn't care about inflammation."

> "For methylation support, I want ferritin >50. Below that, homocysteine tends to rise even with B12/folate supplementation."

---

## Data Export (METHAP)

```csv
patient_id,visit,ferritin_ng_ml,crp_mg_l,sTfR_mg_l,iron_status
```

---

*Source: [[Ref_Weiss_Anomaly_Chronic_Disease_2005]], [[Ref_Nemeth_Hepcidin_2004]]*
*Created: 2026-02-26 | Domain: 003 | Status: Conscious*

## RELATED FILES
- [[[[KEYWORD-Biomarker|biomarker]]s/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]]
- [[MOC-[[KEYWORD-Biomarker|biomarkers]]|Biomarkers MOC]]

