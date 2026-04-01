---
uid: PROJ-001
type: protocol
title: Link Architecture Design — Phase 2 Output
aliases: [Link-Architecture, Biomarker-Linking-Protocol]
domain: 006
tags: [protocol, linking, biomarkers, zettelkasten, architecture]
parent-moc: [[MOC-Biomarkers]]
status: complete
created: 2026-03-31
source-litnote: Synthesized from clinical practice
---

# LINK ARCHITECTURE DESIGN — PHASE 2 OUTPUT

**Project:** Zettelkasten Linking Enhancement  
**Phase:** 2 — Design  
**Date:** 2026-03-31  
**Status:** Complete  

---

## 1. LINK TYPOLOGY

### Type A: Hierarchical Links (Parent-Child)
**Purpose:** Establish taxonomic relationships

**Pattern:**
```markdown
Child → Parent
[[Ferritin_[Z-003-0001].md|Ferritin]] → [[Iron_Panel_Family_[B-003-0001].md|Iron Panel]]
[[WBC_[Z-001-2001].md|WBC]] → [[CBC_Complete_[B-001-0001].md|CBC Family]]
```

**Usage:**
- Individual biomarker → Family guide
- Specific marker → Panel category
- Subtype → Supertype

---

### Type B: Associative Links (Related Concepts)
**Purpose:** Connect functionally related biomarkers

**Pattern:**
```markdown
[[Ferritin_[Z-003-0001].md|Ferritin]] ↔ [[CRP_[Z-002-0001].md|CRP]] (acute phase connection)
[[Insulin_[Z-005-0002].md|Insulin]] ↔ [[Glucose_[Z-005-0001].md|Glucose]] (metabolic pair)
[[LDL_[Z-006-0001].md|LDL]] ↔ [[HDL_[Z-006-0002].md|HDL]] (lipid balance)
```

**Usage:**
- Co-regulated markers
- Antagonistic pairs
- Functional partners
- Clinical pattern groups

---

### Type C: Sequential Links (Process/Pathway)
**Purpose:** Show causal or temporal sequences

**Pattern:**
```markdown
Iron metabolism:
[[Dietary_Iron]] → [[Ferritin_[Z-003-0001].md|Ferritin]] → [[Transferrin]] → [[Hemoglobin_[Z-001-1001].md|Hemoglobin]]

Hormone cascade:
[[Hypothalamus]] → [[Pituitary]] → [[TSH_[Z-010-0001].md|TSH]] → [[Thyroid]] → [[T4_[Z-010-0002].md|T4]] → [[T3_[Z-010-0003].md|T3]]

Krebs cycle:
[[Citrate_[B-012-0001].md|Citrate]] → [[Isocitrate_[B-012-0002].md|Isocitrate]] → [[Alpha-Ketoglutarate_[B-012-0003].md|α-KG]] → [[Succinate_[B-012-0004].md|Succinate]]
```

**Usage:**
- Metabolic pathways
- Hormone cascades
- Diagnostic sequences
- Treatment algorithms

---

### Type D: Oppositional/Comparative Links
**Purpose:** Highlight contrasts and comparisons

**Pattern:**
```markdown
[[Omega-6_[Z-006-0201].md|Omega-6]] vs [[Omega-3_[Z-006-0102].md|Omega-3]] (inflammatory balance)
[[LDL_[Z-006-0001].md|LDL]] vs [[HDL_[Z-006-0002].md|HDL]] (atherogenic vs protective)
[[Cortisol_[Z-011-0005].md|Cortisol]] vs [[DHEA-S_[Z-011-0002].md|DHEA-S]] (stress vs vitality)
```

**Usage:**
- Antagonistic markers
- Risk vs protective factors
- Balance indicators
- Therapeutic targets

---

## 2. DOMAIN CLUSTERS

### Cluster 1: Metabolic Core
**Central Nodes:**
- [[Glucose_[Z-005-0001].md|Glucose]]
- [[Insulin_[Z-005-0002].md|Insulin]]
- [[HbA1c_[Z-005-0003].md|HbA1c]]
- [[HOMA-IR_[Z-005-0004].md|HOMA-IR]]

**Peripheral Connections:**
- Lipids (triglycerides, LDL, HDL)
- Inflammation (CRP, ferritin)
- Hormones (cortisol, thyroid)
- OAT markers (mitochondrial function)

**Key Patterns:**
- Metabolic syndrome constellation
- Insulin resistance progression
- Diabetic dyslipidemia

---

