---
uid: Z-001-1258
type: zettel
title: ATP Yield Comparison — Glucose vs BHB vs Fatty Acids
domain: 001
tags: [zettel, ATP-yield, energy-metabolism, glucose, BHB, fatty-acids, efficiency]
parent-moc: [[MOC-Ketogenesis]]
status: conscious
source-litnote: [[L-001-0655_Ketone_Body_Metabolism_Deep_Dive_CGPT-0647]]
extraction-date: 2026-03-11
---

# ATP Yield Comparison — Glucose vs BHB vs Fatty Acids

## Core Claim
While glucose yields 30-32 ATP per molecule and BHB yields ~22.5 ATP, fatty acids like palmitic acid generate substantially more ATP (~129 ATP) due to their higher carbon content and the reducing equivalents produced during beta-oxidation; ketone bodies serve as an efficient transportable fuel derived from fatty acids, providing ~70% of glucose's ATP yield while sparing glucose for obligate glucose-dependent tissues.

## Evidence

### ATP Yield by Substrate

| Substrate | ATP Yield | Carbon Atoms | ATP/Carbon | Notes |
|-----------|-----------|--------------|------------|-------|
| **Glucose** | 30-32 ATP | 6 | ~5.2 | Complete oxidation via glycolysis + Krebs |
| **BHB** | ~22.5 ATP | 4 | ~5.6 | After conversion to 2 acetyl-CoA |
| **Acetoacetate** | ~20 ATP | 4 | ~5.0 | Direct utilization (no BDH1 NADH) |
| **Palmitic acid (C16:0)** | ~129 ATP | 16 | ~8.1 | 8 acetyl-CoA + beta-oxidation NADH/FADH₂ |
| **Oleic acid (C18:1)** | ~146 ATP | 18 | ~8.1 | Monounsaturated; slightly less than stearic |

### Glucose ATP Calculation

**Glycolysis (cytoplasm):**
- Investment: -2 ATP
- Payoff: +4 ATP (substrate-level)
- Net: +2 ATP, +2 NADH

**Pyruvate → Acetyl-CoA (mitochondria):**
- 2 pyruvate → 2 acetyl-CoA
- +2 NADH

**Krebs Cycle (per acetyl-CoA):**
- +3 NADH, +1 FADH₂, +1 GTP
- ×2 for 2 acetyl-CoA: +6 NADH, +2 FADH₂, +2 GTP

**Total:**
- NADH: 2 (glycolysis) + 2 (PDH) + 6 (Krebs) = 10 NADH → ~25 ATP
- FADH₂: 2 → ~3 ATP
- GTP: 2 → 2 ATP
- Substrate-level: 4 - 2 = 2 ATP
- **Total: ~32 ATP** (assuming 2.5 ATP/NADH, 1.5 ATP/FADH₂)

### BHB ATP Calculation

**Conversion to 2 Acetyl-CoA:**
- BDH1: BHB → acetoacetate + NADH (+2.5 ATP)
- SCOT + Thiolase: acetoacetate → 2 acetyl-CoA (no direct ATP)

**Krebs Cycle (2 acetyl-CoA):**
- +6 NADH (+15 ATP), +2 FADH₂ (+3 ATP), +2 GTP (+2 ATP)

**Total:**
- 1 NADH (BDH1) + 6 NADH (Krebs) = 7 NADH → ~17.5 ATP
- 2 FADH₂ → ~3 ATP
- 2 GTP → 2 ATP
- **Total: ~22.5 ATP per BHB**

### Efficiency Comparison

| Metric | Glucose | BHB | Palmitic Acid |
|--------|---------|-----|---------------|
| **ATP per molecule** | 32 | 22.5 | 129 |
| **ATP per carbon** | 5.3 | 5.6 | 8.1 |
| **Water-soluble** | Yes | Yes | No (requires albumin) |
| **Crosses BBB** | Yes (via GLUT1/3) | Yes (via MCTs) | No |
| **Storage form** | Glycogen (~2,000 kcal) | None (continuous production) | Triglycerides (unlimited) |

## Clinical Implication

**Brain Fuel Economics:**
- Brain consumes ~120g glucose/day (480 kcal)
- In ketosis, brain can derive 60-70% energy from ketones
- Reduces glucose requirement to ~40g/day
- Extends survival during prolonged fasting

**Cardiac Preference:**
- Heart preferentially uses ketones over fatty acids when available
- More efficient ATP production per oxygen consumed
- Reduced oxygen demand during ketosis

**Exercise Performance:**
- Fat-adapted athletes spare glycogen
- Ketones may provide additional fuel during ultra-endurance
- Transition period ("keto flu") reflects metabolic adaptation

## METHAP Relevance

**Metabolic Assessment:**
- Understanding fuel efficiency informs dietary recommendations
- Ketone monitoring as marker of fat oxidation capacity
- Integration with metabolic flexibility testing

---

## Related Zettels
- [[BHB_Production_Fatty_Acids_Z-001-1256]] — Ketone production
- [[Ketolysis_SCOT_Mechanism_Z-001-1257]] — Ketone utilization
- [[Ketone_vs_Glycolysis_Mitochondrial_Entry_Z-001-1259]] — Entry mechanisms

## Source
[[L-001-0655_Ketone_Body_Metabolism_Deep_Dive_CGPT-0647]]

---
parent-index: [[03-Zettels]]
