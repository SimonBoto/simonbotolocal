---
uid: Z-001-1258
type: zettel
title: ATP Yield Comparison — Glucose vs Ketones vs Fatty Acids
aliases: [Z-001-1258]
domain: 001
tags: [zettel, ATP-yield, energy-efficiency, glucose, BHB, fatty-acids, oxidative-phosphorylation]
parent-moc: ", "
source-litnote: "[[LitNote_Ketone_Body_Metabolism_Deep_Dive_L-001-0655]"
status: conscious
---

# ATP Yield Comparison

Complete oxidation of different fuel molecules yields dramatically different ATP amounts due to varying carbon content, reduction state, and metabolic pathway efficiency.

---

## Summary Table

| Substrate | Carbons | ATP Yield | ATP/Carbon | Primary Use |
|-----------|---------|-----------|------------|-------------|
| **Glucose** | 6 | 30-32 | 5.0-5.3 | Universal (brain, muscle, all tissues) |
| **Beta-Hydroxybutyrate (BHB)** | 4 | 21-23 | 5.3-5.8 | Brain alternative, heart, muscle |
| **Palmitic Acid (C16:0)** | 16 | ~129 | 8.1 | High-energy storage, prolonged fasting |
| **Oleic Acid (C18:1)** | 18 | ~256* | 14.2* | Storage; *note: value seems anomalous |

*Note: The 256 ATP value for oleic acid reported in CGPT-0647 appears inconsistent with standard biochemistry (~146 ATP expected). May reflect alternative calculation method or error.

---

## Detailed Calculations

### 1. Glucose (C₆H₁₂O₆)

**Pathway:** Glycolysis → Pyruvate → Krebs → OxPhos

| Stage | Products | ATP Calculation |
|-------|----------|-----------------|
| **Glycolysis** | 2 ATP (substrate level), 2 NADH | +2 ATP + 5 ATP (2 NADH × 2.5) |
| **Pyruvate → Acetyl-CoA** | 2 NADH | +5 ATP |
| **Krebs cycle** | 6 NADH, 2 FADH₂, 2 GTP | +15 + 3 + 2 = +20 ATP |
| **Glycolysis cost** | 2 ATP invested | -2 ATP |
| **Shuttle cost** | Cytosolic NADH →  | ~0-2 ATP (varies by shuttle) |

**Net: 30-32 ATP**

**Note:** Lower value (30) if glycerol-3-phosphate shuttle used (NADH → FADH₂); higher (32) if malate-aspartate shuttle preserves NADH.

---

### 2. Beta-Hydroxybutyrate (BHB) (C₄H₈O₃)

**Pathway:** BDH1 → SCOT → Thiolase → 2×Krebs

| Step | Products | ATP Calculation |
|------|----------|-----------------|
| **BDH1** | 1 NADH | +2.5 ATP |
| **2 Acetyl-CoA → Krebs** | 6 NADH, 2 FADH₂, 2 GTP | +15 + 3 + 2 = +20 ATP |

**Net: ~22.5 ATP** (rounded to 21-23 in source)

**Efficiency per carbon:** 22.5 ATP / 4 carbons = **5.6 ATP/carbon**

**Comparison to glucose:** 22.5/32 = **70% of glucose yield**

---

### 3. Palmitic Acid (C₁₆H₃₂O₂) — Saturated C16

**Pathway:** Activation → 7 cycles Beta-oxidation → 8×Krebs

| Stage | Products | ATP Calculation |
|-------|----------|-----------------|
| **Activation** | Fatty acyl-CoA synthetase | **-2 ATP** (ATP → AMP) |
| **Beta-oxidation (7 cycles)** | 7 NADH, 7 FADH₂ | +17.5 + 10.5 = +28 ATP |
| **8 Acetyl-CoA → Krebs** | 24 NADH, 8 FADH₂, 8 GTP | +60 + 12 + 8 = +80 ATP |

