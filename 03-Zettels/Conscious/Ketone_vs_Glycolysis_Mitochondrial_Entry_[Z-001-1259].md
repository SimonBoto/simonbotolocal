---
uid: Z-001-1259
type: zettel
title: Ketone vs Glycolysis Mitochondrial Entry — Different Routes to Acetyl-CoA
aliases: [Z-001-1259]
domain: 001
tags: [zettel, ketones, glycolysis, mitochondrial-entry, acetyl-CoA, MCT, PDH, cellular-compartmentalization]
parent-moc: ", "
source-litnote: "[[LitNote_Ketone_Body_Metabolism_Deep_Dive_L-001-0655]]"
status: conscious
---

# Ketone vs Glycolysis l Entry

Ketone bodies and glucose-derived pyruvate both ultimately produce mitochondrial acetyl-CoA for Krebs cycle entry, but they follow fundamentally different cellular routes that reflect their distinct metabolic origins and regulatory requirements.

---

## Overview Comparison

| Feature | Ketone Body Utilization | Glycolysis → Pyruvate |
|---------|------------------------|----------------------|
| **Starting substrate** | BHB or acetoacetate (liver-derived) | Glucose (dietary or stored glycogen) |
| **Initial location** | Extracellular (blood) → Cytoplasm | Extracellular → Cytoplasm |
| **Pathway location** | Entirely mitochondrial | Cytoplasm + Mitochondria |
| **Transport protein** | MCT1/MCT2 (Monocarboxylate transporters) | GLUT transporters (glucose), mitochondrial pyruvate carrier (pyruvate) |
| **Key enzyme** | SCOT (succinyl-CoA:3-oxoacid-CoA transferase) | PDH (pyruvate dehydrogenase) |
| **ATP generated directly** | 0 (from conversion steps) | 2 ATP (substrate-level glycolysis) |
| **Reducing equivalents** | BDH1 produces NADH (mitochondrial) | GAPDH produces NADH (cytoplasmic) |

---

## Ketone Body Pathway

### Step 1: Cellular Uptake
**Monocarboxylate Transporters (MCTs)**
- **MCT1:** Widely expressed; high affinity (heart, muscle, brain)
- **MCT2:** Liver, kidney; lower affinity, higher capacity
- **Mechanism:** H⁺-symport (follows proton gradient)
- **Km:** ~5-10 mM for BHB (well below typical ketotic levels of 1-5 mM)

### Step 2: Mitochondrial Entry
**MCT1 also localizes to inner mitochondrial membrane**
- BHB/acetoacetate enter mitochondrial matrix directly
- No separate transport system needed (unlike pyruvate)

### Step 3: Conversion to Acetyl-CoA (All Mitochondrial)

```
BHB ──BDH1──→ Acetoacetate + NADH
    │
    └──SCOT──→ Acetoacetyl-CoA (using succinyl-CoA)
           │
           └──Thiolase──→ 2 Acetyl-CoA
```

**Compartment:** All reactions occur in **mitochondrial matrix**

**Energy investment:** Uses succinyl-CoA high-energy thioester bond

---

## Glycolysis → Pyruvate Pathway

### Step 1: Cellular Uptake
**GLUT Transporters**
- **GLUT1:** Basal glucose uptake (brain, erythrocytes)
- **GLUT2:** Liver, pancreas (high Km, "glucose sensor")
- **GLUT4:** -responsive (muscle, adipose)

### Step 2: Cytoplasmic Glycolysis

```
Glucose → G6P → F6P → F1,6BP → ... → Pyruvate
```

**Key features:**
- **10-step pathway** in cytoplasm
- **2 ATP invested** (hexokinase, PFK-1)
- **4 ATP produced** (substrate-level: 2× phosphoglycerate kinase, 2× pyruvate kinase)
- **Net: 2 ATP**
- **2 NADH produced** (glyceraldehyde-3-phosphate dehydrogenase)

### Step 3: Pyruvate Mitochondrial Transport
**Mitochondrial Pyruvate Carrier (MPC)**
- Inner mitochondrial membrane transporter
- Symport with H⁺ or antiport with OH⁻
- Rate-limiting for pyruvate oxidation
- **Inhibited by:** Cyanide, certain drugs

### Step 4: PDH Reaction (Mitochondrial Matrix)

```
Pyruvate + NAD⁺ + CoA → Acetyl-CoA + NADH + CO₂
            (PDH — Pyruvate Dehydrogenase Complex)
```