### Cluster 2: Inflammation & Immunity
**Central Nodes:**
- [[CRP_[Z-002-0001].md|CRP]]
- [[WBC_[Z-001-2001].md|WBC]]
- [[Ferritin_[Z-003-0001].md|Ferritin]]
- [[ESR]] (if added)

**Peripheral Connections:**
- WBC differential (neutrophils, lymphocytes)
- Acute phase reactants
- Metabolic markers (glucose, insulin)
- Oxidative stress markers

**Key Patterns:**
- Acute vs chronic inflammation
- Infection type (bacterial vs viral)
- Autoimmune activity
- Metabolic inflammation

---

### Cluster 3: Lipid Metabolism
**Central Nodes:**
- [[LDL_[Z-006-0001].md|LDL]]
- [[HDL_[Z-006-0002].md|HDL]]
- [[Triglycerides_[Z-006-0003].md|Triglycerides]]
- [[ApoB_[Z-006-0005].md|ApoB]]
- [[LDL-P_[Z-006-0007].md|LDL-P]]

**Peripheral Connections:**
- Advanced markers (Lp(a), small dense LDL)
- Fatty acids (omega-3, omega-6)
- Metabolic markers (insulin, glucose)
- Inflammation (CRP)

**Key Patterns:**
- Atherogenic dyslipidemia
- Pattern A vs Pattern B
- Cardiovascular risk stratification
- Omega-6:3 balance

---

### Cluster 4: Thyroid Axis
**Central Nodes:**
- [[TSH_[Z-010-0001].md|TSH]]
- [[Free-T4_[Z-010-0002].md|Free T4]]
- [[Free-T3_[Z-010-0003].md|Free T3]]

**Peripheral Connections:**
- Antibodies (Anti-TPO, Anti-Tg)
- Nutrients (iron, selenium, zinc)
- Metabolism (glucose, lipids)
- Symptoms (clinical correlation)

**Key Patterns:**
- Hypothyroidism patterns
- Hyperthyroidism patterns
- Conversion issues (T4→T3)
- Autoimmune thyroiditis

---

### Cluster 5: Hormonal Balance
**Central Nodes:**
- [[Testosterone_[Z-011-0001].md|Testosterone]]
- [[Estradiol_[Z-011-0003].md|Estradiol]]
- [[Progesterone_[Z-011-0004].md|Progesterone]]
- [[Cortisol_[Z-011-0005].md|Cortisol]]
- [[DHEA-S_[Z-011-0002].md|DHEA-S]]

**Peripheral Connections:**
- Pituitary regulators (LH, FSH)
- Binding proteins (SHBG)
- Metabolic markers (insulin, glucose)
- Stress markers (cortisol rhythm)

**Key Patterns:**
- Male hypogonadism
- Female hormonal balance
- Adrenal function
- Stress response

---

### Cluster 6: Iron & Oxygen Transport
**Central Nodes:**
- [[Ferritin_[Z-003-0001].md|Ferritin]]
- [[Hemoglobin_[Z-001-1001].md|Hemoglobin]]
- [[Transferrin-Saturation_[Z-003-0003].md|Transferrin Sat]]

**Peripheral Connections:**
- CBC (MCV, MCH, RDW)
- Reticulocytes
- Inflammation (CRP, ferritin as acute phase)
- Thyroid (iron-thyroid interdependence)

**Key Patterns:**
- Iron deficiency anemia
- Anemia of chronic disease
- Hemochromatosis
- Functional iron deficiency

---

### Cluster 7: Mineral Balance
**Central Nodes:**
- [[Calcium_[Z-007-0003].md|Calcium]]
- [[Magnesium_[Z-007-0008].md|Magnesium]]
- [[Phosphate_[Z-007-0009].md|Phosphate]]
- [[Zinc-RBC_[Z-007-0006].md|Zinc (RBC)]]
- [[Copper_[Z-007-0007].md|Copper]]

**Peripheral Connections:**
- Vitamin D
- PTH
- Enzyme function
- Hormone synthesis

**Key Patterns:**
- Calcium-phosphate balance
- Zinc-copper antagonism
- Magnesium-potassium relationship
- Vitamin D activation

---

### Cluster 8: OAT Metabolic Network
**Central Nodes:**
- [[Citrate_[B-012-0001].md|Citrate]]
- [[Alpha-Ketoglutarate_[B-012-0003].md|α-KG]]
- [[Succinate_[B-012-0004].md|Succinate]]
- [[Pyruvate_[Z-012-0010].md|Pyruvate]]
- [[Lactate_[Z-012-0009].md|Lactate]]

