---
uid: 20260221162600
type: ontology
structure-type: causal-map
title: IR Mechanisms Map — From Trigger to Disease
tags: [ontology, mechanisms, insulin-resistance, pathways, causality]
status: permanent
parent-moc: [[06-Structure/MOCs/MOC-Insulin-Signaling]]
---

# 🔗 IR Mechanisms Map

**Causal pathways from trigger → pathophysiology → clinical manifestation.**

> *"Insulin resistance is not a disease. It's a adaptive response gone chronic."*

---

## 🎯 The Central Paradox

**Acute IR:** Protective (infection, trauma, pregnancy)  
**Chronic IR:** Pathological (MetS, T2D, CVD, cancer, dementia)

**The question:** What converts acute → chronic?

---

## 🌊 Level 0: Triggers (The Initiators)

### Metabolic Triggers
```
EXCESS NUTRIENT INTAKE
    ↓
[CHRONIC POSITIVE ENERGY BALANCE]
    ↓
    ├─→ Glucose overflow → glucotoxicity
    ├─→ Lipid overflow → lipotoxicity [[CONCEPT_PLASMA_FREE_FATTY_ACIDS_LIPOTOXICITY_20260219_000048]]
    └─→ Mitochondrial overload → oxidative stress
```

**Key Players:**
- **Fructose** [[ATOMIC_FRUCTOSE_TOXIN_METS_20260216_067_000021]] — Hepatic overload, de novo lipogenesis
- **Excess Omega-6** [[EXCESSOMEGA6_INFLAM_20260215_046_000062]] — Pro-inflammatory precursors
- **Ultra-Processed Foods** [[ULTRA_PROCESSED_FOODS_HEALTH_RISKS_20260215_013_000192]] — Multiple hits

### Inflammatory Triggers
```
CHRONIC INFLAMMATION (Low-grade, systemic)
    ↓
    ├─→ Adipose tissue macrophage infiltration
    ├─→ Cytokine release (TNF-α, IL-6)
    └─→ JNK activation → IRS-1 serine phosphorylation
```

**Sources:**
- Obesity (adipokine dysregulation)
- Gut dysbiosis [[DYSBIOSIS_AUTOIMMUNE_75PCT_GUT_20260216_001_000057]] — LPS translocation
- Chronic infection
- Autoimmunity [[AUTOIMMUNITY_20260215_093_000038]]

### Stress Triggers
```
CHRONIC STRESS (Psychological or physiological)
    ↓
[HPA AXIS ACTIVATION] [[HPA_AXIS_STRESS_BIOMARKER_20260215_009_000090]]
    ↓
    ├─→ Elevated cortisol
    ├─→ Gluconeogenesis
    └─→ Visceral fat redistribution
```

**Selye's GAS:** [[SELYE_GAS_AUTOIMMUNE_20260215_051_000174]]
- Alarm → Resistance → Exhaustion (chronic IR = exhaustion phase)

### Endocrine Triggers
```
HORMONAL SHIFTS
    ↓
    ├─→ Pregnancy (placental hormones)
    ├─→ Menopause (estrogen decline)
    ├─→ Hypothyroidism [[IR_THYROID_HASHIMOTO_20260215_065_000097]]
    └─→ PCOS [[PCOS_DIAGNOSTIC_CRITERIA_20260215_017_000151]]
```

---

## 🔬 Level 1: Pathophysiology (Cellular Mechanisms)

### Pathway A: Lipotoxicity

```
CHRONIC NUTRIENT OVERFLOW
    ↓
[ADIPOSE TISSUE EXPANSION]
    ↓
    ├─→ Hypertrophy → hypoxia → fibrosis
    ├─→ Macrophage infiltration (M1 pro-inflammatory)
    └─→ Adipokine dysregulation
        ├─→ ↓ Adiponectin (insulin sensitizing)
        └─→ ↑ Leptin (resistance develops)
    ↓
[ECTOPIC LIPID DEPOSITION]
    ↓
    ├─→ Liver → NAFLD [[NAFLD_20260215_083_000139]]
    ├─→ Muscle → glucose uptake impairment
    ├─→ Pancreas → beta-cell lipotoxicity
    └─→ Heart → diabetic cardiomyopathy
    ↓
[CERAMIDE & DAG SYNTHESIS]
    ↓
    ├─→ Ceramide → apoptosis, ER stress
    └─→ DAG → PKC activation → IRS-1 serine phosphorylation
```

**Biomarker:** [[ADIPIC_ACID_IR_CUTOFFS_20260215_027_000004]] — Beta-oxidation impairment indicator

---

### Pathway B: Mitochondrial Dysfunction

