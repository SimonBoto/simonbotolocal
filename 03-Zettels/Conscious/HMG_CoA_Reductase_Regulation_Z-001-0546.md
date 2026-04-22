---
uid: Z-001-0546
type: zettel
title: HMG-CoA Reductase Regulation
aliases: [HMG-CoA-Reductase, HMGCR, Statin-Target, Cholesterol-Regulation]
domain: 001
tags: [zettel, hmg-coa-reductase, hmgcr, statin, cholesterol-regulation, srebp-2, ampk]
parent-moc: [[MOC-Lipid-Metabolism]]
status: conscious
source-litnote: [[Mevalonate_Pathway_From_Acetyl-CoA_to_Cholesterol_L-001-0509_CGPT-0393]]
extraction-date: 2026-03-01
---

source-litnote: "[[CGPT_0393_Mitochondrial_Health_Intervention_Recommendations_L-001-0707]]"
# HMG-CoA Reductase Regulation
## Status Checklist

- [ ] Source verified and linked
- [ ] Core Principle articulated
- [ ] Mechanism/Key Details present
- [ ] Evidence attached
- [ ] Significance clear
- [ ] Clinical relevance assessed
- [ ] Related zettels connected
- [ ] Lateral connections added
- [ ] RON review pending


## Core Claim
HMG-CoA reductase is regulated at multiple levels—transcriptional (SREBP-2), post-translational (AMPK phosphorylation, sterol-dependent degradation), and pharmacological (statin inhibition)—creating a sophisticated control system that balances cholesterol synthesis with cellular energy status and therapeutic intervention.

## Evidence

### Transcriptional Regulation (SREBP-2 Pathway)

**Mechanism:**
```
Low cholesterol → SREBP-2 cleavage → Nuclear entry
    ↓
HMGCR gene transcription ↑
    ↓
Increased enzyme synthesis
```

**Converse:**
```
High cholesterol → SREBP-2 suppressed → HMGCR transcription ↓
```

**Timescale:** Hours to days (new protein synthesis required)

### Post-Translational Regulation

**AMPK Phosphorylation (Short-term):**

| Energy State | AMPK Activity | HMGCR Phosphorylation | Result |
|--------------|---------------|----------------------|--------|
| **Low energy** (high AMP) | Active | Phosphorylated | **Inhibited** (conserve ATP) |
| **High energy** (low AMP) | Inactive | Dephosphorylated | **Active** |

**Rationale:** Cholesterol synthesis consumes 18 ATP per molecule—shut down when energy scarce.

**Sterol-Dependent Degradation (Medium-term):**
- High sterol levels → HMGCR ubiquitination
- Proteasome-mediated degradation
- Reduces enzyme half-life
- Timescale: Hours

### Pharmacological Inhibition

**Statin Mechanism:**
- Competitive inhibition with HMG-CoA substrate
- Binding affinity: 10,000x > substrate
- Blocks active site access
- Reduces mevalonate production 70-90%

**Statin Classes:**

| Statin | Potency | Lipophilicity | Notes |
|--------|---------|---------------|-------|
| Rosuvastatin | Highest | Low | Hydrophilic, minimal CYP3A4 |
| Atorvastatin | High | High | Most prescribed |
| Simvastatin | Moderate | High | Prodrug, CYP3A4 substrate |
| Pravastatin | Moderate | Low | Hydrophilic, renal excretion |

**Dose-Response:**
- Each doubling → 6% additional LDL reduction
- Diminishing returns at high doses
- Maximal effect: 50-60% LDL reduction

### CoQ10 Depletion

**Mechanism:**
- Statins block ALL mevalonate pathway products
- FPP (CoQ10 precursor) unavailable
- CoQ10 synthesis reduced 40-50%

**Consequences:**
- Mitochondrial dysfunction
- Myopathy risk
- Exercise intolerance
- Fatigue

**Mitigation:**
- CoQ10 supplementation: 100-200 mg daily
- Ubiquinol (reduced) > ubiquinone (oxidized)
- Take 2-4 hours away from statin

## Clinical Implication

**Statin Selection:**
- High potency needed: Rosuvastatin, atorvastatin
- CYP3A4 interactions: Avoid simvastatin with inhibitors
- Renal impairment: Prefer pravastatin
- Myopathy history: Hydrophilic statin + CoQ10

**Monitoring:**
- Lipids at 4-12 weeks
- Liver enzymes (ALT) if symptomatic
- CK only if muscle symptoms
- CoQ10 optional (symptom-driven)

## METHAP Relevance

**Integrated Approach:**
- CoQ10 mandatory with statin therapy
- Vitamin D3 still effective (skin synthesis bypasses block)
- Nutrient support: Mg, B-vitamins for pathway cofactors
- Monitor organic acids for mitochondrial function

---

## Related Zettels
- [[Mevalonate_Pathway_Enzymatic_Steps_Z-001-0545]] — Complete pathway
- [[Mevalonate_Branch_Points_Z-001-0547]] — FPP branch point
- [[Mevalonate_Clinical_Implications_Z-001-0548]] — Side effects
- [[Mevalonate_METHAP_Integration_Z-001-0549]] — METHAP protocol

## Related Zettels from Same Source

- [[Mevalonate_Branch_Points_Z-001-0547]]
- [[Mevalonate_Clinical_Implications_Z-001-0548]]
- [[Mevalonate_METHAP_Integration_Z-001-0549]]
- [[Mevalonate_Pathway_Enzymatic_Steps_Z-001-0545]]

## Source
[[Mevalonate_Pathway_From_Acetyl-CoA_to_Cholesterol_L-001-0509_CGPT-0393]]

---
parent-index: [[03-Zettels]]
