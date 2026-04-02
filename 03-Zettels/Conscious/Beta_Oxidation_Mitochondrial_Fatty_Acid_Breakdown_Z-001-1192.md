---
uid: Z-001-1192
type: zettel
title: Beta-Oxidation — Mitochondrial Fatty Acid Breakdown
domain: 001
tags: [zettel, beta-oxidation, mitochondria, fatty-acids, acetyl-coa, carnitine]
parent-moc: [[MOC-Insulin-Signaling]]
extraction-date: 2026-03-08
source-litnote: "[[LitNote_Dicarboxylic_Acid_Formation_Fatty_Acids_L-001-0628]"
status: conscious
---

# Beta-Oxidation — l Fatty Acid Breakdown

## Overview

β-oxidation is the primary pathway for fatty acid catabolism, occurring in mitochondria (and peroxisomes for very long chains). It sequentially removes 2-carbon units as acetyl-CoA, generating ATP precursors.

---

## The Four Steps of β-Oxidation

Each cycle removes one acetyl-CoA (2 carbons):

### Step 1: Oxidation (FAD-dependent)
```
Acyl-CoA + FAD → trans-Δ²-Enoyl-CoA + FADH₂
```
- Enzyme: Acyl-CoA dehydrogenase
- Product: FADH₂ → ETC → ~1.5 ATP

### Step 2: Hydration
```
trans-Δ²-Enoyl-CoA + H₂O → L-3-Hydroxyacyl-CoA
```
- Enzyme: Enoyl-CoA hydratase

### Step 3: Oxidation (NAD⁺-dependent)
```
L-3-Hydroxyacyl-CoA + NAD⁺ → 3-Ketoacyl-CoA + NADH
```
- Enzyme: L-3-Hydroxyacyl-CoA dehydrogenase
- Product: NADH → ETC → ~2.5 ATP

### Step 4: Thiolysis
```
3-Ketoacyl-CoA + CoA → Acyl-CoA (n-2) + Acetyl-CoA
```
- Enzyme: β-ketothiolase
- Product: Acetyl-CoA enters Krebs cycle

---

## Energy Yield Example: Palmitate (C16:0)

**7 cycles of β-oxidation:**
- 7 FADH₂ → ~10.5 ATP
- 7 NADH → ~17.5 ATP

**8 Acetyl-CoA produced:**
- Each through Krebs → ~10 ATP
- 8 × 10 = 80 ATP

**Total:** ~108 ATP (minus activation cost)

**Compare:** Glucose (C6) → ~30-32 ATP

---

## Carnitine Shuttle

Long-chain fatty acids (>C12) need carnitine to enter mitochondria:

### Step 1: Activation (Cytoplasm)
```
Fatty acid + CoA + ATP → Fatty acyl-CoA
```

### Step 2: Carnitine Transfer (Outer Membrane)
```
Fatty acyl-CoA + Carnitine → Acylcarnitine + CoA
```
- Enzyme: CPT-I (Carnitine palmitoyltransferase I)
- Rate-limiting step

### Step 3: Translocase (Inner Membrane)
```
Acylcarnitine enters matrix
Carnitine exits
```

### Step 4: Reverse Transfer (Matrix)
```
Acylcarnitine + CoA → Fatty acyl-CoA + Carnitine
```
- Enzyme: CPT-II

---

## Regulation

### Activation Signals
- Low energy (high AMP/ADP)
- Glucagon, epinephrine
- Fasting/starvation

### Inhibition Signals
- High energy (high ATP, NADH)
- 
- Malonyl-CoA (inhibits CPT-I)

---

## Clinical Relevance

### Carnitine Deficiency
- Impaired long-chain fatty acid entry
- Hypoglycemia, muscle weakness
- Elevated free fatty acids

### MCAD Deficiency
- Cannot β-oxidize medium chains (C6-C12)
- Life-threatening hypoglycemia
- Treatment: Avoid fasting

### 
- Impaired β-oxidation capacity
- Lipid accumulation in muscle/liver
- Adipate elevation (ω-oxidation backup)

---

## Related

- [[Adipate_Formation_Palmitate_to_Adipic_Acid_Pathway_Z-001-1191]
- [[Carnitine_Shuttle_Fatty_Acid_Transport_Z-001-1194]

---

*Source: [[LitNote_Dicarboxylic_Acid_Formation_Fatty_Acids_L-001-0628] | 2026-03-08*


## RELATED FILES
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]
