---
uid: S-001-0001
type: synthesis
title: Insulin Resistance Playbook - Clinical Decision Tool
aliases: [S-001-0001, IR-Playbook]
domain: 001
tags: [synthesis, insulin-resistance, clinical-decision, biomarkers, staging]
parent-moc: [[MOC-Insulin-Signaling]]
status: draft
created: 2026-03-30
---

# Insulin Resistance Playbook - Clinical Decision Tool

## Executive Summary
- **Purpose:** Rapid clinical assessment and staging of insulin resistance
- **Target:** Practitioners using metabolomics/organic acids testing
- **Output:** Staged diagnosis + personalized intervention protocol

## Core Framework

### 1. Biomarker Panel
| Biomarker | Early | Compensatory | Overt |
|-----------|-------|--------------|-------|
| HOMA-IR | <2.5 | 2.5-4.5 | >4.5 |
| Adipic Acid | Elevated | Elevated | Elevated |
| BHB | Normal | Low | Very low |
| TG/HDL | <2 | 2-4 | >4 |

### 2. Staging Criteria
- [[Insulin_Receptor_Structure_[Z-001-0001]]]
- [[Compensatory_IR_Stage_[Z-001-0034]]]
- [[Beta_Cell_Exhaustion_Stage_[Z-001-0035]]]
- [[Overt_Diabetes_Stage_[Z-001-0036]]]

### 3. Mechanism Map
- [[Lipotoxicity_Pathway_IR_[Z-001-0029]]]
- [[ER_Stress_Induced_IR_[Z-001-0014]]]
- [[Mitochondrial_Dysfunction_IR_[Z-001-0015]]]
- [[Inflammatory_Signaling_IR_[Z-001-0031]]]

## Decision Trees / Checklists

### Initial Assessment
- [ ] Fasting glucose + insulin
- [ ] HOMA-IR calculation
- [ ] Lipid panel (TG, HDL, LDL)
- [ ] OAT: adipic, suberic, ethylmalonic
- [ ] HbA1c

### Staging Decision
```
HOMA-IR < 2.5 + normal OAT → Monitor
HOMA-IR 2.5-4.5 + elevated adipic → Early IR protocol
HOMA-IR > 4.5 + multiple markers → Aggressive intervention
```

## Evidence Map
| Claim | Source Zettels | Confidence |
|-------|---------------|------------|
| Adipic acid predicts early IR | [[Adipic_Acid_Early_IR_Biomarker_[Z-001-0041]]] | High |
| BHB indicates metabolic flexibility | [[BHB_Hydroxy_Acid_Not_Ketone_[Z-001-0483]]] | High |
| TG/HDL ratio correlates with IR | [[TG_HDL_Ratio_IR_Marker_[Z-001-0049]]] | High |

## Action Items
- [ ] Validate biomarker thresholds with clinic data
- [ ] Build patient handout from staging criteria
- [ ] Integrate with OAT interpretation protocol

## Open Questions
- What is optimal adipic acid cutoff for early detection?
- How does BHB supplementation affect staging?
- Should we include TyG index as primary marker?

---
status: footer
