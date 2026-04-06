---
uid: Z-001-0545
type: zettel
title: Mevalonate Pathway Enzymatic Steps
aliases: [Mevalonate-Pathway, Enzymatic-Steps, Cholesterol-Synthesis, Acetyl-CoA]
domain: 001
tags: [zettel, mevalonate-pathway, enzymatic-steps, cholesterol-synthesis, acetyl-coa, hmg-coa-reductase]
parent-moc: [[MOC-Lipid-Metabolism]]
status: conscious
source-litnote: [[L-001-0509_Mevalonate_Pathway_CGPT-0393]]
extraction-date: 2026-03-01
---

# Mevalonate Pathway Enzymatic Steps

## Core Claim
The mevalonate pathway converts acetyl-CoA to cholesterol through 13 discrete enzymatic steps across four phases, with HMG-CoA reductase serving as the committed rate-limiting enzyme that controls flux into all downstream isoprenoid products including cholesterol, CoQ10, and protein prenylation substrates.

## Evidence

### Phase 1: Acetyl-CoA to Mevalonate (Steps 1-3)

| Step | Reaction | Enzyme | Significance |
|------|----------|--------|--------------|
| 1 | 2 Acetyl-CoA → Acetoacetyl-CoA + CoA | Thiolase | Condensation of 2C units |
| 2 | Acetoacetyl-CoA + Acetyl-CoA → HMG-CoA + CoA | HMG-CoA Synthase | Forms 6C backbone |
| 3 | HMG-CoA + 2 NADPH → Mevalonate + 2 NADP⁺ + CoA | **HMG-CoA Reductase** | **RATE-LIMITING STEP** |

**HMG-CoA Reductase Characteristics:**
- Location: ER membrane (cytosolic domain active)
- Regulation: SREBP-2 transcriptional, AMPK phosphorylation, sterol-dependent degradation
- Inhibition: Statins (competitive, 10,000x affinity)

### Phase 2: Mevalonate to IPP (Steps 4-6)

| Step | Reaction | Enzyme | Significance |
|------|----------|--------|--------------|
| 4 | Mevalonate + ATP → Mevalonate-5-P + ADP | Mevalonate Kinase (MVK) | First phosphorylation |
| 5 | Mevalonate-5-P + ATP → Mevalonate-5-PP + ADP | PMVK | Second phosphorylation |
| 6 | Mevalonate-5-PP + ATP → IPP + ADP + CO₂ | MVD | Forms 5C isoprenoid unit |

**Clinical Note:** MVK deficiency causes mevalonate kinase deficiency (periodic fever syndrome).

### Phase 3: Isoprenoid Assembly (Steps 7-9)

| Step | Reaction | Enzyme | Product |
|------|----------|--------|---------|
| 7 | IPP ↔ DMAPP | IPP Isomerase | Isomerization |
| 8 | DMAPP + IPP → GPP + PPi | FDPS | Geranyl pyrophosphate (C10) |
| 9 | GPP + IPP → FPP + PPi | FDPS | Farnesyl pyrophosphate (C15) |

**FPP is the critical branch point** for all downstream products.

### Phase 4: Final Products (Steps 10-13)

| Step | Reaction | Product |
|------|----------|---------|
| 10 | 2 FPP + NADPH → Squalene + 2 PPi | Squalene (C30) |
| 11 | Squalene + O₂ + NADPH → Squalene-2,3-epoxide | Epoxidation |
| 12 | Squalene-2,3-epoxide → Lanosterol | Cyclization |
| 13 | Lanosterol → Cholesterol (19+ steps) | Cholesterol (C27) |

**Energetic Cost:** 18 ATP equivalents, 14 NADPH per cholesterol molecule.

## Clinical Implication

**Statin Therapy:**
- Blocks Step 3 (HMG-CoA reductase)
- Reduces ALL downstream products
- Cholesterol ↓ 30-60%
- CoQ10 ↓ 40-50% (unintended consequence)

**Monitoring:**
- Lipid panel for cholesterol response
- CoQ10 level (optional)
- Muscle symptoms (myopathy indicator)

## METHAP Relevance

**Protocol Integration:**
- CoQ10 supplementation mandatory with statins
- Vitamin D3 synthesis requires cholesterol substrate
- Nutrient cofactors support pathway: Mg, B3 (NADPH), B5 (CoA), Zn

---

## Related Zettels
- [[HMG_CoA_Reductase_Regulation_Z-001-0546]] — HMGCR regulation
- [[Mevalonate_Branch_Points_Z-001-0547]] — FPP branch point
- [[Mevalonate_Clinical_Implications_Z-001-0548]] — Statin pharmacology
- [[Mevalonate_METHAP_Integration_Z-001-0549]] — METHAP integration

## Source
[[L-001-0509_Mevalonate_Pathway_CGPT-0393]]

---
parent-index: [[03-Zettels]]
