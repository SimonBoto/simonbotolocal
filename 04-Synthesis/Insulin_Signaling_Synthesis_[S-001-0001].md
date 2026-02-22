---
uid: T-001-0001
type: synthesis
title: Insulin Signaling — Technical Reference
domain: 001
domain-name: Insulin_Signaling
aliases: [T-001-0001, TechRef_Insulin, Insulin_Signaling_Ref]
tags: [tech-ref, insulin, signaling, metabolism, evolving]
parent-moc: [[MOC-001]]
created: 2026-02-22
last-updated: 2026-02-22
status: evolving
---

# TechRef: Insulin Signaling

> **Living document:** This note evolves as new sources are processed.  
> **Domain:** 001 (Insulin Signaling)  
> **Last synthesis:** 2026-02-22

---

## 1. Core Definition

**Current understanding:**
Insulin signaling is a receptor tyrosine kinase cascade initiated by insulin binding to INSR, propagating through IRS adapter proteins to PI3K/Akt, resulting in metabolic effects (glucose uptake, glycogen synthesis, lipogenesis) and mitogenic effects (growth, survival).

**Key insight:** The pathway bifurcates into metabolic (PI3K/Akt) and mitogenic (MAPK) branches, allowing differential regulation of anabolic vs. growth responses.

**Key entities:**
- [[Insulin_Hormone_Structure_[Z-001-0002]]] — The ligand (51 aa peptide)
- [[Insulin_Receptor_Structure_[Z-001-0001]]] — Tetrameric RTK
- [[IRS_Protein_Recruitment_[Z-001-0005]]] — Adapter proteins
- [[PI3K_Activation_Mechanism_[Z-001-0007]]] — Lipid kinase
- [[Akt_Substrate_Phosphorylation_[Z-001-0010]]] — Central kinase node

---

## 2. Source Evolution

### Initial Understanding (Gutiérrez-Rodelo 2017)
**Source:** [[Lit_GutierrezRodelo_IR_Mechanisms_[L-001-0001]]]
**Key insight:** IRS serine phosphorylation is a convergent mechanism of insulin resistance. Multiple insults (inflammation, lipotoxicity, ER stress) converge on IRS serine kinases.
**Zettels extracted:** 9
**Impact:** Established core cascade + IR mechanisms

### Pending Updates
- **Samuel & Shulman 2012** — Tissue-specific IR mechanisms (muscle vs. liver vs. adipose)
- **Nature Reviews 2022** — Alternative pathways (Cbl-CAP), receptor trafficking
- **Cell Metabolism 2020** — Time-resolved signaling dynamics

### Future Directions
- Inter-organs crosstalk (brain-pancreas-liver-muscle-adipose)
- Circadian regulation of insulin sensitivity
- Sex differences in insulin signaling

---

## 3. Extracted Zettels

### Core Signaling Cascade (9 zettels)
**Ligand → Receptor → Adapter → Kinase → Effectors**

| Step | Zettel | Key Mechanism |
|------|--------|---------------|
| 1 | [[Insulin_Hormone_Structure_[Z-001-0002]]] | 51 aa, A+B chains, disulfide bonds |
| 2 | [[Insulin_Receptor_Structure_[Z-001-0001]]] | α2β2 tetramer, tyrosine kinase |
| 3 | [[INSR_Autophosphorylation_Mechanism_[Z-001-0003]]] | Tyr-1158/1162/1163 phosphorylation |
| 4 | [[IRS_Protein_Recruitment_[Z-001-0005]]] | YXXM motifs recruit p85 |
| 5 | [[IRS1_vs_IRS2_Tissue_Distribution_[Z-001-0006]]] | IRS-1 (muscle), IRS-2 (liver/β-cells) |
| 6 | [[PI3K_Activation_Mechanism_[Z-001-0007]]] | PIP3 generation |
| 7 | [[Akt_Recruitment_by_PIP3_[Z-001-0009]]] | PH domain membrane recruitment |
| 8 | [[Akt_Substrate_Phosphorylation_[Z-001-0010]]] | AS160, GSK3, FOXO1 phosphorylation |
| 9 | [[GLUT4_Vesicle_Translocation_[Z-001-0011]]] | Rab proteins, vesicle trafficking |

