---
uid: Z-001-0049
type: zettel
title: TG HDL Ratio Insulin Resistance Lipid Marker
aliases: [Z-001-0049, TG/HDL, Triglyceride HDL Ratio, Lipid IR Marker]
domain: 001
tags: [zettel, biomarker, ir-core, calculation-formula, phd-methap]
parent-moc: [[MOC-Insulin-Signaling]]
biomarker-type: insulin-resistance-lipid-proxy
formula: Triglycerides (mg/dL) / HDL-C (mg/dL)
target-range: <2.0
status: conscious
connections:
  - Z-001-0046
  - Z-001-0048
  - Z-006-0001
  - Z-001-0018
---

# TG/HDL Ratio — Insulin Resistance Lipid Marker

The **TG/HDL ratio** is a simple, powerful proxy for insulin resistance and LDL particle size. It correlates strongly with HOMA-IR and predicts cardiovascular risk independent of total cholesterol.

---

## 📐 Formula

$$
\text{TG/HDL Ratio} = \frac{\text{Triglycerides (mg/dL)}}{\text{HDL-C (mg/dL)}}
$$

**No conversion needed** — standard lipid panel values.

---

## 🎯 Interpretation Thresholds

| TG/HDL | Status | Clinical Meaning |
|--------|--------|------------------|
| **<2.0** | ✅ Optimal | Normal IR status, likely Pattern A LDL |
| **2.0-3.0** | ⚠️ Borderline | Early IR, monitor closely |
| **3.0-4.0** | 🔶 Elevated | IR present, likely Pattern B LDL |
| **>4.0** | 🔴 High | Significant IR, high CVD risk |

**Key insight:** Each 1-point increase in TG/HDL ratio ≈ increased CVD risk independent of LDL-C.

---

## 🔗 Connected Biomarkers

**IR Core Panel:**
- [[HOMA_IR_Calculation_Interpretation_Z-001-0046.md]] — HOMA-IR (correlates r=0.6-0.7 with TG/HDL)
- [[TyG_Index_IR_Assessment_Z-001-0048.md]] — TyG Index (similar lipid-glucose approach)
- [[HOMA_Beta_Beta_Cell_Function_Z-001-0047.md]] — HOMA-β (high TG/HDL + high HOMA-β = compensated IR)

**Lipid Patterns:**
- [[Lipid_Pattern_A_vs_B_Assessment_Z-006-0001.md]] — Lipid Pattern A/B (TG/HDL >3.0 strongly predicts Pattern B)
- [[ApoB_LpA_sdLDL_Advanced_Lipids_Z-006-0002.md]] — ApoB (TG/HDL correlates with small dense LDL particle count)

**Mechanism:**
- [[Phenotype_Mapping_Metabolomics_Z-001-0018.md]] — Lipotoxicity (elevated TG = hepatic steatosis = IR marker)

---

## 🩺 Clinical Application

### When TG/HDL Outperforms HOMA-IR

| Scenario | TG/HDL Advantage |
|----------|------------------|
| No insulin assay available | Uses standard lipid panel |
| Resource-limited settings | No additional cost |
| CVD risk stratification | Better predictor than LDL-C in IR |
| Pattern B screening | Simple proxy for particle size |

### Limitations
- **Fasting required:** Postprandial TG elevation skews ratio
- **Not for Type 1 diabetes:** Lipid patterns differ
- **Severe hypertriglyceridemia** (>500 mg/dL): Ratio less meaningful

---

## 📊 Calculation Examples

| Patient | TG (mg/dL) | HDL-C (mg/dL) | TG/HDL | Status |
|---------|------------|---------------|--------|--------|
| A | 75 | 65 | 1.15 | ✅ Optimal |
| B | 120 | 45 | 2.67 | ⚠️ Borderline |
| C | 180 | 38 | 4.74 | 🔴 High IR |
| D | 250 | 30 | 8.33 | 🔴 Severe IR |

---

## 🔬 Validation

**Original insight:** Gaziano et al., *Circulation* 1997 — TG/HDL predicts MI better than LDL-C

**IR correlation:** McLaughlin et al., *J Clin Endocrinol Metab* 2003 — TG/HDL ≥3.0 predicts insulin resistance (sensitivity 64%, specificity 85%)

**Key finding:** TG/HDL outperforms total cholesterol and LDL-C for CVD prediction in metabolic syndrome.

---

## 🔄 Relationship with Other Markers

| TG/HDL | Expected HOMA-IR | Expected Pattern |
|--------|------------------|------------------|
| <2.0 | <2.0 | A (large LDL) |
| 2.0-3.0 | 2.0-3.0 | Intermediate |
| >3.0 | >3.0 | B (small dense LDL) |

---

## 💡 Clinical Pearl

> "TG/HDL is my quick screen. Patient has 'normal' cholesterol but TG/HDL of 5? That's severe IR masquerading as normal lipids. Dig deeper — HOMA-IR, pattern analysis, metabolic syndrome criteria."

> "In resource-limited settings worldwide, TG/HDL is a gift. No fancy equipment, just a basic lipid panel, and you have an IR marker."

---

## Data Export (METHAP)

```csv
patient_id,visit,tg_mg_dl,hdl_c_mg_dl,tg_hdl_ratio,lipid_ir_status
```

---

*Source: [[Ref_Gaziano_TGHDL_CVD_1997]], [[Ref_McLaughlin_TGHDL_IR_2003]]*
*Created: 2026-02-26 | Domain: 001 | Status: Conscious*