**Peripheral Connections:**
- B-vitamin cofactors
- Mitochondrial function
- Energy metabolism
- Neurotransmitters (HVA, VMA, 5-HIAA)

**Key Patterns:**
- Mitochondrial dysfunction
- B-vitamin deficiencies
- Energy metabolism blocks
- Gut dysbiosis

---

## 3. CROSS-DOMAIN BRIDGES

### Bridge 1: Iron ↔ Thyroid
**Mechanism:** Iron required for thyroid peroxidase (TPO)
**Pattern:** Low ferritin + hypothyroid symptoms
**Link:** [[Ferritin_[Z-003-0001].md|Ferritin]] ↔ [[TSH_[Z-010-0001].md|TSH]]

### Bridge 2: Inflammation ↔ Metabolism
**Mechanism:** CRP elevates, insulin resistance increases
**Pattern:** High CRP + high glucose/insulin
**Link:** [[CRP_[Z-002-0001].md|CRP]] ↔ [[Insulin_[Z-005-0002].md|Insulin]]

### Bridge 3: Lipids ↔ Hormones
**Mechanism:** Steroid hormones from cholesterol
**Pattern:** Low cholesterol + hormonal deficiency
**Link:** [[Total-Cholesterol_[Z-006-0004].md|Cholesterol]] ↔ [[Testosterone_[Z-011-0001].md|Testosterone]]

### Bridge 4: Magnesium ↔ Energy
**Mechanism:** Mg required for ATP-Mg complex
**Pattern:** Low Mg + fatigue + mitochondrial dysfunction
**Link:** [[Magnesium_[Z-007-0008].md|Magnesium]] ↔ [[Citrate_[B-012-0001].md|Citrate]]

### Bridge 5: Zinc ↔ Immunity
**Mechanism:** Zinc required for T-cell function
**Pattern:** Low zinc + recurrent infections
**Link:** [[Zinc-RBC_[Z-007-0006].md|Zinc]] ↔ [[Lymphocytes_[Z-001-2003].md|Lymphocytes]]

### Bridge 6: Vitamin D ↔ Calcium ↔ PTH
**Mechanism:** Classic endocrine axis
**Pattern:** Low D → low calcium → high PTH
**Link:** [[Vitamin-D_[Z-007-0001].md|Vitamin D]] ↔ [[Calcium_[Z-007-0003].md|Calcium]] ↔ [[PTH_[Z-007-0002].md|PTH]]

---

## 4. LINKING RULES (OBSIDIAN BEST PRACTICES)

### Rule 1: Full Filename with Alias
```markdown
❌ [[Z-003-0001]]
❌ [[Ferritin]]
✅ [[Ferritin_Iron_Storage_[Z-003-0001].md|Ferritin]]
```

### Rule 2: Contextual, Not List
```markdown
❌ Related: [[A]], [[B]], [[C]]
✅ [[Ferritin_[Z-003-0001].md|Ferritin elevation]] with [[CRP_[Z-002-0001].md|inflammation]] suggests...
```

### Rule 3: Bi-directional Requirement
```markdown
If A mentions B, B must mention A
Create reciprocal connections
```

### Rule 4: Link in Flowing Text
```markdown
❌ ## Related
- [[A]]
- [[B]]

✅ When [[A]] is elevated, it typically suppresses [[B]] through...
```

### Rule 5: Descriptive Aliases
```markdown
✅ [[Ferritin_[Z-003-0001].md|acute phase reactant]]
✅ [[Insulin_[Z-005-0002].md|pancreatic beta-cell response]]
```

### Rule 6: Cross-Domain Bridges
```markdown
Always connect related domains
Example: Iron marker → Thyroid marker (iron-TPO relationship)
```

---

## 5. BI-DIRECTIONAL LINKING STRATEGY

### Implementation:
1. When adding link A→B, immediately open B and add B→A
2. Use different context/angle in return link
3. Maintain link symmetry

### Example:
**In Ferritin zettel:**
```markdown
Ferritin acts as an [[CRP_[Z-002-0001].md|acute phase reactant]]...
```

**In CRP zettel:**
```markdown
CRP elevation often parallels [[Ferritin_[Z-003-0001].md|ferritin rise]]...
```

---

## 6. OUTPUT FOR PHASE 3

**Ready for systematic linking:**
- ✅ Link types defined
- ✅ Domain clusters mapped
- ✅ Cross-domain bridges identified
- ✅ Linking rules established
- ✅ Bi-directional strategy confirmed

**Next:** Begin Batch 1 — Core Metabolic (20 zettels)

---

*Design completed: 2026-03-31*  
*Ready for Phase 3 execution*
