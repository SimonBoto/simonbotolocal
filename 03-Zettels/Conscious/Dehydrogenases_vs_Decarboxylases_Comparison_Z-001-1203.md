---
uid: Z-001-1203
type: zettel
title: Dehydrogenases vs Decarboxylases — Oxidative Strategy Comparison
domain: 001
tags: [zettel, dehydrogenases, decarboxylases, enzyme-mechanism, krebs-cycle, cofactors]
parent-moc: 
extraction-date: 2026-03-09
source-litnote: "[[LitNote_CoA_Synthesis_Decarboxylation_Enzymology_L-001-0630]]"
status: conscious
---

# Dehydrogenases vs Decarboxylases — Oxidative Strategy Comparison

## Overview

Two major enzyme classes handle oxidative reactions in , but with fundamentally different strategies. Understanding their distinctions clarifies cofactor requirements and metabolic control points.

---

## The Core Distinction

| Feature | Dehydrogenase | Decarboxylase |
|---------|---------------|---------------|
| **Primary reaction** | Remove hydrogen atoms (oxidation) | Remove carboxyl group (CO₂) |
| **Cofactor** | NAD⁺ or FAD | Thiamine pyrophosphate (TPP), biotin |
| **Product** | Reduced cofactor (NADH/FADH₂) | CO₂ + remaining carbon skeleton |
| **Energy capture** | Yes (electron transport) | No (CO₂ is waste) |
| **Carbon loss** | No | Yes (1 carbon removed) |

---

## Dehydrogenases — Electron Transfer Strategy

### General Reaction
```
Substrate-H₂ + NAD⁺ → Substrate(oxidized) + NADH + H⁺
```

### Key Examples in Krebs Cycle

| Enzyme | Substrate | Product | Cofactor |
|--------|-----------|---------|----------|
| Isocitrate dehydrogenase | Isocitrate | α-Ketoglutarate | NAD⁺ |
| α-Ketoglutarate dehydrogenase | α-Ketoglutarate | Succinyl-CoA | NAD⁺ |
| Malate dehydrogenase | Malate | Oxaloacetate | NAD⁺ |
| Succinate dehydrogenase | Succinate | Fumarate | FAD (bound) |

### Energy Capture
```
NADH → ETC → ~2.5 ATP
FADH₂ → ETC → ~1.5 ATP
```

---

## Decarboxylases — Carbon Removal Strategy

### General Reaction
```
Substrate-COOH → Substrate(-CO₂) + CO₂
```

### Types of Decarboxylases

**1. Simple Decarboxylases**
- Remove CO₂ without oxidation
- No cofactor required (or metal ion)
- Example: Pyruvate decarboxylase (yeast fermentation)

**2. Oxidative Decarboxylases**
- Remove CO₂ AND oxidize remaining molecule
- Require both TPP and NAD⁺
- Example: Pyruvate dehydrogenase, α-KGDH

### Pyruvate Dehydrogenase Complex Example
```
Pyruvate + NAD⁺ + CoA-SH → Acetyl-CoA + NADH + CO₂
        ↓
   TPP (E1) → Lipoic acid (E2) → FAD (E3) → NAD⁺
```

**Both activities combined:**
- Decarboxylation (CO₂ removal)
- Dehydrogenation (NAD⁺ reduction)

---

## Comparative Analysis

### Krebs Cycle Applications

**Step-by-Step Breakdown:**

| Step | Enzyme | Type | Cofactor(s) | Carbon Change |
|------|--------|------|-------------|---------------|
| Citrate → Isocitrate | Aconitase | Neither (isomerization) | Fe-S | None |
| Isocitrate → α-KG | **Isocitrate DH** | **Oxidative decarboxylase** | NAD⁺, Mg²⁺ | -1C |
| α-KG → Succinyl-CoA | **α-KGDH** | **Oxidative decarboxylase** | TPP, lipoate, CoA, FAD, NAD⁺ | -1C |
| Succinyl-CoA → Succinate | Succinyl-CoA synthetase | Neither | None (uses GDP) | None |
| Succinate → Fumarate | **Succinate DH** | **Dehydrogenase** | FAD | None |
| Fumarate → Malate | Fumarase | Hydratase | None | None |
| Malate → Oxaloacetate | **Malate DH** | **Dehydrogenase** | NAD⁺ | None |

**Summary:**
- 2 oxidative decarboxylations (carbon loss + energy capture)
- 2 dehydrogenations (energy capture only)
- 2 rearrangements (no redox, no carbon loss)

---

## Cofactor Requirements Summary

### Dehydrogenases Need:
- NAD⁺ or FAD (electron acceptors)
- Often metal ions for catalysis
- Simple : hydride transfer

### Decarboxylases Need:
- TPP (thiamine pyrophosphate) — for α-keto acids
- Biotin — for carboxylations (reverse direction)
- Metal ions in some cases
- More complex mechanisms

### Oxidative Decarboxylases Need BOTH:
- TPP for decarboxylation
- NAD⁺/FAD for dehydrogenation
- Additional cofactors (lipoic acid, CoA)

---

## Clinical Relevance

### Beriberi (Thiamine Deficiency)
**Affected enzymes:** Pyruvate DH, α-KGDH, transketolase

**Result:**
- Cannot perform oxidative decarboxylation
- Pyruvate accumulates
- Lactic acidosis
- Neurological symptoms (high metabolic demand tissues)

### Differential Diagnosis
**High lactate + normal pyruvate:** Dehydrogenase issue
**High lactate + high pyruvate:** Decarboxylation issue (thiamine)

### B-ependencies
| Vitamin | Cofactor | Enzyme Type | Deficiency Effect |
|---------|----------|-------------|-------------------|
| B1 (Thiamine) | TPP | Decarboxylase | Beriberi, Wernicke |
| B2 (Riboflavin) | FAD | Dehydrogenase | Fatigue, anemia |
| B3 (Niacin) | NAD⁺ | Dehydrogenase | Pellagra |
| B5 (Pantothenate) | CoA | Both | Fatigue |

---

## Key Insight

**Dehydrogenases capture energy without losing carbon.**
**Decarboxylases remove carbon (often with energy capture).**
**Oxidative decarboxylases do both — the metabolic "two-for-one."**

---

## Related

- [[TPP_Thiamine_Pyrophosphate_Mechanism_Z-001-1200]]
- [[B_Vitamin_Cofactors_Summary_Z-001-1202]]
- [[Decarboxylation_Enzymes_Cofactors_Z-101-0018]]

---

*Source: [[LitNote_CoA_Synthesis_Decarboxylation_Enzymology_L-001-0630]] | 2026-03-09*


## RELATED FILES
- [[Iron_Family_[B-003-0001]|Biomarker Family]]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]]
- 
