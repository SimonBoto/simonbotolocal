---
uid: Z-001-1098
type: zettel
title: Amino Acid Krebs Entry Points Map
aliases: [Z-001-1098, Krebs-Entry]
domain: 001
domain-name: Amino Acid Metabolism
tags: [zettel, amino-acids, krebs, entry-points, metabolism]
parent-moc: [[MOC-Insulin-Signaling]]
source-litnote: [[LitNote_Amino_Acid_Catabolism_Krebs_L-001-0603]
source: [[LitNote_Amino_Acid_Catabolism_Krebs_L-001-0603]
confidence: high
created: 2026-03-08
---

# Amino Acid Krebs Entry Points Map

## Overview
Each amino acid enters the  at specific points, feeding carbon skeletons into central energy .

## Entry Points by Krebs Intermediate

### Pyruvate Entry
| Amino Acid | Conversion Enzyme | Cofactor |
|------------|-------------------|----------|
| **Alanine** | Alanine transaminase | B6 (PLP) |
| **Serine** | Serine dehydratase | B6 (PLP) |
| **Glycine** | Glycine cleavage system | B vitamins |
| **Cysteine** | Cysteine dioxygenase | Iron |
| **Tryptophan** | Multiple steps | B6, B2 |

### Acetyl-CoA Entry (Ketogenic)
| Amino Acid | Pathway |
|------------|---------|
| **Leucine** | HMG-CoA pathway |
| **Lysine** | Saccharopine pathway |
| **Tryptophan** | Kynurenine pathway |
| **Phenylalanine** | Tyrosine → fumarate + acetoacetate |
| **Tyrosine** | Fumarate + acetoacetate |

### Alpha-Ketoglutarate Entry
| Amino Acid | Conversion |
|------------|------------|
| **Glutamate** | Glutamate dehydrogenase |
| **Glutamine** | Glutaminase → glutamate |
| **Proline** | Proline oxidase → glutamate |
| **Arginine** | Arginase → ornithine → glutamate |
| **Histidine** | Histidase → urocanate → glutamate |

### Succinyl-CoA Entry
| Amino Acid | Pathway |
|------------|---------|
| **Isoleucine** | Propionyl-CoA → methylmalonyl-CoA |
| **Methionine** | Propionyl-CoA pathway |
| **Valine** | Propionyl-CoA pathway |
| **Threonine** | Propionyl-CoA or glycine cleavage |

### Fumarate Entry
| Amino Acid | Pathway |
|------------|---------|
| **Phenylalanine** | Tyrosine → fumarate |
| **Tyrosine** | Fumarate + acetoacetate |
| **Aspartate** | Aspartate transaminase |

### Oxaloacetate Entry
| Amino Acid | Conversion |
|------------|------------|
| **Aspartate** | Aspartate transaminase |
| **Asparagine** | Asparaginase → aspartate |

## The Complete Map

```
AMINO ACIDS
     |
     | Deamination/Transamination
     v
CARBON SKELETONS
     |
     +---> Pyruvate ------> Acetyl-CoA --> Krebs
     |                         |
     +---> Acetyl-CoA ----------+ (Leu, Lys)
     |
     +---> Acetoacetyl-CoA ----> Acetyl-CoA (Phe, Tyr, Trp)
     |
     +---> Alpha-ketoglutarate -> Krebs (Glu, Gln, Pro, Arg, His)
     |
     +---> Succinyl-CoA --------> Krebs (Ile, Met, Val, Thr)
     |
     +---> Fumarate ------------> Krebs (Phe, Tyr, Asp)
     |
     +---> Oxaloacetate --------> Krebs (Asp, Asn)
```

## Cofactor Requirements Summary

| Cofactor | Required For |
|----------|--------------|
| **B6 (PLP)** | Most transaminases |
| **B12** | Methylmalonyl-CoA mutase (Ile, Met, Val) |
| **B2** | Oxidative deaminations |
| **B3** | Multiple dehydrogenases |
| **Iron** | Oxidative enzymes (Tyr, Phe) |

## Related
- [[Alpha_Keto_Acids_Transamination_Intermediates_Z-001-1099]
- [[Transamination_B6_Cofactors_Amino_Acid_Metabolism_Z-001-1100]
- 

---
*Source: CGPT-0445 — Advanced *


## RELATED FILES
- [[Iron_Family_[B-003-0001]|Biomarker Family]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]

---

## Connection to Vault

- Up: [[MOC-Insulin-Signaling]]
- Related: [[MOC-Metabolic-Syndrome]], [[MOC-Metabolomics]]
