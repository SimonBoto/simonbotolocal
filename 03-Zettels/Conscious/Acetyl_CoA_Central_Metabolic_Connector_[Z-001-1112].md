---
uid: Z-001-1112
type: zettel
title: Acetyl CoA Central Metabolic Connector
aliases: [Z-001-1112, Acetyl-CoA]
domain: 001
domain-name: Metabolism
tags: [zettel, acetyl-coa, connector, metabolism]
parent-moc: [[MOC-Krebs-Cycle]]
source-litnote: [[LitNote_Metabolic_Pathway_Integration_L-001-0606]]
source: [[LitNote_Metabolic_Pathway_Integration_L-001-0606]]
confidence: high
created: 2026-03-08
---

# Acetyl CoA Central Metabolic Connector

## Overview
Acetyl-CoA is the central metabolic hub connecting carbohydrate, fat, and protein metabolism to the Krebs cycle and multiple biosynthetic pathways.

## Sources of Acetyl-CoA

### Carbohydrate
| Pathway | Enzyme | Location |
|---------|--------|----------|
| **Glycolysis → Pyruvate → Acetyl-CoA** | Pyruvate dehydrogenase | Mitochondria |

### Fat
| Pathway | Enzyme | Location |
|---------|--------|----------|
| **Beta-oxidation** | Acyl-CoA dehydrogenases | Mitochondria |

### Protein
| Amino Acids | Pathway |
|-------------|---------|
| **Leucine, Lysine** | Direct to acetyl-CoA/acetoacetyl-CoA |
| **Isoleucine, Phenylalanine, Tryptophan, Tyrosine** | Partially ketogenic |

## Fates of Acetyl-CoA

```
Acetyl-CoA
    |
    +--→ Krebs Cycle → CO₂ + ATP (energy production)
    |
    +--→ Fatty acid synthesis (lipogenesis)
    |
    +--→ Ketogenesis (liver during fasting)
    |
    +--→ Cholesterol synthesis
    |
    +--→ Acetylcholine synthesis (neurotransmitter)
```

## The Acetyl-CoA Pool

### Compartmentalization
| Location | Metabolic Role |
|----------|----------------|
| **Mitochondria** | Energy production, ketogenesis |
| **Cytosol** | Fatty acid synthesis, cholesterol synthesis |

### Transport Between Compartments
- **Mitochondria → Cytosol:** Citrate shuttle
  - Citrate exported from mitochondria
  - ATP-citrate lyase cleaves to acetyl-CoA + oxaloacetate
  - **Rate-limiting for lipogenesis**

## Regulation by Metabolic State

### Fed State (High Insulin)
| Pathway | Activity | Reason |
|---------|----------|--------|
| **PDH** | Active | Glucose → acetyl-CoA |
| **Krebs cycle** | Moderate | ATP produced |
| **Lipogenesis** | High | Excess stored as fat |
| **Ketogenesis** | Off | Insulin inhibits |

### Fasting State (Low Insulin)
| Pathway | Activity | Reason |
|---------|----------|--------|
| **PDH** | Inhibited | Preserve glucose |
| **Fatty acid oxidation** | High | Fat → acetyl-CoA |
| **Ketogenesis** | High (liver) | Acetyl-CoA → ketones |
| **Krebs cycle** | Moderate | Some ATP |

## Clinical Relevance

### Elevated Acetyl-CoA (Fasting/Ketosis)
| Effect | Mechanism |
|--------|-----------|
| **Histone acetylation** | Epigenetic regulation |
| **Protein acetylation** | Metabolic regulation |
| **Ketone production** | Export to brain/muscle |

### Pyruvate Dehydrogenase Deficiency
- **Problem:** Cannot make acetyl-CoA from glucose
- **Consequence:** Lactic acidosis, neurological
- **Treatment:** Ketogenic diet (fatty acids → acetyl-CoA)

## Acetyl-CoA as Signaling Molecule

### Beyond Metabolism
| Target | Effect |
|--------|--------|
| **Histone acetyltransferases** | Gene expression regulation |
| **Autophagy** | Inhibition (abundant energy signal) |
| **Clock proteins** | Circadian rhythm regulation |

## Related
- [[Pyruvate_Metabolic_Hub_Multiple_Fates_[Z-001-1111].md]]
| [[Ketogenesis_Mechanism_Liver_Mitochondria_[Z-001-1094].md]]
| [[MOC-Krebs-Cycle]]

---
*Source: CGPT-0445 — Advanced biochemistry*
