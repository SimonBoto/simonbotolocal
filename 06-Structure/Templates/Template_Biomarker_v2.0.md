---
aliases: [Template-Atomic-Biomarker, Zettel-Biomarker]
tags: [template, atomic, biomarker, clinical-lab, zettelkasten]
version: 2.0
---

# Template: Biomarker Atomic

**Purpose:** Comprehensive biomarker profile for clinical or research use
**Target Length:** 400-700 words
**Status Progression:** seed → atomic → mature

---

## YAML Frontmatter

```yaml
---
uid: {{YYYYMMDD}}{{HHMMSS}}
aliases: [Biomarker_Name_Specimen_Descriptor]
tags: [atomic, biomarker, {urine/blood/tissue}, {metabolite/protein/gene}, phd]
parent-moc: [[55-MOCs/Biomarkers]] | [[55-MOCs/PhD_IR_MOC]]
status: seed
confidence: medium  # biomarkers need validation
discovered: {{YYYY-MM-DD}}
validated: {{YYYY-MM-DD}}  # when clinically validated
cutoff: {value} {units}
source: [[Ref_Discovery_Paper]]
created: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. Biomarker Identity
| Attribute | Specification |
|-----------|---------------|
| **Name** | Full chemical/common name |
| **Abbreviation** | Standard abbreviation |
| **CAS #** | If applicable |
| **Specimen** | Urine / Plasma / Serum / Tissue |
| **Analytical Method** | GC-MS / LC-MS / ELISA / etc. |

---

### 2. Biological Significance (The "Why")
**What biological process does this reflect?**

Example:
> Adipic acid (hexanedioic acid, C6H10O4) is a dicarboxylic acid formed via ω-oxidation of fatty acids when mitochondrial β-oxidation is impaired. Elevated levels indicate:
> - Mitochondrial dysfunction
> - Carnitine shuttle insufficiency
> - Compensatory peroxisomal oxidation
> - Early metabolic stress (precedes hyperglycemia)

---

### 3. Clinical Performance
| Metric | Value | Reference |
|--------|-------|-----------|
| **Normal range** | 0.5-1.5 μmol/mmol creatinine | [[Ref_Control_Study]] |
| **Elevated cutoff** | >2.0 μmol/mmol creatinine | [[Ref_Clinical_Trial]] |
| **Sensitivity** | 78% (for IR detection) | [[Ref_Validation_2023]] |
| **Specificity** | 84% | [[Ref_Validation_2023]] |
| **PPV** | 72% | [[Ref_Validation_2023]] |
| **NPV** | 88% | [[Ref_Validation_2023]] |
| **AUC-ROC** | 0.84 (0.79-0.89) | [[Ref_Meta_Analysis]] |

---

### 4. Clinical Associations
| Condition | Typical Value | Mechanism |
|-----------|---------------|-----------|
| **Healthy controls** | 0.8 ± 0.3 | Normal mitochondrial function |
| **Pre-diabetes/IR** | 2.2 ± 0.8 | Early mitochondrial stress |
| **Type 2 diabetes** | 3.5 ± 1.2 | Established dysfunction |
| **Carnitine deficiency** | 4.0+ | Impaired FA transport |
| **Mitochondrial disease** | 5.0+ | Primary mitochondrial defect |

---

### 5. Interpretation Guide

#### Low Values (<0.5)
- **Meaning:** Efficient mitochondrial β-oxidation
- **Clinical:** Lower IR risk (protective)
- **Action:** Continue current lifestyle

#### Normal Values (0.5-1.5)
- **Meaning:** Normal metabolic function
- **Clinical:** No intervention needed
- **Action:** Annual monitoring

#### Borderline High (1.5-2.5)
- **Meaning:** Early metabolic stress
- **Clinical:** Pre-IR state
- **Action:** Lifestyle intervention, retest 3-6mo

#### Elevated (>2.5)
- **Meaning:** Significant mitochondrial dysfunction
- **Clinical:** High IR/diabetes risk
- **Action:** Aggressive intervention, full metabolic workup

---

### 6. Confounders & Limitations
| Factor | Effect | Mitigation |
|--------|--------|------------|
| **Diet (high fat)** | ↑ 20-30% | Fasting sample, dietary record |
| **Exercise (recent)** | ↑ 50%+ | 24h post-exercise washout |
| **Carnitine intake** | ↓ 40% | Supplement record |
| **Alcohol** | ↑ variable | 48h abstinence |
| **Medications (valproate)** | ↑ significantly | Medication history |
| **Renal function** | Affects excretion | Creatinine normalization |

---

### 7. METHAP/PhD Application
**Study Design:**
- **Baseline:** Measure in all cohort participants
- **Correlate with:** TPO-Ab, fT3, fT4, HOMA-IR, HbA1c
- **Longitudinal:** Track changes with VitD intervention
- **Endpoint:** Predictive value for IR development

**Hypothesis:**
Adipic elevation at baseline predicts IR progression independent of traditional markers.

---

### 8. Laboratory Protocol
**Sample:** Fasting morning urine, 10mL
**Collection:** Boric acid tube, refrigerate immediately
**Stability:** 24h at 4°C, 6 months at -80°C
**Method:** [[Method_GC-MS_Urine_Organic_Acids]]
**Turnaround:** 3-5 business days
**Cost:** ~$45-60/sample (research), $120-150 (clinical)

---

### 9. Related Biomarkers
- [[Biomarker_Suberic_Acid_Urine]] — Sister metabolite (C8)
- [[Biomarker_Ethylmalonate_Urine]] — Related pathway
- [[Biomarker_Carnitine_Plasma]] — Deficiency marker
- [[Biomarker_Lactate_Plasma]] — Alternative mitochondrial marker

---

### 10. Literature Base
**Discovery:**
- [[Ref_Adipic_IR_Association_2018]] — Initial association
- [[Ref_Mechanism_Study_2020]] — Biological basis

**Validation:**
- [[Ref_Clinical_Trial_2022]] — Prospective validation
- [[Ref_Meta_Analysis_2023]] — Pooled analysis

**Clinical Translation:**
- [[Ref_Guidelines_2024]] — Clinical implementation

---

### 11. RON Ledger
- **Input:** 5 papers, lab SOP, 60 min synthesis
- **Output:** Biomarker profile for PhD panel
- **Next:** Validate cutoff in Greek cohort

---

*Template: Biomarker Atomic v2.0 | Use for clinical biomarker profiling*
