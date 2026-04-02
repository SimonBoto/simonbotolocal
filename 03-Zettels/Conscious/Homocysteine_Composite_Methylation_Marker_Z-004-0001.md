---
uid: Z-004-0001
type: zettel
title: Homocysteine Composite Methylation Status Marker
aliases: [Z-004-0001, Homocysteine, Methylation Status, One-Carbon Marker]
domain: 004
tags: [zettel, biomarker, methylation, status/optimal, clinical-protocol, phd-methap]
parent-moc: [[MOC-Vitamin-Metabolism]]
biomarker-type: composite-methylation-marker
target-range: <10 μmol/L
status: conscious
connections:
  - Z-004-0019
  - Z-004-0005
  - Z-003-0010
  - Z-003-0011
  - Z-002-0004
source-litnote: Synthesized from clinical practice
---

# Homocysteine — Composite Methylation Status Marker

**Homocysteine** is a sulfur-containing amino acid that accumulates when methylation is impaired. It's a **composite marker** — elevated homocysteine indicates dysfunction in B12, folate, B6, or iron . **If homocysteine is high, methylation is broken.**

---

## 🎯 Reference Ranges

| Level (μmol/L) | Status | Cardiovascular Risk |
|----------------|--------|---------------------|
| **<6** | 🟢 Optimal | Minimal |
| **6-10** | ✅ Normal | Low |
| **10-15** | 🟡 Mild elevation | Moderate |
| **15-30** | 🟠 Moderate elevation | High |
| **>30** | 🔴 Severe elevation | Very high |

**Target for metabolic health:** <10 μmol/L (some argue <8)

---

## 🔗 Connected Systems

**Methylation Cycle:**
- [[Functional_B12_Deficiency_MMA_Assessment_Z-004-0019.md] — Functional B12 deficiency (MMA + homocysteine together)
- Z-004-0005 (MTHFR variants — impair folate cycle) — *link pending*
- Z-004-0006 (MTR/MTRR — B12-dependent remethylation) — *link pending*

**Cofactor Dependencies:**
- Z-003-0010 (Iron required for methionine synthase) — *link pending*
- Z-003-0011 (Iron deficiency → elevated homocysteine) — *link pending*
- [[Vitamin_D_Optimal_Range_80_150_Z-002-0004.md] —  supports methylation via calcium signaling

**Clinical Outcomes:**
- Elevated homocysteine → endothelial dysfunction
- Independent CVD risk factor
- Associated with cognitive decline, osteoporosis

---

## 🔄 The Methylation Cycle

```
Methionine ──[MTR: B12]──> Homocysteine
    ↑                           │
    └────[MTHFR: 5-MTHF]────────┘
         (folate cycle)

Alternative pathway:
Homocysteine ──[BHMT: betaine]──> Methionine
```

**Homocysteine rises when:**
1. B12 deficiency (can't remethylate)
2. Folate deficiency (no 5-MTHF substrate)
3. MTHFR variant (impaired folate cycle)
4. B6 deficiency (can't transsulfurate)
5. Iron deficiency (cofactor for methionine synthase)

---

## 💊 Intervention Protocol

| Elevation | Homocysteine | Protocol |
|-----------|--------------|----------|
| Mild | 10-15 μmol/L | Methylfolate 800mcg + Methylcobalamin 1000mcg + P5P 50mg |
| Moderate | 15-30 μmol/L | Above + Adenosylcobalamin + Magnesium |
| Severe | >30 μmol/L | Above + Betaine (TMG) 3-6g + Check genetics |

**Iron support:** If ferritin <50, add iron bisglycinate 25mg

---

## 💡 Clinical Pearl

> "Homocysteine is the canary in the coal mine for methylation. When it's elevated, something upstream is broken — B12, folate, iron, or genetics. Fix the root cause, don't just chase the number."

---

*Source: , *
*Created: 2026-02-26 | Domain: 004 | Status: Conscious*

## RELATED FILES
- [[Iron_Family_[B-003-0001]|Biomarker Family]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- s/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- 


---

## Connection to Vault

- Up: [[MOC-Vitamin-Metabolism]]
- Related: [[MOC-Metabolomics]], [[MOC-Clinical-Protocols]]

---
parent-index: [[03-Zettels-Conscious]]
