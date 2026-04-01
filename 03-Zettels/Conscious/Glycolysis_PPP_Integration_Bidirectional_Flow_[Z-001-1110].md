---
uid: Z-001-1110
type: zettel
title: Glycolysis PPP Integration Bidirectional Flow
aliases: [Z-001-1110, Glycolysis-PPP]
domain: 001
domain-name: Carbohydrate Metabolism
tags: [zettel, glycolysis, ppp, integration, flow]
parent-moc: 
source-litnote: [[LitNote_Metabolic_Pathway_Integration_L-001-0606]]
source: [[LitNote_Metabolic_Pathway_Integration_L-001-0606]]
confidence: high
created: 2026-03-08
---

# Glycolysis PPP Integration Bidirectional Flow

## Overview
The pentose phosphate pathway branches from glycolysis at glucose-6-phosphate and can feed intermediates back into glycolysis, creating bidirectional metabolic flexibility.

## The Branch Point

### Glucose-6-Phosphate Decision
```
Glucose-6-P
    ↓
    ├──→ Glycolysis → Pyruvate → Energy
    │
    └──→ PPP (oxidative) → NADPH + Ribose-5-P
              ↓
         PPP (non-oxidative) → Glycolytic intermediates
```

### Regulatory Factors
| Factor | Glycolysis Favored | PPP Favored |
|--------|-------------------|-------------|
| **NAD⁺/NADH** | High | Low |
| **NADP⁺/NADPH** | Low | High |
| **ATP/ADP** | High | Low |
| **Ribose need** | - | High |
| **** | Stimulates | Stimulates |

## Bidirectional Flow

### Direction 1: Glycolysis → PPP
**When active:** High demand for NADPH or ribose
- Rapidly dividing cells
- Fatty acid synthesis
- Steroid synthesis
- Red blood cells (NADPH for glutathione)

### Direction 2: PPP → Glycolysis
**When active:** Excess ribose, need for energy
- Ribose-5-phosphate converts back to fructose-6-phosphate
- Re-enters glycolysis for ATP production
- Important when nucleotide synthesis demand drops

## The Transketolase/Transaldolase Bridge

### Non-Oxidative PPP Reactions
```
Ribose-5-P + Xylulose-5-P
          ↓ Transketolase
  Sedoheptulose-7-P + Glyceraldehyde-3-P
          ↓ Transaldolase
  Fructose-6-P + Erythrose-4-P
```

### Result
- **Fructose-6-P:** Re-enters glycolysis
- **Glyceraldehyde-3-P:** Re-enters glycolysis
- **Complete integration:** Carbon skeletons recycled

## Cellular Context

### Erythrocytes (RBCs)
| Feature | Reason |
|---------|--------|
| **High PPP flux** | Need NADPH to maintain glutathione |
| **No ** | Only glycolysis + PPP |
| **G6PD deficiency** | Hemolytic anemia (insufficient NADPH) |

### Adipose Tissue
| Feature | Reason |
|---------|--------|
| **High PPP flux** | Need NADPH for fatty acid synthesis |
| **Fed state** | Glucose → fat storage |

### Liver
| Feature | Reason |
|---------|--------|
| **Flexible** | Switches based on metabolic needs |
| **Both directions** | Biosynthesis and energy production |

## Quantitative Flow

### Typical Distribution
| Condition | Glycolysis | PPP |
|-----------|-----------|-----|
| **Resting muscle** | 90% | 10% |
| **Liver (fed)** | 70% | 30% |
| **Adipose (fed)** | 40% | 60% |
| **RBCs** | 90% | 10% (but essential) |

## Related
- [[Pyruvate_Metabolic_Hub_Multiple_Fates_[Z-001-1111].md]]
| [[Pentose_Phosphate_Pathway_Ribose_NADPH_[Z-001-1090].md]]
| 

---
*Source: CGPT-0445 — Advanced *


## RELATED FILES
- [[Iron_Family_[B-003-0001]|Biomarker Family]]
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]]
- 