### Alternative Pathways (2 zettels)
- [[MAPK_Mitogenic_Pathway_[Z-001-0016]]] — Growth signaling
- [[Cbl_CAP_Lipid_Raft_Pathway_[Z-001-0017]]] — PI3K-independent glucose transport

### Resistance Mechanisms (4 zettels)
| Mechanism | Zettel | Molecular Event |
|-----------|--------|-----------------|
| Inflammation | [[IRS_Serine_Phosphorylation_Causes_IR_[Z-001-0008]]] | JNK/IKKβ → IRS Ser-P |
| Lipotoxicity | [[Lipotoxicity_Ceramide_Induced_IR_[Z-001-0013]]] | Ceramide → Akt inhibition |
| ER Stress | [[ER_Stress_Induced_IR_[Z-001-0014]]] | IRE1α → JNK activation |
| Mitochondrial | [[Mitochondrial_Dysfunction_IR_[Z-001-0015]]] | Incomplete oxidation → DAG |

### Disease Context (1 zettel)
- [[INSR_Mutations_Donohue_Syndrome_[Z-001-0004]]] — Severe insulin resistance syndromes

---

## 4. Clinical/Practical Connections

### Biomarkers
| Biomarker | Mechanism | Zettel Link |
|-----------|-----------|-------------|
| **Adipic acid** | Mitochondrial dysfunction (Z-001-0015) | [[BIOMARKER_Adipic_IR_Cutoffs_20260215_004]] |
| **HOMA-IR** | Whole-body insulin resistance | HOMA biomarker (to create) |
| **Fasting insulin** | β-cell compensation | Clinical measure |

### Protocols
- [[PROTOCOL_UoC_STUDY_DESIGN_20260219_004_000168]] — Measuring IR in METHAP study
- [[METHOD_GC_MS_Protocol_20260219_003_000120]] — Metabolomic measurement

### Metabolomics Relevance
**Adipic acid connection:**
- Elevated adipic suggests incomplete fatty acid oxidation (Z-001-0015)
- Links to mitochondrial dysfunction mechanism
- May predict non-response to lifestyle intervention

**Future biomarkers to explore:**
- Ceramide species (lipotoxicity)
- O-GlcNAcylated proteins (nutrient sensing)
- BCAAs (mTOR activation)

---

## 5. Open Questions

| Question | Current Understanding | Research Needed |
|----------|----------------------|-----------------|
| Which serine kinases matter most? | JNK, IKKβ, PKCθ all implicated | Tissue-specific mapping |
| Can we measure ceramide metabolically? | Currently LC-MS only | Urine/plasma proxy? |
| Time course of IR development? | Chronic inflammation model | Early event sequence |
| Sex differences? | Understudied | Female-specific mechanisms |

**Related question zettels:**
- [[Z_Q_IRS_Serine_Kinase_Specificity_011]] — Which kinase when?

---

## 6. Related Technical References

| TechRef | Topic | Connection |
|---------|-------|------------|
| T-005-0001 (planned) | Mitochondrial Function | Energy metabolism, oxidation |
| T-004-0001 (planned) | Adipose Tissue Biology | Endocrine function, lipolysis |
| T-101-0001 (planned) | Adipic Acid Metabolism | Biomarker interpretation |
| T-110-0001 (planned) | Vitamin D Mechanisms | Cross-talk with insulin |

---

## 7. Updates Log

| Date | Update | Source |
|------|--------|--------|
| 2026-02-22 | Initial creation | Gutiérrez-Rodelo 2017 |
| 2026-02-22 | 17 zettels extracted | PMC3083885 synthesis |

---

*Document type: Living technical reference*  
*UID: T-001-0001 | Domain: 001 | Status: Evolving*  
*Next review: When new insulin signaling paper processed*
