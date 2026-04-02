---
uid: Z-003-0002
type: zettel
title: Iron Studies Panel TIBC Transferrin Saturation
aliases: [Z-003-0002, TIBC, Transferrin, Transferrin Saturation, Iron Binding]
domain: 003
tags: [zettel, biomarker, iron, status/optimal, clinical-protocol]
parent-moc: 
biomarker-type: iron-transport-panel
tibc-range: 250-400 μg/dL
transferrin-sat-optimal: 20-50%
transferrin-sat-low: <20%
transferrin-sat-high: ">50%"
status: conscious
connections:
  - Z-003-0001
  - Z-003-0013
  - Z-004-0011
source-litnote: Synthesized from clinical practice
---

# Iron Studies Panel — TIBC and Transferrin Saturation

**TIBC (total iron binding capacity)** and **transferrin saturation** measure iron transport capacity and utilization. They differentiate true deficiency from anemia of chronic disease and identify iron overload.

---

## 🎯 TIBC (Total Iron Binding Capacity)

**What it measures:** Capacity of transferrin to bind iron

| Level (μg/dL) | Interpretation |
|---------------|----------------|
| **<250** | Low TIBC — anemia of chronic disease or overload |
| **250-400** | 🟢 Normal |
| **>400** | High TIBC — iron deficiency (liver making more transferrin) |

**Relationship to transferrin:**
TIBC ≈ Transferrin × 1.4 (mathematical conversion)
- Transferrin directly measured (mg/dL)
- TIBC calculated from transferrin

---

## 🎯 Transferrin Saturation

**Formula:**
$$
\text{Transferrin Saturation} = \frac{\text{Serum Iron (μg/dL)}}{\text{TIBC (μg/dL)}} \times 100
$$

| Saturation (%) | Status | Interpretation |
|----------------|--------|----------------|
| **<20** | 🔴 Low | Iron deficiency or ACD |
| **20-50** | 🟢 Optimal | Adequate iron transport |
| **>50** | 🔴 High | Iron overload risk |

---

## 🔗 Connected Systems

**Iron Status:**
- [[Ferritin_Interpretation_Iron_Status_Z-003-0001.md]] — Ferritin (stores, but confounded by inflammation)
- [[Iron_Status_Patterns_ACD_Overload_Z-003-0013.md]] — Iron patterns (deficiency vs ACD vs overload)
- TIBC + transferrin sat clarify ferritin interpretation

**Methylation:**
- Z-004-0011 (Iron required for methionine synthase) — *link pending*
- Transferrin sat <20% → impaired methylation → elevated homocysteine

---

## 🩺 Clinical Patterns

### Pattern 1: True Iron Deficiency
| Marker | Value | Interpretation |
|--------|-------|----------------|
| Ferritin | 15 ng/mL | 🔴 Low stores |
| TIBC | 450 μg/dL | 🔴 High (liver compensating) |
| Transferrin sat | 12% | 🔴 Low utilization |
| Serum iron | 45 μg/dL | 🔴 Low |

**Action:** Iron supplementation indicated

### Pattern 2: Anemia of Chronic Disease
| Marker | Value | Interpretation |
|--------|-------|----------------|
| Ferritin | 180 ng/mL | "Normal" (inflated by inflammation) |
| TIBC | 200 μg/dL | 🔴 Low (hepcidin suppresses) |
| Transferrin sat | 15% | 🔴 Low (functional deficiency) |
| Serum iron | 30 μg/dL | 🔴 Low (trapped in macrophages) |
| CRP | 12 mg/L | 🔴 Elevated (inflammation) |

**Action:** Treat inflammation, NOT iron

### Pattern 3: Iron Overload
| Marker | Value | Interpretation |
|--------|-------|----------------|
| Ferritin | 450 ng/mL | 🔴 High |
| TIBC | 220 μg/dL | Low (suppresses transferrin) |
| Transferrin sat | 65% | 🔴 High (overload) |
| Serum iron | 143 μg/dL | 🔴 High |

**Action:** Phlebotomy, investigate hemochromatosis

---

## 🔬 PhD-METHAP Relevance

**Iron-methylation axis:**
- Transferrin sat <20% → impaired methylation
- Correlate with homocysteine levels

**Data fields:**
```csv
patient_id,visit,tibc_ug_dl,transferrin_sat_pct,iron_status_pattern
```

---

## 💡 Clinical Pearl

> "Ferritin tells you about stores, but TIBC and transferrin sat tell you about transport. A patient can have ferritin 100 (looks okay) but TIBC 450 and sat 15% — they're iron deficient and need supplementation."

> "Transferrin saturation >50% is the earliest marker of iron overload, before ferritin rises significantly. Screen hemochromatosis if you see this pattern."

---

*Source: _1979]], *
*Created: 2026-02-26 | Domain: 003 | Status: Conscious*

## RELATED FILES
- [[Iron_Family_[B-003-0001]|Biomarker Family]]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- s/CRP_[B-002-0001]|Biomarker Family Guide]]
- |Biomarkers MOC]]

