---
uid: S-001-0001
type: synthesis
title: Biochemical Assessment Integration Clinical Framework
aliases: [S-001-0001, Biochemical Assessment, Lab Integration, Metabolic Panel]
domain: 001
tags: [synthesis, biomarker, clinical-protocol, phd-methap, assessment-framework]
parent-moc: [[MOC-Insulin-Signaling]]
status: conscious
connections:
  - Z-001-0046
  - Z-001-0048
  - Z-001-0049
  - Z-001-0050
  - Z-001-0052
  - Z-001-0053
---

# Biochemical Assessment Integration — Clinical Framework

**The integrated biochemical assessment** moves beyond single markers to recognize patterns. This framework synthesizes 20+ biomarkers into a coherent metabolic picture, prioritizing insulin resistance, inflammation, and micronutrient status.

---

## 🎯 The Core Triad

### 1. Insulin Resistance Assessment
| Marker | Target | Priority |
|--------|--------|----------|
| [[Z-001-0046]] — HOMA-IR | <2.0 | ⭐ Primary |
| [[Z-001-0047]] — HOMA-β | 100-200 | ⭐ Primary |
| [[Z-001-0048]] — TyG Index | <4.5 | ⭐ Primary |
| [[Z-001-0049]] — TG/HDL | <2.0 | Secondary |
| [[Z-001-0052]] — Uric Acid | <5.5 mg/dL | Secondary |

### 2. Metabolic Syndrome Criteria
| Criterion | Target | [[Z-001-0050]] |
|-----------|--------|----------------|
| Waist circumference | <94 cm (M), <80 cm (F) | Measure |
| Triglycerides | <90 mg/dL | Already in IR panel |
| HDL-C | >60 mg/dL | Already in IR panel |
| Blood pressure | <130/85 mmHg | [[Z-001-0053]] |
| Fasting glucose | <100 mg/dL | Already in IR panel |

**Diagnosis:** ≥3 of 5 criteria = metabolic syndrome

### 3. Foundational Nutrients
| System | Key Markers | Critical Threshold |
|--------|-------------|-------------------|
| [[Z-002-0004]] — Vitamin D | 25-OH D3 | 80-150 ng/mL |
| [[Z-004-0001]] — Methylation | Homocysteine | <10 μmol/L |
| [[Z-004-0019]] — B12 Status | MMA + homocysteine | Both normal |
| [[Z-003-0001]] — Iron | Ferritin | 30-150 ng/mL |
| [[Z-005-0001]] — Thyroid | TSH | 0.5-2.5 mIU/L |

---

## 🔄 The Assessment Sequence

### Step 1: IR Core (Always First)
```
Fasting glucose + insulin → HOMA-IR + HOMA-β
Fasting triglycerides + glucose → TyG Index
TG/HDL ratio
```

**Decision point:**
- HOMA-IR <2.0, TyG <4.5 → Low priority, focus on prevention
- HOMA-IR 2.0-2.5 OR TyG 4.5-5.0 → Early intervention window
- HOMA-IR >2.5 OR TyG >5.0 → Established IR, aggressive intervention

### Step 2: Metabolic Syndrome Check
```
Waist circumference
Blood pressure
Count criteria (3+ = metabolic syndrome)
```

### Step 3: Foundational Systems
```
Vitamin D (25-OH)
Homocysteine (composite methylation)
Ferritin (iron + inflammation context)
TSH (thyroid)
```

### Step 4: Targeted Deep Dives
Based on initial findings:
- **High TG/HDL >3.0:** [[Z-006-0001]] — Lipid Pattern A/B, [[Z-006-0002]] — ApoB, sdLDL
- **Elevated liver enzymes:** [[Z-008-0001]] — Hepatocellular vs cholestatic pattern
- **High ferritin + high CRP:** [[Z-003-0013]] — ACD vs iron deficiency
- **TSH 2.5-4.0:** [[Z-005-0002]] — Hashimoto antibodies

---

## 🩺 Retest Intervals

| Status | Frequency | Focus |
|--------|-----------|-------|
| **Stable, optimal** | 6-12 months | Maintenance |
| **Improving** | 3 months | Verify trajectory |
| **Active intervention** | 4-8 weeks | Monitor response |
| **Acute change** | 2-4 weeks | Safety, compliance |

### Priority Retest Schedule
| Marker | Baseline | 6 weeks | 3 months | 6 months |
|--------|----------|---------|----------|----------|
| HOMA-IR/TyG | ✅ | ✅ | ✅ | ✅ |
| HbA1c | ✅ | | ✅ | ✅ |
| Lipids | ✅ | | ✅ | ✅ |
| Vitamin D | ✅ | | | ✅ |
| hs-CRP | ✅ | | ✅ | ✅ |
| Thyroid | ✅ | | | ✅ |
| Iron panel | ✅ | 8 weeks if treating | | ✅ |

---

## 🔬 PhD-METHAP Integration

### Primary Outcomes
| Outcome | Metrics | Timepoints |
|---------|---------|------------|
| **IR reversal** | HOMA-IR, TyG | Baseline, 3mo, 6mo, 12mo |
| **MetSyn resolution** | Criteria count | Baseline, 6mo, 12mo |
| **Inflammation** | hs-CRP | Baseline, 3mo, 6mo, 12mo |

### Secondary Outcomes
| Outcome | Metrics |
|---------|---------|
| **Lipid improvement** | TG/HDL, ApoB, Pattern |
| **Nutrient optimization** | VitD, homocysteine, ferritin |
| **Endothelial function** | BP, uric acid |
| **Safety** | eGFR, liver enzymes, CBC |

### Data Export Template
```csv
patient_id,date,visit,homa_ir,tyg_index,tg_hdl_ratio,met_syn_count,vit_d_ng_ml,homocysteine_umol_l,hs_crp_mg_l,outcome_status
```

---

## 💡 Clinical Integration Pearl

> "Don't order every test on every patient. Start with the IR core + foundationals. Let the results guide deep dives. A patient with HOMA-IR 1.8 and homocysteine 8 doesn't need ApoB and sdLDL today — they need lifestyle maintenance."

> "The retest schedule is as important as the initial assessment. Metabolic change is slow — 4-8 weeks minimum to see meaningful shifts. Don't retest HOMA-IR in 2 weeks."

---

*Integrates: 20+ biomarker zettels from Batches 1-4*
*Created: 2026-02-26 | Domain: 001 | Status: Conscious*