**Multi-enzyme complex:**
- E1: Pyruvate dehydrogenase (thiamine pyrophosphate)
- E2: Dihydrolipoyl transacetylase (lipoic acid)
- E3: Dihydrolipoyl dehydrogenase (FAD → NAD⁺)

**Regulation:**
- **Inhibited by:** Acetyl-CoA, NADH, ATP (product inhibition)
- **Activated by:** Pyruvate, insulin (via PDP phosphatase)

---

## Key Differences

### 1. Compartmentalization

| Aspect | Ketones | Pyruvate |
|--------|---------|----------|
| **Cytoplasmic ** | None | Entire glycolytic pathway |
| **Mitochondrial entry** | Direct (MCT) | Requires MPC transporter |
| **NADH production site** | Mitochondrial (BDH1) | Cytoplasmic (GAPDH) |
| **NADH shuttle needed?** | No (already mitochondrial) | Yes (malate-aspartate or glycerol-3-phosphate) |

### 2. Reducing Equivalent Handling

**Ketones:**
- BDH1 produces NADH **directly in mitochondria**
- No shuttle required
- Full 2.5 ATP per NADH captured

**Pyruvate/Glycolysis:**
- GAPDH produces NADH in **cytoplasm**
- Must shuttle into mitochondria:
  - **Malate-aspartate shuttle:** Preserves NADH (2.5 ATP)
  - **Glycerol-3-phosphate shuttle:** Converts to FADH₂ (1.5 ATP)
- **Cost:** 0-1 ATP equivalent depending on shuttle used

### 3. Regulatory Control Points

**Ketones:**
- Limited regulation at entry/utilization level
- Primary control is **hepatic production** (ketogenesis)
- SCOT expression determines tissue capacity

**Pyruvate:**
- Multiple control points:
  - Glucose uptake (GLUT4 translocation — insulin-dependent)
  - Glycolysis (PFK-1 — allosterically regulated)
  - Pyruvate transport (MPC activity)
  - PDH complex (phosphorylation state — insulin/Pyruvate regulated)

### 4. ATP Production Timing

**Ketones:**
- No ATP from conversion steps
- All ATP from subsequent Krebs/OxPhos

**Pyruvate/Glycolysis:**
- **2 ATP produced in cytoplasm** (anaerobic)
- Can provide ATP independent of oxygen (short-term)
- Complete oxidation requires mitochondrial function

---

## Physiological Significance

### Why Two Different Pathways?

**Ketones:**
- **Water-soluble** transport form of fat-derived energy
- **Cross blood-brain barrier** (unlike fatty acids)
- **Bypass cytoplasmic regulation** for rapid utilization
- **Exportable fuel:** Liver produces for peripheral use

**Pyruvate/Glycolysis:**
- **Rapid ATP production** (substrate-level, no oxygen needed)
- **Anaerobic capacity** for high-intensity efforts
- **Glucose conservation** via reciprocal regulation with fatty acids

### Tissue Preferences

| Tissue | Preferred Fuel | Rationale |
|--------|---------------|-----------|
| **Brain (normal)** | Glucose | High metabolic demand, GLUT1/3 constitutive |
| **Brain (fasting)** | Ketones | Sparing glucose, BHB crosses BBB efficiently |
| **Heart** | Fatty acids > Ketones > Glucose | High oxidative capacity, continuous work |
| **Muscle (rest)** | Fatty acids | Efficiency, abundance |
| **Muscle (exercise)** | Glucose | Speed of ATP production |
| **Erythrocytes** | Glucose only | No mitochondria; depend on glycolysis |

---

## Integration: The Randle Cycle

**Glucose-Fatty Acid Cycle:**
- High fatty acid oxidation → ↑Acetyl-CoA → ↑Citrate → Inhibits PFK-1 → ↓Glycolysis
- High glucose → ↑Pyruvate → ↑Malonyl-CoA → Inhibits CPT-1 → ↓Fatty acid oxidation

**Metabolic logic:** Prevents simultaneous high rates of both pathways (futile cycling).

---

## Related Zettels

- [[Z-001-1257_Ketolysis_SCOT_Mechanism]] — Detailed ketone utilization pathway
- [[Z-001-1258_ATP_Yield_Comparison]] — Energy efficiency comparison
- [[Z-001-1255_Insulin_Resistance_Beta_Oxidation_Block]] — Malonyl-CoA regulation

---

## Source

Extracted from: [[LitNote_Ketone_Body_Metabolism_Deep_Dive_L-001-0655]]  
CGPT-0647 (April 30, 2023) — Messages 21-22


## RELATED FILES
- 