```
MITOCHONDRIAL OVERLOAD
    ↓
[OXIDATIVE STRESS] [[TELOMERE_SHORTENING_IR_OXIDSTRESS_20260216_004_000182]]
    ↓
    ├─→ ROS production > antioxidant capacity
    ├─→ Mitochondrial DNA damage
    └─→ Electron transport chain dysfunction
    ↓
[IMPAIRED BETA-OXIDATION]
    ↓
    ├─→ Fatty acid accumulation
    ├─→ Incomplete oxidation → acylcarnitines
    └─→ Organic acid markers (adipic, suberic)
    ↓
[INSULIN SIGNALING DISRUPTION]
    ↓
    ├─→ IRS-1 tyrosine dephosphorylation
    ├─→ PI3K/Akt pathway inhibition
    └─→ GLUT4 translocation failure
```

**Key Insight:** Mitochondria are the metabolic "canary in the coal mine"

---

### Pathway C: Inflammatory Signaling

```
CHRONIC INFLAMMATION [[CHRONIC_INFLAMMATION_END_METS_20260215_025_000042]]
    ↓
[INNATE IMMUNE ACTIVATION]
    ↓
    ├─→ TLR4 activation (by LPS, FFA)
    ├─→ NF-κB nuclear translocation
    └─→ Inflammasome activation (NLRP3)
    ↓
[PRO-INFLAMMATORY CYTOKINES]
    ↓
    ├─→ TNF-α → JNK activation
    ├─→ IL-6 → SOCS3 induction
    └─→ IL-1β → IRS degradation
    ↓
[SERINE KINASE ACTIVATION]
    ↓
    ├─→ JNK → IRS-1 Ser307 phosphorylation
    ├─→ IKKβ → IRS-1 Ser312 phosphorylation
    └─→ PKCθ → IRS-1 Ser1101 phosphorylation
    ↓
[INSULIN RECEPTOR SUBSTRATE INHIBITION]
    ↓
    └─→ Tyr phosphorylation blocked
        └─→ Downstream signaling failure
```

**Result:** Insulin receptor fine, but signaling blocked downstream

---

### Pathway D: Gut-Derived Mechanisms

```
GUT DYSBIOSIS [[GUTDYSBIOSIS_MYELINATION_20260216223402_000079]]
    ↓
    ├─→ ↓ Beneficial species (Akkermansia, Faecalibacterium)
    └─→ ↑ Pathobionts (Proteobacteria)
    ↓
[BARRIER DYSFUNCTION] [[TIGHT_JUNCTIONS_GUT_BARRIER_FAIL_20260216_002_000189]]
    ↓
    ├─→ Tight junction disruption (zonulin)
    ├─→ LPS translocation → metabolic endotoxemia
    └─→ Short-chain fatty acid ↓ (butyrate)
    ↓
[SYSTEMIC EFFECTS]
    ↓
    ├─→ TLR4 activation (liver, muscle, adipose)
    ├─→ Low-grade inflammation
    └─→ Glucose intolerance
```

**Butyrate Connection:** [[BUTYRATE_GUT_MUCOSAL_BARRIER_20260215_103_000080]]
- Fuel for colonocytes
- Tight junction protein synthesis
- HDAC inhibition (anti-inflammatory)

---

### Pathway E: Endoplasmic Reticulum Stress

```
METABOLIC OVERLOAD
    ↓
[ER STRESS] (Unfolded Protein Response)
    ↓
    ├─→ Protein synthesis demand > capacity
    ├─→ Lipid synthesis overload
    └─→ Calcium dysregulation
    ↓
[UPR ACTIVATION]
    ↓
    ├─→ PERK → eIF2α phosphorylation → insulin translation ↓
    ├─→ IRE1α → JNK activation
    └─→ ATF6 → lipogenesis genes
    ↓
[CROSS-TALK WITH INFLAMMATION]
    ↓
    └─→ NF-κB activation
        └─→ Positive feedback loop
```

---

## 🏥 Level 2: Clinical Manifestation

### Stage 1: Compensatory IR (Hidden)

```
INSULIN RESISTANCE DEVELOPS
    ↓
[BETA-CELL COMPENSATION]
    ↓
    ├─→ ↑ Insulin secretion
    ├─→ Hyperinsulinemia (fasting)
    └─→ Glucose maintained NORMAL
    ↓
[BIOMARKERS]
    ├─→ Fasting insulin ↑ (first sign!)
    ├─→ Adipic acid ↑ (urine organic acids)
    ├─→ HOMA-IR ↑
    └─→ Glucose: NORMAL ⚠️
```

