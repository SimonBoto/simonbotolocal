# Technical Reference Note Specification
## Living Reference Architecture

**Purpose:** A hybrid reference type that starts from Zotero but evolves with annotations, connections, and upgrades from multiple sources.

---

## The Problem with Current Refs

**Current 66a-Refs/ structure:**
- Static bibliographic card
- One source = one note
- Never updated after creation
- No synthesis across sources

**What's missing:** The "living document" that grows with your understanding.

---

## The Living Reference (REF-Technical)

### Concept
A technical reference note that:
1. **Starts** as Zotero import (bibliographic skeleton)
2. **Grows** with literature notes from multiple papers
3. **Evolves** with zettel extractions (new findings)
4. **Connects** to clinical observations
5. **Synthesizes** across time and sources

### File Location
```
66-Literature/
├── 66a-Refs/              ← Static bibliographic (keep as is)
├── 66b-LitNotes/          ← Per-paper notes (temporary processing)
├── 66c-TechRefs/          ← NEW: Living technical references
│   ├── TechRef_Insulin_Signaling.md
│   ├── TechRef_Adipic_Acid_Metabolism.md
│   └── TechRef_Vitamin_D_Mechanisms.md
└── 66d-Zotero/            ← Raw Zotero exports
```

### Template Structure

```markdown
---
uid: {{YYYYMMDDHHMMSS}}
type: tech-ref
title: {{Topic}} — Technical Reference
aliases: [{{ShortName}}]
tags: [tech-ref, {{topic}}, evolving]
parent-moc: [[55-MOCs/{{MOC}}]]
created: {{YYYY-MM-DD}}
last-updated: {{YYYY-MM-DD}}
status: evolving | mature | stable
---

# TechRef: {{Topic}}

> **Living document:** This note evolves as new sources are processed.
> Last synthesis: {{date}}

---

## 1. Core Definition

**Current understanding:** {{One paragraph synthesis in my own words}}

**Key entities:**
- [[Z_{{Entity1}}]] — [[Z_{{Entity2}}]] — [[Z_{{Entity3}}]]

---

## 2. Source Evolution

### Initial Understanding ({{date}})
**Source:** [[Ref_{{FirstSource}}]]
**Key insight:** {{Original understanding}}

### Update 1 ({{date}})
**Source:** [[Ref_{{SecondSource}}]]
**New finding:** {{What changed}}
**Synthesis:** {{How understanding evolved}}

### Update 2 ({{date}})
**Source:** [[Lit_{{ThirdSource}}]]
**Conflict/confirmation:** {{Comparison with prior}}
**Resolution:** {{Current stance}}

---

## 3. Extracted Zettels

Zettels that reference this technical concept:
- [[Z_{{Zettel1}}]] — {{brief description}}
- [[Z_{{Zettel2}}]] — {{brief description}}
- [[Z_{{Zettel3}}]] — {{brief description}}

---

## 4. Clinical/Practical Connections

**Biomarkers:** [[BIOMARKER_{{Biomarker}}]]
**Protocols:** [[PROTOCOL_{{Protocol}}]]
**Claims:** [[Z_CLAIM_{{Claim}}]]

**Metabolomics relevance:** {{How this shows up in metabolomics data}}

---

## 5. Open Questions

- {{Question 1}} → [[Z_Q_{{QuestionZettel}}]]
- {{Question 2}} → pending research

---

## 6. Related Technical References

- [[TechRef_{{Related1}}]] — {{connection}}
- [[TechRef_{{Related2}}]] — {{connection}}

---

*Document type: Living technical reference*  
*Updates tracked in git history*
```

---

## Example: TechRef_Insulin_Signaling.md