**Net: 106 ATP** (conservative standard calculation)

**CGPT-0647 reported:** ~129 ATP
- May include glycerol-3-phosphate shuttle efficiency for reducing equivalents
- Or alternative P/O ratios

**Efficiency per carbon:** 106/16 = **6.6 ATP/carbon**

---

### 4. Oleic Acid (C₁₈H₃₄O₂) — Monounsaturated C18

**Expected Calculation:**
- 8 beta-oxidation cycles (1 less FADH₂ due to double bond)
- 9 acetyl-CoA
- Expected: ~**146 ATP**

**CGPT-0647 reported:** ~256 ATP
- **This value appears inconsistent with standard biochemistry**
- Possible explanations:
  1. Misinterpretation of partial pathways
  2. Inclusion of glycerol backbone (if from triglyceride)
  3. Calculation error in source material

**Recommendation:** Use ~146 ATP as physiologically accurate value.

---

## Comparative Analysis

### Energy Density (ATP per Carbon)

```
Glucose:     ████████████ (~5.3)
BHB:         █████████████ (~5.6)
Palmitic:    ████████████████ (~6.6)
Oleic:       ████████████████ (~6.4 corrected)
```

**Why  yield more ATP per carbon:**
1. **Higher reduction state:** More C-H bonds, fewer C-O bonds
2. **No oxygen investment:** Glucose already partially oxidized
3. **Beta-oxidation efficiency:** Direct production of acetyl-CoA

### Storage Efficiency

| Fuel | Storage Form | Energy Density (kcal/g) | Hydration |
|------|--------------|------------------------|-----------|
| **Glycogen** | Tissue + water | 4 | Highly hydrated (3-4g water/g glycogen) |
| **Fat** | Adipose (anhydrous) | 9 | Anhydrous |

**Advantage of fat storage:** 6× more energy per gram of tissue weight

---

## Practical Implications

### Fasting 
**1800 kcal/day requirement:**
- From glucose: 450g glucose needed
- From fatty acids: 200g fatty acids needed
- From BHB: Would require massive ketogenesis (not sustainable alone)

**Reality:** Mixed fuel use with increasing ketone contribution over time

### Exercise Fuel Selection
| Intensity | Primary Fuel | Why |
|-----------|--------------|-----|
| **Low (<50% VO₂max)** | Fatty acids | Oxygen available for complete oxidation |
| **Moderate (50-75%)** | Mixed (fat + glucose) | Transition zone |
| **High (>75%)** | Glucose | Faster ATP production (glycolytic flux) |

### Brain Fuel Economics
**Daily brain energy requirement:** ~120g glucose equivalent

**In ketosis:**
- Glucose: 40g (gluconeogenesis from glycerol + dietary)
- Ketones: 60-80g equivalent
- **Sparing:** 60-80g glucose per day for other tissues

---

## P/O Ratios: The Modern View

Traditional textbook values used:
- NADH: 3 ATP
- FADH₂: 2 ATP

**Current understanding (chemiosmotic):**
- NADH: ~2.5 ATP (10 H⁺ pumped / 4 H⁺ per ATP)
- FADH₂: ~1.5 ATP (6 H⁺ pumped / 4 H⁺ per ATP)

These "non-integer" values account for:
- Proton leak
- ATP synthase stoichiometry
- Phosphate transport costs

---

## Related Zettels

- [[Z-001-1256_BHB_Production_Fatty_Acids] — Quantification from palmitic acid
- [[Z-001-1257_Ketolysis_SCOT_Mechanism] — How BHB is utilized
- [[Z-001-1270_Palmitic_Acid_Synthesis_Cost] — ATP cost of fatty acid synthesis

---

## Source

Extracted from: [[LitNote_Ketone_Body_Metabolism_Deep_Dive_L-001-0655]  
CGPT-0647 (April 30, 2023) — Messages 23-26, 31-32


## RELATED FILES
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]
