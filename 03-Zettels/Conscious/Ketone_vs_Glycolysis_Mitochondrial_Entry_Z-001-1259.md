---
uid: Z-001-1259
type: zettel
title: Ketone vs Glycolysis — Mitochondrial Entry Differences
domain: 001
tags: [zettel, ketone-entry, glycolysis, mitochondrial-transport, MCT, GLUT, acetyl-CoA]
parent-moc: [[MOC-Lipid-Metabolism]]
status: conscious
source-litnote: [[L-001-0655_Ketone_Body_Metabolism_Deep_Dive_CGPT-0647]]
extraction-date: 2026-03-11
---

source-litnote: "[[CGPT_0647_ATP_Pathways_Overview_L-001-0715]]"
# Ketone vs Glycolysis — Mitochondrial Entry Differences
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
Ketone bodies and glucose follow distinct cellular routes to mitochondrial acetyl-CoA: ketones enter mitochondria directly via monocarboxylate transporters (MCTs) and are converted to acetyl-CoA intramitochondrially, while glucose requires cytosolic glycolysis to pyruvate, mitochondrial pyruvate transport, and PDH-mediated conversion to acetyl-CoA, with ketones bypassing glycolytic regulation and entering the energy production pathway more directly.

## Evidence

### Entry Pathway Comparison

| Feature | Ketone Utilization | Glycolysis |
|---------|-------------------|------------|
| **Cellular entry** | MCTs (monocarboxylate transporters) | GLUT transporters |
| **Initial metabolism** | Cytosolic (BDH1 for BHB) | Cytosolic (glycolysis) |
| **Mitochondrial entry** | Direct (acetoacetate) | Pyruvate transporters |
| **Conversion to acetyl-CoA** | Mitochondrial (SCOT + thiolase) | Mitochondrial (PDH) |
| **ATP from entry steps** | BDH1 produces NADH (+2.5 ATP) | Glycolysis: net +2 ATP, +2 NADH |
| **Regulation point** | SCOT (constitutive) | PDH (highly regulated) |

### Ketone Body Transport and Entry

**Monocarboxylate Transporters (MCTs):**
- MCT1: Ubiquitous, high affinity
- MCT2: Liver, kidney (higher affinity)
- MCT4: Muscle (export during exercise)
- Proton-coupled symport (lactate, ketones, pyruvate)

**Intracellular Route:**
```
Blood BHB → MCT → Cytosol
    ↓ BDH1 (cytosolic or mitochondrial)
Acetoacetate → Mitochondrial MCT or direct diffusion
    ↓ SCOT (mitochondrial matrix)
Acetoacetyl-CoA → Thiolase → 2 Acetyl-CoA → Krebs
```

### Glucose Transport and Entry

**Glucose Transporters (GLUTs):**
- GLUT1: Basal uptake (brain, erythrocytes)
- GLUT2: Liver, pancreas (high Km, glucose sensing)
- GLUT3: Neurons (high affinity)
- GLUT4: Muscle, adipose (insulin-dependent)

**Intracellular Route:**
```
Blood glucose → GLUT → Cytosol
    ↓ Glycolysis
Pyruvate → Mitochondrial pyruvate carrier (MPC)
    ↓ PDH (pyruvate dehydrogenase)
Acetyl-CoA → Krebs cycle
```

### Key Regulatory Differences

**PDH Regulation (Glycolysis):**
| Factor | Effect | Rationale |
|--------|--------|-----------|
| High acetyl-CoA | Inhibits | Prevents overproduction |
| High NADH | Inhibits | Signals energy sufficiency |
| High ATP | Inhibits | Energy surplus |
| Pyruvate | Activates | Substrate availability |
| Insulin | Activates | Fed state, promote glucose use |

**SCOT Regulation (Ketolysis):**
- Constitutively active in ketone-utilizing tissues
- Not subject to acute energy status regulation
- Activity determined by substrate availability (ketone concentration)

### Convergence Point

**Both pathways ultimately produce mitochondrial acetyl-CoA:**
```
Glucose → Pyruvate → PDH → Acetyl-CoA → Krebs
Ketones → Acetoacetate → SCOT/Thiolase → Acetyl-CoA → Krebs
                              ↓
                    Common downstream metabolism
```

## Clinical Implication

**Metabolic Flexibility Implications:**
- Ketones bypass insulin-dependent GLUT4 transport
- Ketones bypass PDH regulation (bypasses insulin resistance at PDH)
- Provides alternative fuel when glucose metabolism impaired

**Therapeutic Relevance:**
- Type 2 diabetes: Ketones provide insulin-independent fuel
- Neurodegeneration: Brain can use ketones when glucose metabolism impaired
- Cardiac metabolism: Heart efficiently uses ketones during stress

**Exercise Context:**
- Lactate and ketones share MCTs (competitive transport)
- High lactate during exercise may transiently reduce ketone uptake
- Training increases MCT expression, enhancing ketone utilization

## METHAP Relevance

**Clinical Assessment:**
- Understanding fuel entry informs metabolic intervention design
- MCT expression may vary with metabolic health status
- Integration with metabolomics for comprehensive fuel utilization assessment

---

## Related Zettels
- [[BHB_Production_Fatty_Acids_Z-001-1256]] — Ketone production
- [[Ketolysis_SCOT_Mechanism_Z-001-1257]] — Ketone utilization
- [[ATP_Yield_Comparison_Z-001-1258]] — Energy efficiency

## Related Zettels from Same Source

- [[ATP_Yield_Comparison_Z-001-1258]]
- [[BHB_Production_Fatty_Acids_Z-001-1256]]
- [[Ketolysis_SCOT_Mechanism_Z-001-1257]]

## Source
[[L-001-0655_Ketone_Body_Metabolism_Deep_Dive_CGPT-0647]]

---
parent-index: [[03-Zettels]]
