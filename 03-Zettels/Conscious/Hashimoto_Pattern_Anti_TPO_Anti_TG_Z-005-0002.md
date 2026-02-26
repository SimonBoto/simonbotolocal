---
uid: Z-005-0002
type: zettel
title: Hashimoto Pattern Anti-TPO Anti-TG Thyroid Autoimmunity
aliases: [Z-005-0002, Hashimoto, Anti-TPO, Anti-TG, Thyroid Autoimmunity]
domain: 005
tags: [zettel, biomarker, thyroid, autoimmune, clinical-protocol]
parent-moc: [[MOC-Thyroid-Axis]]
biomarker-type: thyroid-autoimmune-panel
anti-tpo-threshold: <34 IU/mL
anti-tg-threshold: <40 IU/mL
status: conscious
connections:
  - Z-005-0001
  - Z-007-0001
  - Z-001-0019
---

# Hashimoto Pattern — Anti-TPO and Anti-TG Thyroid Autoimmunity

**Hashimoto's thyroiditis** is the most common cause of hypothyroidism. **Anti-TPO (thyroid peroxidase)** and **Anti-TG (thyroglobulin)** antibodies mark the autoimmune attack. Early detection allows intervention before overt hypothyroidism develops.

---

## 🎯 Antibody Thresholds

### Anti-TPO (Thyroid Peroxidase Antibodies)
| Level (IU/mL) | Status | Interpretation |
|---------------|--------|----------------|
| **<34** | 🟢 Negative | No autoimmune thyroiditis |
| **34-100** | 🟡 Low positive | Early/subclinical autoimmunity |
| **100-500** | 🔶 Moderate positive | Active Hashimoto's |
| **>500** | 🔴 High positive | Severe autoimmunity |

### Anti-TG (Thyroglobulin Antibodies)
| Level (IU/mL) | Status | Interpretation |
|---------------|--------|----------------|
| **<40** | 🟢 Negative | No significant autoimmunity |
| **40-100** | 🟡 Low positive | Borderline/subclinical |
| **>100** | 🔶 Positive | Active autoimmune process |

**Note:** Anti-TPO is more specific for Hashimoto's; Anti-TG can be elevated in Graves' disease too.

---

## 🔗 Connected Systems

**Thyroid Function:**
- [[Z-005-0001]] — Thyroid optimal ranges (antibodies may precede TSH elevation)
- Hashimoto's progression: Antibodies ↑ → TSH ↑ → fT4 ↓

**Inflammation:**
- [[Z-007-0001]] — CRP/ESR (autoimmunity is inflammatory)
- [[Z-001-0019]] — Inflammatory signaling (thyroiditis = organ-specific inflammation)

**Metabolic Impact:**
- Hashimoto's → hypothyroidism → insulin resistance
- [[Z-001-0046]] — HOMA-IR (often elevated in hypothyroidism)

---

## 🩺 Clinical Patterns

### Pattern 1: Early Hashimoto's (Euthyroid)
| Marker | Value | Interpretation |
|--------|-------|----------------|
| TSH | 2.1 mIU/L | Normal |
| fT4 | 1.2 ng/dL | Normal |
| Anti-TPO | 85 IU/mL | 🟡 Elevated |
| Anti-TG | 65 IU/mL | 🟡 Elevated |
| Status | | Autoimmune thyroiditis, euthyroid phase |

**Action:** Monitor TSH every 6 months, consider selenium 200mcg, optimize Vitamin D

### Pattern 2: Subclinical Hypothyroidism + Hashimoto's
| Marker | Value | Interpretation |
|--------|-------|----------------|
| TSH | 4.8 mIU/L | 🟡 Elevated |
| fT4 | 1.0 ng/dL | Low-normal |
| Anti-TPO | 320 IU/mL | 🔴 High |
| Anti-TG | 180 IU/mL | 🔶 Elevated |
| Status | | Hashimoto's with subclinical hypothyroidism |

**Action:** Consider low-dose levothyroxine, aggressive lifestyle, monitor antibodies

### Pattern 3: Overt Hypothyroidism + Hashimoto's
| Marker | Value | Interpretation |
|--------|-------|----------------|
| TSH | 12.5 mIU/L | 🔴 High |
| fT4 | 0.7 ng/dL | 🔴 Low |
| Anti-TPO | 450 IU/mL | 🔴 High |
| Anti-TG | 220 IU/mL | 🔶 Elevated |
| Status | | Overt Hashimoto's hypothyroidism |

**Action:** Levothyroxine therapy, monitor TSH q6-8 weeks until stable

---

## 💊 Intervention Strategies

### Early Stage (Antibodies elevated, thyroid function normal)
- **Selenium:** 200 mcg daily (may reduce antibody titers)
- **Vitamin D:** Optimize to 80-150 ng/mL (immunomodulation)
- **Myo-inositol:** 600 mg daily (some evidence for thyroid function)
- **Gluten-free trial:** Controversial, some patients respond
- **Monitor:** TSH every 6 months

### Subclinical/Overt Hypothyroidism
- Levothyroxine (synthetic T4)
- Some benefit from T4+T3 combination
- Monitor TSH, aim for 0.5-2.5

---

## 🔬 PhD-METHAP Relevance

**Autoimmune subgroup:**
- Hashimoto's common in metabolic syndrome patients
- May affect treatment response
- Selenium/VitD intervention may modulate antibodies

**Data fields:**
```csv
patient_id,visit,anti_tpo_iu_ml,anti_tg_iu_ml,hashimoto_status
```

---

## 💡 Clinical Pearl

> "Anti-TPO can be elevated years before TSH rises. I screen it in anyone with family history of thyroid disease, unexplained fatigue, or metabolic syndrome. Catch it early, intervene with selenium and VitD, sometimes you can slow or halt progression."

> "Don't ignore mildly elevated antibodies with normal TSH. That's not 'normal' — that's early autoimmunity. The thyroid is under attack."

---

*Source: [[Ref_Caturegli_Hashimoto_2014]], [[Ref_Gartner_Selenium_2002]]*
*Created: 2026-02-26 | Domain: 005 | Status: Conscious*
