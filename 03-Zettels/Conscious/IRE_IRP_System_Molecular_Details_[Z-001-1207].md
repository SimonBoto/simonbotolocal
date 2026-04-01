---
uid: Z-001-1207
type: zettel
title: IRE-IRP System — Molecular Mechanism of Iron Sensing
domain: 001
tags: [zettel, ire, irp, iron-sensing, rna-structure, molecular-mechanism]
parent-moc: 
extraction-date: 2026-03-09
source-litnote: "[[LitNote_Aconitase_Iron_Metabolism_IRP1_L-001-0631]]"
status: conscious
---

# IRE-IRP System — Molecular  of Iron Sensing

## Overview

The Iron-Responsive Element (IRE) and Iron Regulatory Protein (IRP) system represents one of the best-characterized examples of post-transcriptional gene regulation. At its core is a precise molecular recognition between protein and RNA structure.

---

## The IRE — RNA Stem-Loop Structure

### Consensus Structure
```
         C
        / \
       G   U
       |   |
       C   A
       |   |
       A   G
       |   |
    5'-U-C-U-G-U-A-G-3'  ← Bulge sequence (critical)
       | |   | |   |
       A G   C A   C
       |     |     |
       G     G     G
       |           |
       C───────────G
```

**Key Features:**
- 5-nucleotide bulge (CAGUG/CAGUGU)
- Upper stem (6 bp)
- Lower stem (variable length)
- Terminal loop (6 nucleotides)

### The Critical Bulge
**Sequence:** 5'-CAGUG-3' (or CAGUGU)

This sequence is recognized specifically by IRPs. Single nucleotide changes destroy binding.

---

## The IRP — Protein Structure

### IRP1 Domain Organization
```
N-terminus ────────────────────────────────────── C-terminus
[Domain 1] [Domain 2] [Domain 3] [Domain 4]
    ↓           ↓         ↓         ↓
  RNA-binding  Fe-S      RNA-binding  Aconitase
  site 1      cluster    site 2      activity
```

### The Iron-Sulfur Cluster Switch

**Iron-Replete (Holo-IRP1):**
```
[4Fe-4S] cluster bound
    ↓
Domains 3-4 close over cluster
    ↓
RNA-binding surfaces buried
    ↓
No IRE binding
    ↓
Aconitase active
```

**Iron-Depleted (Apo-IRP1):**
```
[4Fe-4S] cluster absent
    ↓
Domains 3-4 open
    ↓
RNA-binding surfaces exposed
    ↓
High IRE affinity
    ↓
Aconitase inactive
```

---

## IRP-IRE Recognition Interface

### Binding Specificity

**IRP1 makes contacts at three regions:**

1. **Bulge region:** Sequence-specific recognition
   - Direct hydrogen bonds to CAGUG
   - Phosphate backbone contacts

2. **Upper stem:** Structural recognition
   - Shape complementarity
   - Nonspecific backbone contacts

3. **Terminal loop:** Stabilization
   - Minor groove contacts
   - Conformational selection

### Affinity Constants

| Interaction | Kd (dissociation constant) |
|-------------|---------------------------|
| IRP1-IRE (ferritin 5') | ~10-50 pM (very tight) |
| IRP1-IRE (TfR1 3') | ~20-100 pM |
| IRP2-IRE (all types) | ~10-30 pM |

**Extremely high affinity — physiologically irreversible**

---

## Structural Basis of 5' vs 3' Effects

### 5' UTR IRE — Translational Block

```
Cap ──[IRE]── AUG ── ORF
       ↑
    IRP binding:
    - Steric block of 43S preinitiation complex
    - Prevents ribosome scanning
    - Translation prevented
```

**Mechanism:** Physical blockage

### 3' UTR IRE — mRNA Stabilization

```
ORF ── Stop ── [IRE] ── Poly-A
                 ↑
              IRP binding:
              - Masks endonuclease cleavage sites
              - Blocks deadenylation machinery
              - Enhances transcript stability
```

**Mechanism:** Protection from degradation

---

## IRP2 — The Dedicated Regulator

### Key Differences from IRP1

| Feature | IRP1 | IRP2 |
|---------|------|------|
| Fe-S cluster | Forms (aconitase switch) | Does not form |
| Regulation | Conformational switch | Proteasomal degradation |
| Basal activity | Iron-dependent | Always present (unless degraded) |
| Dominant activity | ~30% | ~70% |

### IRP2 Degradation Mechanism

**Iron-Replete:**
```
FBXL5 (substrate receptor) has [2Fe-2S] cluster
    ↓
Iron present → FBXL5 stable → Active SCF complex
    ↓
IRP2 ubiquitinated
    ↓
Proteasomal degradation
```

**Iron-Depleted:**
```
Iron absent → FBXL5 unstable → Degraded
    ↓
SCF complex inactive
    ↓
IRP2 stabilized
    ↓
IRE binding increases
```

---

## Evolutionary Conservation

### IRE Distribution

**Found in:**
- Vertebrates (mammals, fish, birds)
- Some invertebrates (insects, worms)
- Some plants

**NOT found in:**
- Yeast (different iron regulation)
- Bacteria (different regulatory logic)

### IRP Homology

IRP1: Aconitase-related (evolved from l aconitase)
IRP2: IRP1 duplication and specialization

---

## Pharmacological Implications

### Targeting the IRE-IRP System

**Potential interventions:**

1. **IRP inhibitors** → Block iron deficiency response
   - Could treat iron overload disorders
   - Risk: Iron deficiency side effects

2. **IRE disruptors** → Prevent IRP binding
   - Small molecules targeting stem-loop
   - Challenge: RNA targeting specificity

3. **Iron chelators** → Activate IRPs therapeutically
   - Deferoxamine, deferasirox
   - Used in iron overload, thalassemia
   - Side effect: Activates IRP system

---

## Summary: The Molecular Logic

```
Iron status → [Fe-S] status → IRP conformation
                              ↓
                        IRE binding affinity
                              ↓
                mRNA stability/translation
                              ↓
                     Iron homeostasis
```

**Elegant solution:** A single protein switch (IRP) sensing a single molecule (iron) controls multiple targets through a conserved RNA structure (IRE).

---

## Related

- [[IRP1_Iron_Sensing_Molecular_Switch_[Z-001-1205].md]]
- [[Iron_Homeostasis_Post_Transcriptional_[Z-001-1206].md]]
- [[Aconitase_Mechanism_Iron_Sulfur_Cluster_[Z-001-1204].md]]

---

*Source: _IRP1_L-001-0631]] | 2026-03-09*


## RELATED FILES
- [[Iron_Family_[B-003-0001]|Biomarker Family]]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]]
- 
