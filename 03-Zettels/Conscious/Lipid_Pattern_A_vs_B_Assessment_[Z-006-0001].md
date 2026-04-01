---
uid: Z-006-0001
type: zettel
title: Lipid Pattern A vs Pattern B Assessment
aliases: [Z-006-0001, Lipid Pattern, Pattern A, Pattern B, LDL Phenotype]
domain: 006
tags: [zettel, biomarker, lipid-metabolism, status/optimal, clinical-protocol]
parent-moc: [[MOC-Lipid-Metabolism]]
biomarker-type: lipid-pattern
target-ratio: LDL/ApoB >1.2 = Pattern A
status: conscious
connections:
  - Z-001-0046
  - Z-001-0049
  - Z-006-0002
  - Z-006-0003
source-litnote: Synthesized from clinical practice
---

# Lipid Pattern A vs Pattern B Assessment

**Lipid patterns** describe LDL particle size and density. Pattern A (large, buoyant LDL) is low risk; Pattern B (small, dense LDL) is high risk and strongly associated with insulin resistance.

---

## 🎯 The Patterns

### Pattern A — Low Risk
| Feature | Characteristic |
|---------|----------------|
| LDL particles | Large, buoyant |
| Density | Low |
| Atherogenicity | Low |
| Association | Insulin sensitive |
| LDL/ApoB ratio | >1.2 |

### Pattern B — High Risk
| Feature | Characteristic |
|---------|----------------|
| LDL particles | Small, dense |
| Density | High |
| Atherogenicity | High |
| Association | Insulin resistant |
| LDL/ApoB ratio | <1.2 |

---

## 📐 Assessment Methods

### Method 1: LDL/ApoB Ratio (Preferred)
$$
\text{Ratio} = \frac{\text{LDL-C (mg/dL)}}{\text{ApoB (mg/dL)}}
$$

| Ratio | Pattern | Risk |
|-------|---------|------|
| **>1.2** | **A** | Low |
| **1.0-1.2** | Intermediate | Moderate |
| **<1.0** | **B** | High |

### Method 2: TG/HDL Ratio (Surrogate)
$$
\text{Ratio} = \frac{\text{Triglycerides (mg/dL)}}{\text{HDL-C (mg/dL)}}
$$

| Ratio | Pattern | Risk |
|-------|---------|------|
| **<2.0** | Likely A | Low |
| **2.0-3.0** | Intermediate | Moderate |
| **>3.0** | Likely B | High |

**Note:** TG/HDL correlates with Pattern B but less specific than LDL/ApoB.

### Method 3: NMR Lipoprofile (Gold Standard)
- Direct measurement of LDL particle number and size
- LDL-P (particle count) more predictive than LDL-C
- Small LDL-P specifically quantifies Pattern B burden

---

## 🔗 Connected Biomarkers

**Insulin Resistance:**
- [[HOMA_IR_Calculation_Interpretation_Z-001-0046.md]] — HOMA-IR (Pattern B strongly associated with IR)
- [[TG_HDL_Ratio_IR_Marker_Z-001-0049.md]] — TG/HDL ratio (Pattern B predictor)
- [[TyG_Index_IR_Assessment_Z-001-0048.md]] — TyG Index (elevated in Pattern B)

**Lipid Components:**
- [[ApoB_LpA_sdLDL_Advanced_Lipids_Z-006-0002.md]] — ApoB (Pattern B has more particles per mg/dL)
- Z-006-0003 (Small dense LDL — sdLDL) — *link pending*

**Mechanism:**
- [[Phenotype_Mapping_Metabolomics_Z-001-0018.md]] — Lipotoxicity (IR → hepatic overproduction of VLDL → Pattern B)
- [[MAPK_Mitogenic_Pathway_[Z-001-0016]]] — Mitochondrial dysfunction (impaired lipid oxidation)

---

## 🩺 Clinical Application

### When Pattern B Matters

**High priority assessment:**
- Family history of premature CVD with "normal" cholesterol
- Metabolic syndrome features
- Type 2 diabetes
- Elevated TG despite statin therapy

### Pattern B Reversal

| Intervention | Effect | Timeline |
|--------------|--------|----------|
| **Carbohydrate reduction** | ⭐⭐⭐ Strong | 4-8 weeks |
| **Weight loss** | ⭐⭐⭐ Strong | 8-12 weeks |
| **Exercise** | ⭐⭐ Moderate | 12+ weeks |
| **Omega-3 (EPA/DHA)** | ⭐⭐ Moderate | 8-12 weeks |
| **Fibrates** | ⭐⭐⭐ Strong | 4-8 weeks |
| **Statins** | ⭐ Modest | Minimal effect on particle size |

**Key insight:** Statins lower LDL-C but may not fully address Pattern B. Add carbohydrate restriction or fibrates for particle size improvement.

---

## 📊 Pattern B Clinical Scenarios

### Scenario 1: "Normal" Cholesterol, High Risk
| Marker | Value | Interpretation |
|--------|-------|----------------|
| Total Chol | 200 mg/dL | "Normal" |
| LDL-C | 120 mg/dL | "Borderline" |
| HDL-C | 35 mg/dL | Low |
| TG | 180 mg/dL | High |
| **TG/HDL** | **5.14** | **🔴 Pattern B likely** |
| **HOMA-IR** | 3.2 | Established IR |

**Action:** Low-carb diet, omega-3, repeat lipid panel in 8 weeks

### Scenario 2: Discordant LDL-C vs ApoB
| Marker | Value | Interpretation |
|--------|-------|----------------|
| LDL-C | 100 mg/dL | At goal |
| ApoB | 110 mg/dL | Elevated |
| **LDL/ApoB** | **0.91** | **🔴 Pattern B** |

**Action:** Statin may not be enough. Add ezetimibe or fibrate. Address IR.

---

## 🔬 Mechanism

**How IR creates Pattern B:**

1. Insulin resistance → hepatic insulin signaling impaired
2. ↓ ApoB degradation in liver
3. ↑ VLDL production and secretion
4. CETP-mediated TG exchange → TG-enriched LDL
5. HL and LPL action → small dense LDL (Pattern B)

**Result:** More particles, smaller size, higher atherogenicity per mg/dL.

---

## 💡 Clinical Pearls

> "LDL-C of 100 with Pattern B is more dangerous than LDL-C of 130 with Pattern A. The particle count matters more than the cholesterol mass."

> "If you only have basic lipid panel, TG/HDL >3.0 screams Pattern B. Add ApoB or NMR to confirm."

> "Pattern B is reversible. I've seen patients go from Pattern B to Pattern A in 3 months with low-carb diet and 10% weight loss."

---

## Data Export (METHAP)

```csv
patient_id,visit,ldl_c_mg_dl,apo_b_mg_dl,ldl_apob_ratio,pattern_type,tg_hdl_ratio
```

---

*Source: [[Ref_Austin_Pattern_B_1988]], [[Ref_Berneis_LDL_Phenotypes_2002]], [[Ref_Otvos_NMR_Lipoprofile_2002]]*
*Created: 2026-02-26 | Domain: 006 | Status: Conscious*

## RELATED FILES
- [[Biomarkers/Metabolic_IR_Family_[B-005-0001]|Biomarker Family Guide]]
- [[MOC-Biomarkers|Biomarkers MOC]]

