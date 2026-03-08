---
uid: L-001-0631
type: lit-note
title: Aconitase Dual Function — Krebs Cycle and Iron Metabolism (IRP1)
authors: ChatGPT Analysis
year: 2023
journal: ChatGPT Archive
doi: N/A
pmid: N/A
pmcid: N/A
tier: 2
relevance: High — Links energy metabolism to iron homeostasis
aliases: [L-001-0631, Aconitase, IRP1, Iron Regulatory Protein]
domain: 001
tags: [litnote, aconitase, irp1, iron-metabolism, krebs-cycle, fe-s-cluster]
source: "[[CGPT_0586_Fatty_Acid_Metabolism_Pathways_[CGPT-0586]]]"
status: extracted
parent-moc: [[MOC-Mitochondrial-Function]]
extraction-date: 2026-03-08
---

# Aconitase Dual Function — Krebs Cycle and Iron Metabolism (IRP1)

> **Source:** ChatGPT Conversation CGPT-0586 (August 30, 2023)  
> **Key Themes:** Aconitase enzyme mechanism, iron-sulfur clusters, IRP1 iron regulation, metabolic flexibility

---

## Core Concepts Extracted

### 1. Aconitase — The Isomerase

**Enzyme Class:** Isomerase (not dehydrogenase or decarboxylase)

**Reaction:**
```
Citrate ⇌ cis-Aconitate ⇌ Isocitrate
```

**Mechanism:**
1. **Dehydration:** Citrate loses H₂O → cis-aconitate
2. **Rehydration:** H₂O added back in different position → isocitrate

**Purpose:** Converts citrate (tertiary alcohol) to isocitrate (secondary alcohol) — necessary for subsequent oxidative decarboxylation

---

### 2. Iron-Sulfur Cluster [4Fe-4S]

**Structure:**
- 4 iron atoms + 4 sulfur atoms
- Coordinated by cysteine residues
- Located at enzyme active site

**Function:**
- Catalytic center for dehydration/rehydration
- Binds substrate (citrate/isocitrate)
- Facilitates electron transfer during reaction

**Sensitivity:**
- Vulnerable to oxidative stress
- ROS can damage Fe-S cluster
- Aconitase activity = marker for oxidative damage

---

### 3. Two Forms of Aconitase

#### Mitochondrial Aconitase (m-Aconitase)
**Location:** Mitochondrial matrix

**Function:**
- Part of Krebs cycle
- Convert citrate to isocitrate
- Critical for energy production

**Regulation:**
- Substrate availability (citrate from pyruvate/acetyl-CoA)
- Iron availability (for Fe-S cluster)
- Product inhibition

#### Cytosolic Aconitase (c-Aconitase / IRP1)
**Location:** Cytoplasm

**Dual Identity:**
- **With [4Fe-4S] cluster:** Active aconitase enzyme
- **Without Fe-S cluster:** Iron Regulatory Protein 1 (IRP1)

---

### 4. IRP1 — Iron Regulatory Protein

#### Structure Determined by Iron Status

**Iron-Replete Conditions ([4Fe-4S] present):**
- IRP1 has intact Fe-S cluster
- Functions as cytosolic aconitase
- Converts citrate to isocitrate in cytoplasm
- Supports fatty acid biosynthesis (citrate → acetyl-CoA for lipogenesis)

**Iron-Deplete Conditions (no [4Fe-4S]):**
- Fe-S cluster disassembled or not synthesized
- IRP1 loses aconitase activity
- Gains RNA-binding capability
- Regulates iron metabolism genes

---

### 5. IRP1 as RNA-Binding Protein

**Targets:** Iron-Responsive Elements (IREs)

**IRE Structure:** Stem-loop sequences in mRNA untranslated regions

#### Iron-Depleted State (IRP1 active as RNA-binding protein)

**Transferrin Receptor 1 (TfR1):**
- IRE location: 3' UTR
- IRP1 binding: **Stabilizes mRNA**
- Result: ↑ TfR1 protein → ↑ Iron uptake

**Ferritin:**
- IRE location: 5' UTR
- IRP1 binding: **Blocks translation**
- Result: ↓ Ferritin protein → ↓ Iron storage

**Ferroportin:**
- IRE location: 5' UTR
- IRP1 binding: Blocks translation
- Result: ↓ Iron export (retain iron in cells)

#### Iron-Replete State (IRP1 inactive as RNA-binding protein)

**Opposite effects:**
- TfR1 mRNA degraded → ↓ Iron uptake
- Ferritin translated → ↑ Iron storage
- Ferroportin expressed → ↑ Iron export

---

### 6. Physiological Significance

#### Iron Homeostasis
**Low Iron:**
- IRP1 binds IREs
- ↑ Iron uptake (TfR1)
- ↓ Iron storage (ferritin)
- Maximize available iron for essential functions

**High Iron:**
- IRP1 has Fe-S cluster (aconitase form)
- ↓ Iron uptake
- ↑ Iron storage
- Prevent iron toxicity

#### Metabolic Flexibility
**Cytoplasmic Citrate Metabolism:**
- When iron sufficient: Citrate → isocitrate → α-ketoglutarate
- Generates NADPH for biosynthesis
- Supports fatty acid synthesis

- When iron scarce: Citrate exported from mitochondria used for other purposes

---

### 7. IRP2 — The Dedicated Regulator

**Difference from IRP1:**
- IRP2 lacks aconitase activity (no Fe-S cluster formation)
- Functions only as RNA-binding protein
- Degraded in iron-replete conditions (by FBXL5)
- Provides basal iron regulation independent of metabolic state

---

### 8. Clinical Relevance

#### Iron Deficiency Anemia
- IRP1/2 highly active
- ↑ TfR1 expression
- Clinical marker: Soluble TfR elevated

#### Hemochromatosis (Iron Overload)
- IRP1 in aconitase form
- ↑ Ferritin synthesis
- Liver iron accumulation

#### Oxidative Stress
- Fe-S cluster damaged
- IRP1 switches to RNA-binding form
- May dysregulate iron homeostasis

---

## Key Studies & References

### IRP1 Discovery
- Originally identified as iron regulatory protein
- Later recognized as identical to cytosolic aconitase

### Fe-S Cluster Biogenesis
- ISC machinery in mitochondria
- CIA machinery in cytosol
- Complex assembly process

---

## Connections

**Related Zettels:**
- [[Aconitase_Mechanism_FeS_Cluster_[Z-001-1204].md]] — To create
- [[IRP1_Iron_Sensing_Switch_[Z-001-1205].md]] — To create
- [[Iron_Homeostasis_Post_Transcriptional_[Z-001-1206].md]] — To create
- [[IRE_IRP_System_[Z-001-1207].md]] — To create

**MOCs:**
- [[MOC-Mitochondrial-Function]] — Krebs cycle
- [[MOC-One-Carbon-Metabolism]] — Iron metabolism
- [[MOC-Clinical-Protocols]] — Anemia/iron overload

---

## Extraction Notes

**Zettels to Create:**
1. Aconitase mechanism and Fe-S cluster
2. IRP1: the iron-sensing switch
3. IRE-IRP system for iron regulation
4. Mitochondrial vs cytosolic aconitase
5. Iron deficiency vs overload regulation
6. Oxidative stress and Fe-S cluster damage

**Status:** Conscious — elegant example of metabolic-structural dual function

---

*Extracted: 2026-03-08 | Source: CGPT-0586 | RON v2.5*
