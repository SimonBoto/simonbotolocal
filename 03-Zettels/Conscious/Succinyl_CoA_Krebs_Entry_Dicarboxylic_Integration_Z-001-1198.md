---
uid: Z-001-1198
type: zettel
title: Succinyl-CoA Entry into Krebs Cycle — Dicarboxylic Acid Integration
domain: 001
tags: [zettel, succinyl-coa, krebs-cycle, dicarboxylic-acids, adipate, metabolism]
parent-moc: 
extraction-date: 2026-03-09
source-litnote: "[[LitNote_Adipate_Metabolism_Dicarboxylic_Pathway_L-001-0629]]"
status: conscious
---

# Succinyl-CoA Entry into Krebs Cycle — Dicarboxylic Acid Integration

## Overview

Succinyl-CoA is the critical entry point where dicarboxylic acid  converges with the Krebs cycle. This integration allows adipate and other dicarboxylic acids to contribute to cellular energy production.

---

## The Succinyl-CoA Connection

### Dicarboxylic Acid Pathway Terminus

```
Adipate (C6) ──→ β-oxidation ──→ Succinyl-CoA + 2 Acetyl-CoA
                                   ↓
                              Enters Krebs cycle
```

**Key Point:** Unlike fatty acids that only produce acetyl-CoA, dicarboxylic acids yield both succinyl-CoA AND acetyl-CoA.

### Succinyl-CoA Position in Krebs Cycle

```
α-Ketoglutarate → [α-KGDH] → Succinyl-CoA → [Succinyl-CoA Synthetase] → Succinate
                    ↑                                      ↓
              (decarboxylation)                        (substrate-level phosphorylation)
```

**Succinyl-CoA location:** Mid-cycle, between α-ketoglutarate and succinate

---

## Enzymology: Succinyl-CoA Synthetase

### Reaction
```
Succinyl-CoA + GDP + Pi ⇌ Succinate + GTP + CoA-SH
```

### Unique Feature: Substrate-Level Phosphorylation
- Only Krebs cycle step producing high-energy phosphate directly
- GTP equivalent to ATP (nucleoside diphosphate kinase transfers phosphate)

### ATP Yield from This Step
| Product | ATP Equivalent |
|---------|----------------|
| GTP | 1 ATP |

---

## Dicarboxylic Acid Contribution to Krebs

### Complete Oxidation Pathway

```
Adipate (C6)
    ↓
Adipyl-CoA
    ↓
2 cycles β-oxidation
    ↓
┌─────────────────┬──────────────────────┐
│  Succinyl-CoA   │    2 Acetyl-CoA      │
│     (C4)        │       (C2×2)         │
└────────┬────────┴──────────┬───────────┘
         ↓                   ↓
    [Krebs entry]      [Krebs entry]
         │                   │
    Succinate ←──────→ Citrate synthesis
         │                   │
    Completes cycle    2× full cycles
         │                   │
    3 ATP (GTP+ETC)    20 ATP
         │                   │
    Plus ETC from      Plus ETC from
    conversion         conversion
```

### ATP Accounting from Adipate

| Source | ATP Yield |
|--------|-----------|
| Succinyl-CoA pathway | ~12 ATP |
| 2 Acetyl-CoA (×2 cycles) | ~20 ATP |
| FADH₂ from β-oxidation (×2) | ~3 ATP |
| NADH from β-oxidation (×2) | ~5 ATP |
| **Total** | **~40 ATP** |

---

## Clinical Significance

### Why This Matters

**Dicarboxylic acids are not "waste" — they're fuel:**
- Complete oxidation possible
- High energy yield (~6.7 ATP/carbon)
- More efficient than glucose (5.2 ATP/carbon)

### Elevated Urinary Dicarboxylic Acids Implies:

1. **Metabolic overflow** — Production exceeds processing capacity
2. **l limitation** — Cannot handle substrate load
3. **Enzyme bottleneck** — Dicarboxylic pathway saturated

**NOT:** Inability to use these molecules — just rate limitation

---

## Comparison: Entry Points into Krebs Cycle

| Substrate | Entry Point | ATP Yield | Notes |
|-----------|-------------|-----------|-------|
| **Glucose** | Pyruvate → Acetyl-CoA | ~30-32 | Standard fuel |
| **Fatty acids** | Acetyl-CoA (β-oxidation) | ~6.6/carbon | Even-chain only |
| **Adipate** | Succinyl-CoA + Acetyl-CoA | ~40 (C6) | Dual entry |
| **Glutamine** | α-Ketoglutarate | Variable | Anaplerotic |
| **Odd-chain FA** | Succinyl-CoA + Acetyl-CoA | Similar to adipate | Propionate pathway |

---

## Integration with Other Pathways

### Succinyl-CoA as Junction

**Krebs cycle:** Energy production ↓
**Heme synthesis:** Porphyrin pathway ← (first committed step)
**Ketone body metabolism:** Interconversion possible

**Regulatory significance:** Branch point = control point

---

## Related

- [[Complete_Adipate_Metabolism_Formation_to_Krebs_Z-001-1196]]
- [[Dicarboxylic_Acid_Energy_Yield_ATP_Z-001-1197]]
- _Fatty_Acid_Breakdown_Z-001-1192]]

---

*Source: [[LitNote_Adipate_Metabolism_Dicarboxylic_Pathway_L-001-0629]] | 2026-03-09*


## RELATED FILES
- [[Metabolic_IR_Family_[B-005-0001]|Biomarker Family]]
- 
- [[BCAA_Succinyl_CoA_Methylmalonyl_Pathway_Z-001-0610]|Z-001-0610]]
