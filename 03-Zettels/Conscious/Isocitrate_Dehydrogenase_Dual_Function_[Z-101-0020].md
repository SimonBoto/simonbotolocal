---
uid: Z-101-0020
type: zettel
title: Isocitrate Dehydrogenase Dual Function and Clinical Significance
aliases: [Z-101-0020, IDH Dual Activity, IDH Cancer Mutations]
domain: 101
tags: [zettel, isocitrate-dehydrogenase, idh, tca-cycle, cancer, oncometabolite, 2-hg]
parent-moc: [[MOC-Pharmacometabolomics]]
status: conscious
source: "[[LitNote_CoA_Synthesis_Decarboxylation_Enzymology_L-101-0004]]"
extraction-date: 2026-03-02
---

# Isocitrate Dehydrogenase Dual Function and Clinical Significance

**Key Concept:** IDH exemplifies dual-function enzymology — both dehydrogenation AND decarboxylation in one catalytic cycle.

## Dual Reaction Mechanism

### Step 1: Dehydrogenation (Oxidation)
```
Isocitrate + NAD⁺ → Oxalosuccinate + NADH + H⁺
```
- Hydride (H⁻) transferred from isocitrate to NAD⁺
- Creates unstable β-ketoacid intermediate (oxalosuccinate)
- **This is the dehydrogenase activity**

### Step 2: Decarboxylation
```
Oxalosuccinate → α-ketoglutarate + CO₂
```
- β-ketoacid spontaneously decarboxylates
- CO₂ released
- **This is the decarboxylase activity**

### Overall Reaction
```
Isocitrate + NAD⁺ → α-ketoglutarate + CO₂ + NADH + H⁺
```

**Energy yield:** 1 NADH per isocitrate → ~2.5 ATP via ETC

## Why "Dehydrogenase" in the Name?

Despite performing both reactions, IDH is classified as a dehydrogenase because:

1. **Coupled mechanism:** Decarboxylation depends on prior oxidation
2. **Energetic significance:** NADH production is the metabolically important event
3. **Historical precedent:** Named for the observable redox chemistry

## IDH Isoforms

### IDH3 (NAD⁺-dependent)
- **Location:** Mitochondrial matrix
- **Catalytic activity:** Both dehydrogenation and decarboxylation
- **Regulation:** Allosterically controlled
  - **Activated by:** ADP (low energy signal)
  - **Inhibited by:** ATP, NADH (high energy signals)
- **Function:** Major regulatory point in TCA cycle
- **Tissue distribution:** Ubiquitous (all tissues)

### IDH1 (NADP⁺-dependent)
- **Location:** Cytosol
- **Catalytic activity:** Both reactions
- **Regulation:** Not allosterically regulated
- **Function:**
  - NADPH generation for biosynthesis
  - Antioxidant defense (glutathione regeneration)
  - Reductive carboxylation (reverse reaction) in hypoxia

### IDH2 (NADP⁺-dependent)
- **Location:** Mitochondrial matrix
- **Catalytic activity:** Both reactions
- **Regulation:** Not allosterically regulated
- **Function:**
  - Mitochondrial NADPH production
  - Protection against oxidative stress
  - Aconitase repair (iron-sulfur cluster maintenance)

## Clinical Significance — IDH Mutations in Cancer

### Cancer Types with IDH Mutations

| Cancer Type | IDH1 vs IDH2 | Frequency |
|-------------|--------------|-----------|
| **Gliomas (low-grade)** | IDH1 (mostly R132H) | ~80% |
| **Acute myeloid leukemia (AML)** | IDH1 or IDH2 | ~20% |
| **Cholangiocarcinoma** | IDH1 or IDH2 | ~20% |
| **Chondrosarcoma** | IDH1 or IDH2 | ~50% |

### Mechanism of Oncogenesis

**Normal IDH:**
- Isocitrate → α-ketoglutarate + CO₂ + NADPH

**Mutant IDH:**
- Gains **neo-morphic activity**
- α-ketoglutarate → **2-hydroxyglutarate (2-HG)** + NAD⁺
- 2-HG is an **"oncometabolite"**

**2-HG Effects:**
1. **Inhibits α-ketoglutarate-dependent dioxygenases:**
   - TET enzymes (DNA demethylases) → hypermethylation phenotype
   - Histone demethylases → altered chromatin
   - Prolyl hydroxylases → pseudo-hypoxia signaling

2. **Blocks cellular differentiation:**
   - Myeloid cells remain progenitor state (in AML)

### Therapeutic Targeting

**IDH Inhibitors:**
- **Ivosidenib** (IDH1 inhibitor) — FDA approved for AML
- **Enasidenib** (IDH2 inhibitor) — FDA approved for AML
- **Vorasidenib** — glioma trials (crosses blood-brain barrier)

**Mechanism:**
- Block neo-morphic 2-HG production
- Restore α-ketoglutarate levels
- Allow cellular differentiation
- Reduce epigenetic dysregulation

## METHAP Connection

While primarily a cancer target, IDH highlights:
- Importance of NADPH generation (antioxidant defense)
- TCA cycle regulation by energy charge (ADP/ATP)
- Metabolite signaling beyond energy (2-HG as signaling molecule)

---

*See also: [[Dehydrogenases_vs_Decarboxylases_[Z-101-0019]]]*


## RELATED FILES
- [[MOC-INDEX|Master Index]]
