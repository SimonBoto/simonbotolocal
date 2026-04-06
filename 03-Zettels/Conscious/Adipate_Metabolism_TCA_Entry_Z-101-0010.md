---
uid: Z-101-0010
type: zettel
title: "Adipate Metabolism and TCA Entry"
aliases: ["Z-101-0010", "Adipate-Metabolism", "TCA-Entry", "Succinyl-CoA"]
domain: 101
tags: [zettel, adipate, metabolism, tca-cycle, succinyl-coa, beta-oxidation]
parent-moc: "[[MOC-Mitochondrial-Function]]"
status: conscious
source-litnote: "[[L-101-0002_Adipic_Acid_Biochemistry_Omega_Oxidation_CGPT-0586]]"
source-inbox: "[[CGPT_0586_Fatty_Acid_Metabolism_Pathways_CGPT-0586]]"
extraction-date: 2026-03-02
---

# Adipate Metabolism and TCA Entry

## Core Claim
**Adipate (C6 dicarboxylic acid) undergoes two cycles of mitochondrial β-oxidation — producing glutaryl-CoA (C5) then succinyl-CoA (C4) plus two acetyl-CoA molecules — with succinyl-CoA directly entering the TCA cycle at the succinyl-CoA synthetase step, demonstrating that adipate is metabolically active and not merely a waste product, though urinary excretion occurs when metabolic capacity is overwhelmed.**

## Evidence

### Metabolic Pathway
| Step | Input | Output | ATP Yield |
|------|-------|--------|-----------|
| **1** | Adipate | Adipyl-CoA | -2 (activation cost) |
| **2** | Adipyl-CoA (C6) | Glutaryl-CoA (C5) + Acetyl-CoA | +5 (1 NADH, 1 FADH₂) |
| **3** | Glutaryl-CoA (C5) | Succinyl-CoA (C4) + Acetyl-CoA | +5 (1 NADH, 1 FADH₂) |
| **4** | Succinyl-CoA | TCA cycle completion | +12 (GTP, NADH, FADH₂) |
| **5** | 2 Acetyl-CoA | TCA cycle | +20 (2 × 10 ATP) |

**Net ATP Yield:** ~32-40 ATP per adipate

### Detailed Reactions
**First β-Oxidation Cycle:**
```
Adipyl-CoA + FAD → Trans-enoyl-adipyl-CoA + FADH₂
↓ + H₂O
L-3-Hydroxyadipyl-CoA
↓ + NAD⁺
3-Ketoadipyl-CoA
↓ + CoA
Glutaryl-CoA + Acetyl-CoA
```

**Second β-Oxidation Cycle:**
```
Glutaryl-CoA + FAD → Trans-enoyl-glutaryl-CoA + FADH₂
↓ + H₂O
L-3-Hydroxyglutaryl-CoA
↓ + NAD⁺
3-Ketoglutaryl-CoA
↓ + CoA
Succinyl-CoA + Acetyl-CoA
```

### TCA Entry
```
Succinyl-CoA → Succinate (via succinyl-CoA synthetase, GTP formed)
↓
[Continues through TCA cycle]
```

## Clinical Implication
- **Not waste:** Adipate is metabolically active
- **Energy recovery:** ~80% efficiency vs complete oxidation
- **Capacity indicator:** Urinary excretion = overwhelmed system
- **Anaplerotic:** Succinyl-CoA replenishes TCA intermediates
- **METHAP relevance:** Adipate metabolism demonstrates metabolic flexibility capacity

---

## Related
- [[Adipate_Formation_Palmitate_Pathway_Z-101-0008]] — Formation
- [[Carnitine_Deficiency_Omega_Oxidation_Link_Z-101-0009]] — Deficiency link
- [[Succinyl_CoA_Krebs_Entry_Dicarboxylic_Integration_Z-001-1198]] — TCA integration

---
*Source: [[L-101-0002_Adipic_Acid_Biochemistry_Omega_Oxidation_CGPT-0586]] | Inbox: [[CGPT_0586_Fatty_Acid_Metabolism_Pathways_CGPT-0586]]*