**Window of Opportunity:** This is where we intervene!

---

### Stage 2: Beta-Cell Exhaustion

```
CHRONIC HYPERINSULINEMIA
    ↓
[BETA-CELL BURNOUT]
    ↓
    ├─→ Amylin deposition
    ├─→ Oxidative stress
    ├─→ ER stress
    └─→ Apoptosis
    ↓
[RELATIVE HYPOINSULINEMIA]
    ↓
    └─→ Glucose starts rising
        ├─→ IFG (Impaired Fasting Glucose)
        └─→ IGT (Impaired Glucose Tolerance)
```

**Biomarkers:**
- Fasting glucose: 100-125 mg/dL (IFG)
- 2h OGTT: 140-199 mg/dL (IGT)
- HbA1c: 5.7-6.4% (pre-diabetes)

---

### Stage 3: Overt Diabetes

```
BETA-CELL MASS INSUFFICIENT
    ↓
[ABSOLUTE INSULIN DEFICIENCY]
    ↓
    ├─→ Fasting glucose > 126 mg/dL
    ├─→ HbA1c > 6.5%
    └─→ Symptomatic (polyuria, polydipsia)
    ↓
[COMPLICATIONS CASCADE]
    ↓
    ├─→ Microvascular (retinopathy, nephropathy, neuropathy)
    ├─→ Macrovascular (CVD, stroke)
    ├─→ Fatty liver (NASH)
    └─→ Cancer risk ↑
```

---

## 🔄 The Vicious Cycles

### Cycle 1: IR → Obesity → IR

```
INSULIN RESISTANCE
    ↓
HYPERINSULINEMIA
    ↓
FAT STORAGE PROMOTION
    ↓
WEIGHT GAIN
    ↓
WORSENING IR
    ↓
(back to top)
```

**Break point:** Caloric restriction, weight loss

---

### Cycle 2: Inflammation → IR → Inflammation

```
INFLAMMATION (TNF-α, IL-6)
    ↓
IRS-1 SERINE PHOSPHORYLATION
    ↓
INSULIN RESISTANCE
    ↓
ADIPOKINE DYSREGULATION
    ↓
MORE INFLAMMATION
    ↓
(back to top)
```

**Break point:** Anti-inflammatory interventions (omega-3, VitD, gut healing)

---

### Cycle 3: Stress → Cortisol → IR → Stress

```
CHRONIC STRESS
    ↓
ELEVATED CORTISOL
    ↓
GLUCONEOGENESIS + VISCERAL FAT
    ↓
INSULIN RESISTANCE
    ↓
METABOLIC STRESS
    ↓
HPA AXIS DYSREGULATION
    ↓
(back to top)
```

**Break point:** Stress management, adaptogens, sleep optimization

---

## 🎯 Intervention Points

### Primary Prevention (Stage 1)

| Target | Mechanism | Biomarker |
|--------|-----------|-----------|
| **Diet** | ↓ Nutrient overflow | Adipic acid normalization |
| **Exercise** | ↑ Mitochondrial biogenesis | FFA clearance |
| **Sleep** | ↓ Cortisol, repair | Morning cortisol curve |
| **Stress** | ↓ HPA activation | Cortisol/DHEA ratio |
| **Gut** | ↑ Butyrate, barrier | Calprotectin, zonulin |

### Secondary Prevention (Stage 2)

| Target | Mechanism | Biomarker |
|--------|-----------|-----------|
| **Metformin** | ↓ Hepatic glucose output | Glucose, insulin |
| **Lifestyle intensification** | ↑ Insulin sensitivity | HOMA-IR |
| **Micronutrients** | Cofactor optimization | VitD, Mg, Zn |

---

## 🔗 Related Navigation

- [[MOC-PhD-Insulin-Resistance]] — Main research hub
- [[Biomarkers_Taxonomy]] — Biomarker classification
- [[MOC-Diabetes-T2D]] — T2D MOC
- [[MOC-Metabolic-Syndrome]] — MetS hub
- [[55-MOCs/]] — All topic MOCs

---

## 📚 Key References

- Reaven 1988: Banting Lecture [[REAVEN_1988_IR_BANTING_LECTURE_20260215_107_000172]]
- Cellular mechanisms: [[Refs_Springer_IR_ChronicDisease_20260216_052]]
- Inflammation-IR link: [[Refs_Gallagher_IR_RA_20260216_036]]
- Our protocol: [[01-Projects/PhD/PhD_Protocol_UoC_Application_EN_20260219]]

---

*Map version: 1.0*  
*Last updated: 2026-02-21*  
*Based on: 35+ IR-related atomic notes*
