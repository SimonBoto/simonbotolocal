---
uid: Z-002-0621
type: zettel
title: METHAP PhD Data Export Structure — CSV Schema
aliases: [Z-002-0621, PhD-Data-Export, METHAP-CSV, Data-Schema]
domain: 002
tags: [zettel, methap, phd, data-export, csv, schema, research-methods]
parent-moc: [[MOC-PhD-Research]
source-litnote: Extracted from Biochemical Report Template v2.0
status: conscious
---

# METHAP PhD Data Export Structure — CSV Schema

> **Standardized data export format for METHAP trial analysis**

---

## CSV Field Structure

```csv
patient_id,date,visit_number,age,bmi,waist_hip,vit_d_ng_ml,tsh_ft3_ft4,anti_tpo,anti_tg,glucose,insulin,homa_ir,homa_beta,hba1c,tg_hdl_ratio,tyg_index,crp,esr,homocysteine,ferritin,b12,folate_5mthf,lipid_ratios,supplement_protocol
```

---

## Field Definitions

| Field | Type | Unit | Notes |
|-------|------|------|-------|
| **patient_id** | String | — | Anonymized identifier |
| **date** | Date | YYYY-MM-DD | Collection date |
| **visit_number** | Integer | — | 0=baseline, 1=3mo, 2=6mo, 3=12mo |
| **age** | Integer | years | At baseline |
| **bmi** | Float | kg/m² | Auto-calculated |
| **waist_hip** | Float | ratio | Waist/hip circumference |
| **vit_d_ng_ml** | Float | ng/mL | 25-OH Vitamin D3 |
| **tsh_ft3_ft4** | String | — | Combined thyroid panel |
| **anti_tpo** | Float | IU/mL | Thyroid antibodies |
| **anti_tg** | Float | IU/mL | Thyroid antibodies |
| **glucose** | Float | mg/dL | Fasting |
| **insulin** | Float | μIU/mL | Fasting |
| **homa_ir** | Float | — | Calculated: (Glu×Ins)/405 |
| **homa_beta** | Float | — | Beta-cell function |
| **hba1c** | Float | % | Glycemic control |
| **tg_hdl_ratio** | Float | — | Triglycerides/HDL |
| **tyg_index** | Float | — | ln(TG×Glu/2) |
| **crp** | Float | mg/L | Inflammation |
| **esr** | Float | mm/hr | Inflammation |
| **homocysteine** | Float | μmol/L | Methylation status |
| **ferritin** | Float | ng/mL | Iron status |
| **b12** | Float | pg/mL | B12 status |
| **folate_5mthf** | Float | ng/mL | Active folate |
| **lipid_ratios** | String | — | Combined lipid panel |
| **supplement_protocol** | String | — | Intervention assigned |

---

## Data Quality Checks

- [ ] All dates valid (YYYY-MM-DD format)
- [ ] No missing patient_id
- [ ] Visit_number sequential (0,1,2,3)
- [ ] Numeric ranges plausible
- [ ] Supplement_protocol coded consistently

---

## Related

- [[METHAP_Study_Design_Overview_Z-002-0616]
- [[METHAP_Metabolomics_Analysis_Plan_Z-002-0620]
- [[METHAP_Intervention_Protocol_Diet_Supplements_Z-001-1142]

---

*Standardized export for statistical analysis in R/Python*