```markdown
---
uid: 202602220001
type: tech-ref
title: Insulin Signaling — Technical Reference
aliases: [TechRef_INSR]
tags: [tech-ref, insulin, signaling, metabolism, evolving]
parent-moc: [[55-MOCs/Insulin_Signaling]]
created: 2026-02-22
last-updated: 2026-02-22
status: evolving
---

# TechRef: Insulin Signaling

> **Living document:** This note evolves as new sources are processed.
> Last synthesis: 2026-02-22

---

## 1. Core Definition

**Current understanding:** 
Insulin signaling is a receptor tyrosine kinase cascade initiated by insulin binding to INSR, propagating through IRS adapter proteins to PI3K/Akt, resulting in metabolic effects (glucose uptake, glycogen synthesis, lipogenesis) and mitogenic effects (growth, survival).

**Key entities:**
- [[Z_INSR_STRUCTURE_001]] — The receptor
- [[Z_IRS_RECRUITMENT_005]] — Adapter proteins
- [[Z_MECH_PI3K_ACTIVATION_007]] — Lipid kinase
- [[Z_AKT_SUBSTRATE_PHOS_010]] — Central kinase

---

## 2. Source Evolution

### Initial Understanding (Gutiérrez-Rodelo 2017)
**Source:** [[Lit_GutierrezRodelo_IR_Mechanisms_2017]]
**Key insight:** IRS serine phosphorylation is a convergent mechanism of insulin resistance
**Zettels extracted:** 9 (see below)

### Pending Updates
- Samuel & Shulman 2012 — tissue-specific IR mechanisms
- Nature 2022 review — alternative pathways (Cbl-CAP)

---

## 3. Extracted Zettels

**Core cascade:**
- [[Z_INSULIN_HORMONE_STRUCTURE_002]] — Ligand
- [[Z_INSR_STRUCTURE_001]] — Receptor
- [[Z_MECH_INSR_AUTOPHOS_003]] — Activation
- [[Z_IRS_RECRUITMENT_005]] — Adapter
- [[Z_MECH_PI3K_ACTIVATION_007]] — PI3K
- [[Z_AKT_SUBSTRATE_PHOS_010]] — Akt
- [[Z_GLUT4_TRANSLOCATION_011]] — Effector

**Alternative pathways:**
- [[Z_MAPK_PATHWAY_016]] — Mitogenic
- [[Z_CBL_CAP_PATHWAY_017]] — Lipid raft

**Resistance mechanisms:**
- [[Z_CLAIM_IRS_SERINEPHOS_IR_008]] — Serine phosphorylation
- [[Z_LIPOTOXICITY_CERAMIDE_IR_013]] — Lipotoxicity
- [[Z_ER_STRESS_IR_014]] — ER stress
- [[Z_MITOCHONDRIAL_DYSFUNCTION_IR_015]] — Mitochondrial dysfunction

---

## 4. Clinical/Practical Connections

**Biomarkers:**
- [[BIOMARKER_Adipic_IR_Cutoffs_20260215_004]] — Mitochondrial dysfunction proxy
- [[BIOMARKER_HOMA_IR_005]] — Clinical IR measure (indirect)

**Protocols:**
- [[PROTOCOL_UoC_STUDY_DESIGN_20260219_004_000168]] — Measuring IR in METHAP

**Metabolomics relevance:**
Adipic acid elevation suggests incomplete fatty acid oxidation (Z_015 mechanism). Future: correlate adipic with other IR markers.

---

## 5. Open Questions

- Which serine kinases are most clinically relevant for IR? → [[Z_Q_IRS_Serine_Kinase_Specificity_011]]
- Can we measure ceramide metabolically? → pending research
- How does mitochondrial dysfunction manifest in urine organic acids beyond adipic?

---

## 6. Related Technical References

- [[TechRef_Mitochondrial_Function]] — Energy metabolism (planned)
- [[TechRef_Adipose_Tissue_Biology]] — Endocrine function (planned)
```

---

## Workflow: Zotero → TechRef

### Step 1: Zotero Import
```
Zotero → 66d-Zotero/ (raw export)
      ↓
Create skeleton in 66c-TechRefs/ (if new topic)
OR
Update existing TechRef (if topic exists)
```

### Step 2: Literature Note Processing
```
Source paper → 66b-LitNotes/Lit_{{Source}}.md
            ↓
Extract zettels to 04-Zettels/
            ↓
Update TechRef with new zettels + synthesis
```

### Step 3: Evolution Tracking
```
Each update → git commit with message:
"techref(insulin): Add ER stress mechanism from X et al. 2020"
```

---

## Why This Solves Your Problem

| Current | TechRef Solution |
|---------|------------------|
| Static ref, never updated | Living document, evolves with research |
| One source = one note | Multi-source synthesis over time |
| No connection to zettels | Explicit zettel catalog |
| No clinical context | Biomarker/protocol links |
| No history of understanding | Source evolution tracked |

---

## Next Step

Create `66-Literature/66c-TechRefs/` and migrate `Insulin_Signaling` from MOC to TechRef?
