---
uid: Z-000-0001
type: zettel
title: CBC Complete Blood Count Patterns Clinical Interpretation
aliases: [Z-000-0001, CBC, Complete Blood Count, WBC, Hematocrit, Platelets]
domain: 000
tags: [zettel, biomarker, cbc, hematology, clinical-protocol]
parent-moc: [[MOC-Vitamin-Metabolism]]
biomarker-type: complete-blood-count
status: conscious
connections:
  - Z-003-0001
  - Z-007-0001
source-litnote: Synthesized from clinical practice
extraction-date: 2026-04-15
---

# CBC — Complete Blood Count Patterns
## Source

Synthesized from clinical practice

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


The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

---

## Source

Synthesized from clinical practice

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## 🎯 Key Parameters

### WBC (White Blood Cells)
| Range | Status | Interpretation |
|-------|--------|----------------|
| **4.5-11.0 × 10³/μL** | 🟢 Normal | Adequate immune function |
| **<4.5** | 🔴 Low | Immunosuppression, viral, autoimmune |
| **>11.0** | 🔴 High | Infection, inflammation, stress |

**Differential patterns:**
- **Neutrophilia:** Bacterial infection, inflammation, steroids
- **Lymphocytosis:** Viral infection, chronic inflammation
- **Eosinophilia:** Allergies, parasites
- **Monocytosis:** Chronic inflammation, recovery phase

### Hematocrit (Hct)
| Population | Range |
|------------|-------|
| Men | 38-50% |
| Women | 35-45% |

**Patterns:**
- **Low:** Anemia (iron, B12, folate, chronic disease)
- **High:** Dehydration, polycythemia, high altitude, sleep apnea

### Hemoglobin (Hgb)
| Population | Range |
|------------|-------|
| Men | 13.5-17.5 g/dL |
| Women | 12.0-16.0 g/dL |

### Platelets
| Range | Status |
|-------|--------|
| **150-400 × 10³/μL** | 🟢 Normal |
| **<150** | 🔴 Thrombocytopenia |
| **>400** | 🔴 Thrombocytosis |

---

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## 🔗 Connected Systems

**Iron Status:**
- [[Ferritin_Interpretation_Iron_Status_Z-003-0001.md] — Ferritin (low Hct + low ferritin = iron deficiency)
- [[Iron_Status_Patterns_ACD_Overload_Z-003-0013.md] — Iron patterns (anemia of chronic disease)

**Inflammation:**
- [[Inflammation_Markers_CRP_ESR_Z-007-0001.md] — CRP/ESR (WBC and platelets rise with inflammation)
- Platelets as acute phase reactant

**Methylation:**
- [[Functional_B12_Deficiency_MMA_Assessment_Z-004-0019.md] — Functional B12 deficiency (macrocytic anemia)
- MCV >100 fL suggests B12/folate deficiency

---

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## 🩺 Clinical Patterns

### Microcytic Anemia (Low MCV <80 fL)
| Cause | Iron | Ferritin | TIBC | Transferrin Sat |
|-------|------|----------|------|-----------------|
| **Iron deficiency** | Low | Low | High | Low |
| **Thalassemia** | Normal | Normal | Normal | Normal |
| **ACD** | Low | High | Low | Low |

**Next step:** Iron studies to differentiate

### Macrocytic Anemia (High MCV >100 fL)
| Cause | B12 | Folate | Alcohol | Liver |
|-------|-----|--------|---------|-------|
| **B12 deficiency** | Low | Normal | — | — |
| **Folate deficiency** | Normal | Low | — | — |
| **Alcohol** | Normal | Normal | + | — |
| **Liver disease** | Normal | Normal | — | Abnormal |

**Next step:** B12, folate, homocysteine, MMA

### Inflammatory Pattern
| Finding | Interpretation |
|---------|----------------|
| WBC 12-15 × 10³/μL | Mild leukocytosis |
| Platelets 400-500 × 10³/μL | Reactive thrombocytosis |
| Normocytic anemia | Anemia of chronic disease |

**Link:** [[Inflammation_Markers_CRP_ESR_Z-007-0001.md] — CRP elevation confirms inflammation

---

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## 🔬 MCV-RDW Approach to Anemia

| MCV | RDW | Pattern | Causes |
|-----|-----|---------|--------|
| Low | High | Microcytic, variable | Early iron deficiency, thalassemia |
| Low | Normal | Microcytic, uniform | Chronic iron deficiency, thalassemia |
| Normal | High | Normocytic, variable | Mixed deficiency, early B12/folate |
| Normal | Normal | Normocytic, uniform | ACD, chronic disease, renal |
| High | High | Macrocytic, variable | B12/folate deficiency |
| High | Normal | Macrocytic, uniform | Liver disease, alcohol, hypothyroid |

---

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## 🔬 PhD-METHAP Relevance

**Safety monitoring:**
- Baseline CBC for supplement protocols
- Monitor for anemia (B12, iron, folate interventions)

**Data fields:**
```csv
patient_id,visit,wbc_k_u_l,hematocrit_pct,hemoglobin_g_dl,platelets_k_u_l,mcv_fl
```

---

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## 💡 Clinical Pearl

> "CBC is the most underutilized metabolic test. Anemia of chronic disease with platelets 450 and WBC 13? That's inflammation driving metabolic dysfunction — look for the source."

> "MCV is your compass. Low = iron or thalassemia. High = B12, folate, alcohol, liver. Normal = chronic disease or mixed. Always check MCV first."

---

*Source: , *
*Created: 2026-02-26 | Domain: 000 | Status: Conscious*

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## RELATED FILES
- [[Thyroid_Panel_[B-010-0001]|Biomarker Family]
- [[CRP_[B-002-0001]|Biomarker Family]
- [[Iron_Family_[B-003-0001]|Biomarker Family]
- [[Methylation_Family_[B-004-0001]|Biomarker Family]
- 
- s/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]
- |Biomarkers MOC]


---

## Core Principle

The **CBC** provides baseline hematologic status. Beyond anemia detection, patterns reveal , hydration, and chronic disease states.

## Significance

tags: [zettel, biomarker, cbc, hematology, clinical-protocol]

## Connection to Vault

- Up: [[MOC-Vitamin-Metabolism]]
- Related: [[MOC-Metabolomics]], [[MOC-Clinical-Protocols]]

---
parent-index: [[03-Zettels-Conscious]]
