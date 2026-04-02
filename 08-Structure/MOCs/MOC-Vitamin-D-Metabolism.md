---
uid: 202602260001
type: moc
title: MOC — Vitamin D Metabolism
aliases: [MOC_Vitamin_D, MOC_VitD, MOC_D_Metabolism]
tags: [moc, vitamin-d, metabolism, endocrine, phd-methap, biomarker]
domain: 002
parent-moc: [[08-Dashboards/Dashboard_Home]
created: 2026-02-26
status: active
---

# MOC: Vitamin D Metabolism

Vitamin D is a secosteroid hormone regulating calcium homeostasis, immune function, and metabolic health. Target range: **80-150 ng/mL** for optimal metabolic outcomes.

---

## 🎯 Core Principle

> "No metabolic balance without optimal Vitamin D. Low D = broken insulin signaling, dysregulated immunity, impaired methylation."

---

## 🔄 The Metabolic Cascade

### Step 1: Synthesis & Activation
- [[Z-002-0001]] — Skin synthesis (UVB → D3)
- [[Z-002-0002]] — Hepatic 25-hydroxylation (D3 → 25-OH-D)
- [[Z-002-0003]] — Renal 1α-hydroxylation (25-OH → 1,25-OH)

### Step 2: Target Ranges
- [[Z-002-0004]] — **Optimal range 80-150 ng/mL** (vs standard 30-100)
- [[Z-002-0005]] — Deficiency, insufficiency, toxicity thresholds

### Step 3: High-Dose Protocol
- [[Z-002-0006]] — Dosing tiers by starting level
- [[Z-002-0007]] — Vitamin K2 synergy (MK-4, MK-7)
- [[Z-002-0008]] — Magnesium cofactor requirement

---

## 🔗 Vitamin D ↔ Insulin Resistance

**Mechanistic Links:**
- [[Z-002-0009]] — VitD-VDR → improved insulin receptor expression
- [[Z-002-0010]] — VitD → reduced inflammation (↓ TNF-α, ↓ IL-6)
- [[Z-002-0011]] — VitD → improved β-cell function

**Clinical Evidence:**
- [[Z-002-0012]] — RCTs: VitD supplementation → improved HOMA-IR
- [[Z-002-0013]] — Population studies: D levels predict T2DM incidence

**Cross-link to IR Core:**
-  — Full insulin signaling pathway
- [[Z-001-0046]] — HOMA-IR calculation

---

## 🔗 Vitamin D ↔ Methylation

**Mechanistic Links:**
- [[Z-002-0014]] — Calcium metabolism → intracellular signaling
- [[Z-002-0015]] — VitD receptor → MTHFR expression regulation

**Cross-link to Methylation:**
-  — Full methylation cycle
- [[Z-004-0001]] — Homocysteine as composite marker

---

## 🔗 Vitamin D ↔ Thyroid

**Mechanistic Links:**
- [[Z-002-0016]] — VDR and TR crosstalk (nuclear receptors)
- [[Z-002-0017]] — Shared deiodinase regulation

**Cross-link to Thyroid:**
-  — Thyroid hormone metabolism

---

## 📊 All Zettels in This MOC

### Created (0)
*Pending extraction from Biochemical Template v2.0*

### Planned
- Z-002-0001 through Z-002-0020 (VitD metabolism, protocols, interactions)

---

## 🩺 Clinical Protocols

### Assessment
1. Measure 25-OH Vitamin D (not 1,25-OH)
2. Target: 80-150 ng/mL
3. Retest: 4-8 weeks after dose change

### Intervention
| Starting Level | Protocol | Expected Rise |
|---------------|----------|---------------|
| <20 ng/mL | 10,000 IU/day + K2 + Mg | ~10 ng/mL per 1,000 IU |
| 20-50 ng/mL | 5,000-8,000 IU/day | ~5-8 ng/mL per 1,000 IU |
| 50-80 ng/mL | 2,000-5,000 IU/day | Maintenance |
| 80-150 ng/mL | Continue current | Monitor every 6 months |
| >200 ng/mL | Reduce/stop | Toxicity risk |

---

## 🔬 PhD-METHAP Relevance

**Biomarker inclusion:**
- 25-OH Vitamin D → Primary outcome
- Change in D → correlate with HOMA-IR change
- D baseline → predictor of IR reversal

**Data export fields:**
```
vit_d_baseline_ng_ml, vit_d_3mo_ng_ml, vit_d_6mo_ng_ml, vit_d_dose_iu_daily
```

---

## 📚 Source References

-  — Deficiency pandemic
-  — RCT evidence
-  — Target ranges debate

---

*Created: 2026-02-26 | Domain: 002 | Status: Foundation MOC*

---
parent-index: [[08 Structure Index]], [[MOCs Index]]
