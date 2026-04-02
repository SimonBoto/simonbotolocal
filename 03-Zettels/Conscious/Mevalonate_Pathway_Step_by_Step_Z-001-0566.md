---
uid: Z-001-0566
type: zettel
title: Mevalonate Pathway Step by Step
aliases: [Z-001-0566, Cholesterol Synthesis, HMG-CoA Pathway, Acetyl-CoA to IPP]
domain: 001
domain-name: Lipid Metabolism
tags: [zettel, mevalonate-pathway, cholesterol, hmg-coa, acetyl-coa, biochemistry, enzymes]
parent-moc: [[MOC-Insulin-Signaling]]
source: "[[LitNote_Mevalonate_Pathway_Biochemistry_L-001-0518]"
confidence: high
created: 2026-03-03
---

# Mevalonate Pathway Step by Step

## Core Concept

The mevalonate pathway converts **3 acetyl-CoA** molecules into **isopentenyl pyrophosphate (IPP)**, the universal building block for all isoprenoids including cholesterol, CoQ10, and steroid hormones. The pathway consumes **2 NADPH** and **2 ATP** per IPP molecule.

---

## The Six Steps

### Step 1: Acetoacetyl-CoA Formation
```
2 Acetyl-CoA → Acetoacetyl-CoA + CoA-SH
```
| Attribute | Value |
|-----------|-------|
| **Enzyme** | Acetoacetyl-CoA thiolase |
| **Also called** | Acetyl-CoA acetyltransferase |
| **Energy cost** | None |
| **Type** | Condensation reaction |
| **Purpose** | Join two acetyl units |

---

### Step 2: HMG-CoA Formation
```
Acetoacetyl-CoA + Acetyl-CoA → HMG-CoA + CoA-SH
```
| Attribute | Value |
|-----------|-------|
| **Enzyme** | HMG-CoA synthase |
| **Full name** | 3-hydroxy-3-methylglutaryl-CoA synthase |
| **Energy cost** | None |
| **Product** | HMG-CoA (6-carbon molecule) |
| **Purpose** | Form HMG-CoA substrate |

---

### Step 3: Mevalonate Formation (RATE-LIMITING)
```
HMG-CoA + 2 NADPH → Mevalonate + 2 NADP⁺ + CoA-SH
```
| Attribute | Value |
|-----------|-------|
| **Enzyme** | **HMG-CoA reductase** |
| **Energy cost** | **2 NADPH** (reducing power) |
| **Regulation** | Key control point |
| **Drug target** | **Statins inhibit here** |
| **Purpose** | Reduce HMG-CoA to mevalonate |

**Critical Significance:**
- This is the **committed step** of cholesterol synthesis
- **HMG-CoA reductase** is the most regulated enzyme in the pathway
- Statins work by competitively inhibiting this enzyme

---

### Step 4: Mevalonate Phosphorylation
```
Mevalonate + ATP → Mevalonate-5-phosphate + ADP
```
| Attribute | Value |
|-----------|-------|
| **Enzyme** | Mevalonate kinase |
| **Energy cost** | **1 ATP** |
| **Product** | Mevalonate-5-phosphate |
| **Purpose** | Activate mevalonate |

---

### Step 5: Phosphomevalonate Formation
```
Mevalonate-5-phosphate + ATP → 5-Pyrophosphomevalonate + ADP
```
| Attribute | Value |
|-----------|-------|
| **Enzyme** | Phosphomevalonate kinase |
| **Energy cost** | **1 ATP** |
| **Product** | 5-Pyrophosphomevalonate |
| **Purpose** | Add second phosphate |

---

### Step 6: Isopentenyl Pyrophosphate (IPP) Formation
```
5-Pyrophosphomevalonate → IPP + CO₂
```
| Attribute | Value |
|-----------|-------|
| **Enzyme** | Mevalonate-5-pyrophosphate decarboxylase |
| **Energy cost** | None (decarboxylation drives reaction) |
| **Product** | **IPP** (isopentenyl pyrophosphate) |
| **Byproduct** | CO₂ |
| **Purpose** | Form central isoprenoid building block |

---

## Overall Stoichiometry

### Per Molecule of IPP:
| Input | Amount | Output | Amount |
|-------|--------|--------|--------|
| Acetyl-CoA | 3 | IPP | 1 |
| NADPH | 2 | CO₂ | 1 |
| ATP | 2 | CoA-SH | 3 |
| | | NADP⁺ | 2 |
| | | ADP | 2 |

### Per Molecule of Cholesterol (18 IPP equivalents):
| Input | Amount |
|-------|--------|
| Acetyl-CoA | 18 |
| NADPH | 16 |
| ATP | 18 |

---

## Branch Point: From IPP to Products

Once IPP is formed, it can become:

| Product | IPP Units | Function |
|---------|-----------|----------|
| **Cholesterol** | 6 (modified) | Membranes, hormones,  |
| **CoQ10** | 10 | l electron transport |
| **Dolichol** | 20 | Protein glycosylation |
| **Heme A** | Modified | Cytochrome c oxidase |
| **Steroid hormones** | From cholesterol | Signaling |

---

## Clinical Relevance

### Statin 
- Statins **block Step 3** (HMG-CoA reductase)
- Result: Lower mevalonate → less cholesterol
- **But also:** Less CoQ10, less dolichol → side effects

### Rare Genetic Defects
- **Mevalonate kinase deficiency** → Periodic fever syndrome
- **HMG-CoA reductase defects** → Severe metabolic disorders

---

## Related Zettels

- [[HMG_CoA_Reductase_Regulation_Z-001-0567]] — Regulatory mechanisms
- [[Mevalonate_Pathway_Energy_Cost_Z-001-0568]] — Energy requirements
- [[Isoprenoids_Terpenes_Overview_Z-001-0569]] — IPP products
- [[CoQ10_Dolichol_Isoprenoid_Synthesis_Z-001-0571]] — CoQ10 from IPP

---

## Key Principle

> "The mevalonate pathway is metabolic alchemy: 3 acetyl-CoA + 2 NADPH + 2 ATP → the universal building block of cholesterol, CoQ10, and every steroid hormone in your body. Block it with statins, and you block far more than just cholesterol."

---

*Created: 2026-03-03 | Status: Conscious | Domain: 001*

## RELATED FILES
- [[Lipid_Ratios_[B-006-0001]|Biomarker Family]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]

---
parent-index: [[03-Zettels-Conscious]]
