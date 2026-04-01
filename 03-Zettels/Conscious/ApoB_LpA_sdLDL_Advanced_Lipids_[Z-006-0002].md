---
uid: Z-006-0002
type: zettel
title: ApoB Lp(a) sdLDL Advanced Lipid Risk Markers
aliases: [Z-006-0002, ApoB, Lp(a), sdLDL, Advanced Lipids]
domain: 006
tags: [zettel, biomarker, lipid-metabolism, status/optimal, phd-methap]
parent-moc: [[MOC-Lipid-Metabolism]]
biomarker-type: advanced-lipid-panel
apo-b-target: <90 mg/dL
lp-a-target: <30 mg/dL
sdldl-target: <30 mg/dL
status: conscious
connections:
  - Z-006-0001
  - Z-001-0049
  - Z-001-0050
---

# ApoB, Lp(a), sdLDL — Advanced Lipid Risk Markers

**Beyond standard lipids:** ApoB measures atherogenic particle number, Lp(a) captures genetic CVD risk, and sdLDL identifies dangerous small dense particles. These markers refine risk stratification beyond LDL-C.

---

## 🎯 Advanced Markers

### ApoB (Apolipoprotein B)
| Level (mg/dL) | Risk | Target |
|---------------|------|--------|
| **<80** | 🟢 Low | Optimal |
| **80-90** | 🟡 Borderline | Acceptable |
| **90-120** | 🔶 Elevated | High risk |
| **>120** | 🔴 High | Very high risk |

**Why ApoB?**
- One ApoB per atherogenic particle (LDL, VLDL, IDL, Lp(a))
- Better predictor of CVD than LDL-C
- Accounts for particle number, not just cholesterol mass

### Lp(a) (Lipoprotein a)
| Level (mg/dL) | Risk | Interpretation |
|---------------|------|----------------|
| **<10** | 🟢 Low | 90th percentile low risk |
| **10-30** | 🟡 Moderate | Borderline |
| **30-50** | 🔶 High | 2-3x CVD risk |
| **>50** | 🔴 Very high | 3-4x CVD risk |

**Key insight:** Lp(a) is **genetically determined** — doesn't respond to lifestyle. Screen once, know for life.

### sdLDL (Small Dense LDL)
| Level (mg/dL) | Pattern | Risk |
|---------------|---------|------|
| **<20** | 🟢 Pattern A | Low |
| **20-30** | 🟡 Intermediate | Moderate |
| **>30** | 🔴 Pattern B | High |

**Link to IR:** [[Lipid_Pattern_A_vs_B_Assessment_Z-006-0001.md]] — TG/HDL >3.0 strongly predicts elevated sdLDL

---

## 🔗 Connected Systems

**Lipid Patterns:**
- [[Lipid_Pattern_A_vs_B_Assessment_Z-006-0001.md]] — Lipid Pattern A/B (sdLDL defines Pattern B)
- [[TG_HDL_Ratio_IR_Marker_Z-001-0049.md]] — TG/HDL ratio (correlates with sdLDL)

**Insulin Resistance:**
- [[Metabolic_Syndrome_Criteria_Z-001-0050.md]] — Metabolic syndrome (drives Pattern B, ↑sdLDL)
- IR → hepatic overproduction of VLDL → CETP-mediated TG exchange → sdLDL

---

## 🩺 Clinical Application

### When to Order Advanced Lipids

| Scenario | Recommended |
|----------|-------------|
| Family history CVD with "normal" cholesterol | ApoB, Lp(a) |
| Metabolic syndrome | ApoB, sdLDL |
| Statin therapy but residual risk | ApoB, Lp(a) |
| TG/HDL >3.0 | sdLDL confirmation |
| Premature CVD (<55 M, <65 F) | Full panel |

### Interpretation Strategy

| LDL-C | ApoB | Interpretation | Action |
|-------|------|----------------|--------|
| 100 | 80 | Concordant low | Low risk |
| 100 | 110 | Discordant high | High particle number, intensify therapy |
| 130 | 110 | Discordant low | Large buoyant particles, lower risk |

**ApoB > LDL-C** = more particles than expected (dangerous)
**ApoB < LDL-C** = fewer particles than expected (less dangerous)

### Lp(a) Management

**Cannot lower Lp(a) with:**
- Statins
- Lifestyle
- Fibrates

**May lower modestly:**
- Niacin (20-30% reduction)
- PCSK9 inhibitors (15-25% reduction)
- Apheresis (for extreme levels)

**Strategy:** If Lp(a) >30, be more aggressive with other risk factors (LDL, BP, smoking).

---

## 🔬 PhD-METHAP Relevance

**Secondary markers:**
- ApoB as refined CVD risk metric
- Lp(a) for genetic risk stratification

**Data fields:**
```csv
patient_id,visit,apo_b_mg_dl,lp_a_mg_dl,sdldl_mg_dl,advanced_lipid_status
```

---

## 💡 Clinical Pearl

> "LDL-C is like counting passengers on buses. ApoB counts the buses. If you have 100 people on 2 buses vs 100 people on 10 buses, the risk is completely different. ApoB tells you the bus count."

> "Lp(a) is the genetic wildcard. I've seen patients with LDL-C 120 but Lp(a) 80 — their actual risk is like LDL-C 180. Always check Lp(a) once, especially if family history of early heart disease."

## RELATED FILES
- [[Biomarkers/Lipid_Ratios_[B-006-0001]|Lipid Ratios Family Guide]]
- [[Biomarkers/Individual/ApoB_Apolipoprotein_B_Atherogenic_Particles_[Z-006-0005]|ApoB — Atherogenic Particles]]
- [[Biomarkers/Individual/LDL_Cholesterol_Low-Density_Lipoprotein_[Z-006-0001]|LDL Cholesterol]]
- [[Biomarkers/Individual/Lp-a_Lipoprotein-a_Genetic_CV_Risk_[Z-006-0006]|Lp(a) — Genetic CV Risk]]

---

*Source: [[Ref_Sniderman_ApoB_Superior_2003]], [[Ref_Erqou_LpA_Meta_2009]]*
*Created: 2026-02-26 | Domain: 006 | Status: Conscious*
