---
uid: S-001-0001
type: synthesis
title: Insulin Signaling — Synthesis
domain: 001
domain-name: Insulin_Signaling
aliases: [S-001-0001, Insulin_Signaling_Synthesis, Insulin_Cascade]
tags: [synthesis, insulin, signaling, metabolism, living-document]
parent-moc: [[MOC-Insulin-Signaling]
status: evolving
version: 1.0
created: 2026-02-22
last-updated: 2026-04-01
contributing-zettels:
  - "[[Insulin_Hormone_Structure_Z-001-0002]"
  - "[[Insulin_Receptor_Structure_Z-001-0001]"
  - "[[INSR_Autophosphorylation_Mechanism_Z-001-0003]"
  - "[[IRS_Protein_Recruitment_Z-001-0005]"
  - "[[IRS1_vs_IRS2_Tissue_Distribution_Z-001-0006]"
  - "[[PI3K_Activation_Mechanism_Z-001-0007]"
  - "[[Akt_Recruitment_by_PIP3_Z-001-0009]"
  - "[[Akt_Substrate_Phosphorylation_Z-001-0010]"
  - "[[GLUT4_Vesicle_Translocation_Z-001-0011]"
  - "[[MAPK_Mitogenic_Pathway_Z-001-0016]"
  - "[[Cbl_CAP_Lipid_Raft_Pathway_Z-001-0017]"
  - "[[IRS_Serine_Phosphorylation_Causes_IR_Z-001-0008]"
  - "[[Lipotoxicity_Ceramide_Induced_IR_Z-001-0013]"
  - "[[ER_Stress_Induced_IR_Z-001-0014]"
  - "[[Mitochondrial_Dysfunction_IR_Z-001-0015]"
  - "[[INSR_Mutations_Donohue_Syndrome_Z-001-0004]"
---

# Insulin Signaling — Synthesis

> **Living document:** This synthesis evolves as new zettels are added.  
> **Domain:** 001 (Insulin Signaling)  
> **Version:** 1.0 | **Last updated:** 2026-04-01

---

## 1. Core Definition

**Current understanding:**
Insulin signaling is a receptor tyrosine kinase cascade initiated by insulin binding to INSR, propagating through IRS adapter proteins to PI3K/Akt, resulting in metabolic effects (glucose uptake, glycogen synthesis, lipogenesis) and mitogenic effects (growth, survival).

**Key insight:** The pathway bifurcates into metabolic (PI3K/Akt) and mitogenic (MAPK) branches, allowing differential regulation of anabolic vs. growth responses.

**Key entities:**
- [[Insulin_Hormone_Structure_Z-001-0002] — The ligand (51 aa peptide)
- [[Insulin_Receptor_Structure_Z-001-0001] — Tetrameric RTK
- [[IRS_Protein_Recruitment_Z-001-0005] — Adapter proteins
- [[PI3K_Activation_Mechanism_Z-001-0007] — Lipid kinase
- [[Akt_Substrate_Phosphorylation_Z-001-0010] — Central kinase node

---

## 2. Source Evolution

### Initial Understanding (Gutiérrez-Rodelo 2017)
**Source:** [[Lit_GutierrezRodelo_IR_Mechanisms_L-001-0001]
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

## 3. Contributing Zettels

| Zettel | Contribution | Date Added | Status |
|--------|--------------|------------|--------|
| [[Insulin_Hormone_Structure_Z-001-0002] | Ligand structure (51 aa) | 2026-02-22 | ✅ Integrated |
| [[Insulin_Receptor_Structure_Z-001-0001] | Tetrameric RTK structure | 2026-02-22 | ✅ Integrated |
| [[INSR_Autophosphorylation_Mechanism_Z-001-0003] | Tyr-1158/1162/1163 phosphorylation | 2026-02-22 | ✅ Integrated |
| [[IRS_Protein_Recruitment_Z-001-0005] | YXXM motifs recruit p85 | 2026-02-22 | ✅ Integrated |
| [[IRS1_vs_IRS2_Tissue_Distribution_Z-001-0006] | Tissue-specific adapters | 2026-02-22 | ✅ Integrated |
| [[PI3K_Activation_Mechanism_Z-001-0007] | PIP3 generation | 2026-02-22 | ✅ Integrated |
| [[Akt_Recruitment_by_PIP3_Z-001-0009] | PH domain recruitment | 2026-02-22 | ✅ Integrated |
| [[Akt_Substrate_Phosphorylation_Z-001-0010] | AS160, GSK3, FOXO1 phosphorylation | 2026-02-22 | ✅ Integrated |
| [[GLUT4_Vesicle_Translocation_Z-001-0011] | Rab proteins, vesicle trafficking | 2026-02-22 | ✅ Integrated |
| [[MAPK_Mitogenic_Pathway_Z-001-0016] | Growth signaling branch | 2026-02-22 | ✅ Integrated |
| [[Cbl_CAP_Lipid_Raft_Pathway_Z-001-0017] | PI3K-independent transport | 2026-02-22 | ✅ Integrated |
| [[IRS_Serine_Phosphorylation_Causes_IR_Z-001-0008] | Inflammation → IR mechanism | 2026-02-22 | ✅ Integrated |
| [[Lipotoxicity_Ceramide_Induced_IR_Z-001-0013] | Ceramide → Akt inhibition | 2026-02-22 | ✅ Integrated |
| [[ER_Stress_Induced_IR_Z-001-0014] | IRE1α → JNK activation | 2026-02-22 | ✅ Integrated |
| [[Mitochondrial_Dysfunction_IR_Z-001-0015] | Incomplete oxidation → DAG | 2026-02-22 | ✅ Integrated |
| [[INSR_Mutations_Donohue_Syndrome_Z-001-0004] | Severe IR syndromes | 2026-02-22 | ✅ Integrated |

**Total contributing zettels:** 16  
**Coverage:** Core cascade + alternative pathways + resistance mechanisms

---

## 4. Synthesis Gaps

**What's missing:**
- Tissue-specific signaling (muscle vs liver vs adipose) — Samuel & Shulman 2012
- Alternative pathways (Cbl-CAP, receptor trafficking) — Nature Reviews 2022
- Time-resolved signaling dynamics — Cell Metabolism 2020
- Inter-organ crosstalk (brain-pancreas-liver-muscle-adipose)
- Circadian regulation of insulin sensitivity
- Sex differences in insulin signaling

**Next zettels to integrate:**
- [[Tissue_Specific_IR_Mechanisms_Z-001-00XX] — Muscle vs liver vs adipose
- [[Cbl_CAP_Pathway_Details_Z-001-00XX] — PI3K-independent glucose transport
- [[Circadian_Insulin_Sensitivity_Z-001-00XX] — Time-of-day effects

---

## 5. Open Questions

1. **Which serine kinases matter most?** JNK, IKKβ, PKCθ all implicated — need tissue-specific mapping
2. **Can we measure ceramide metabolically?** Currently LC-MS only — need urine/plasma proxy
3. **Time course of IR development?** Chronic inflammation model — need early event sequence
4. **Sex differences?** Understudied — need female-specific mechanisms

**Related synthesis questions:**
- [[Serine_Kinase_Hierarchy_Z-001-00XX] — Which kinase when?

---

## 6. Related Syntheses

| Synthesis | Topic | Connection |
|-----------|-------|------------|
| [[Mitochondrial_Function_Synthesis_S-005-0001] | Energy metabolism | ATP production for insulin signaling |
| [[Adipose_Tissue_Biology_S-004-0001] | Endocrine function | Adipokines modulate insulin sensitivity |
| [[Adipic_Acid_Metabolism_S-101-0001] | Biomarker interpretation | Mitochondrial dysfunction marker |
| [[Vitamin_D_Mechanisms_S-110-0001] | Cross-talk | Vitamin D improves insulin sensitivity |

---

## 7. Update Log

| Version | Date | Changes | Updated By |
|---------|------|---------|------------|
| 1.0 | 2026-02-22 | Initial synthesis — 16 zettels from Gutiérrez-Rodelo 2017 | RON |
| 1.1 | 2026-04-01 | Upgraded to Template_Synthesis_v1.0 format, added contributing zettels list, related syntheses | RON |

---

*Synthesis document — living knowledge, continuously evolving*  
*UID: S-001-0001 | Domain: 001 | Status: evolving | Version: 1.1*

---
parent-index: [[00-MISSION]]
