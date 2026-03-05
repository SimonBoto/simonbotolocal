---
uid: Z-005-0001
type: zettel
title: Thyroid Optimal Ranges TSH fT3 fT4 Beyond Standard
aliases: [Z-005-0001, Thyroid Optimal, TSH Target, fT3 fT4]
domain: 005
tags: [zettel, biomarker, thyroid, status/optimal, clinical-protocol]
parent-moc: [[MOC-Thyroid-Axis]]
biomarker-type: thyroid-function-panel
tsh-optimal: 0.5-2.5 mIU/L
tsh-standard: 0.4-4.0 mIU/L
status: conscious
connections:
  - Z-001-0046
  - Z-002-0004
  - Z-004-0001
---

# Thyroid Optimal Ranges — TSH, fT3, fT4 Beyond Standard

Standard thyroid ranges are wide (TSH 0.4-4.0 mIU/L) and miss subclinical dysfunction. **Optimal metabolic function requires tighter targets** — TSH 0.5-2.5, with fT3 and fT4 in upper quartiles.

---

## 🎯 Standard vs Optimal Ranges

| Marker | Standard Lab | Optimal Metabolic | Notes |
|--------|--------------|-------------------|-------|
| **TSH** | 0.4-4.0 mIU/L | **0.5-2.5 mIU/L** | Log scale — 2.5 already suboptimal |
| **fT3** | 2.3-4.2 pg/mL | **3.2-4.2 pg/mL** | Upper half — active hormone |
| **fT4** | 0.8-1.8 ng/dL | **1.2-1.8 ng/dL** | Upper half — substrate for fT3 |
| **fT3/fT4 ratio** | — | **>2.0** | Conversion efficiency |

---

## 🔗 Connected Systems

**Insulin Resistance:**
- [[HOMA_IR_Calculation_Interpretation_Z-001-0046.md]] — HOMA-IR (hypothyroidism worsens IR via ↓GLUT4, ↓mitochondrial function)
- Hypothyroid → weight gain, dyslipidemia, glucose intolerance

**Vitamin D:**
- [[Vitamin_D_Optimal_Range_80_150_Z-002-0004.md]] — VitD optimal range (VDR and TR share nuclear receptor mechanisms)
- Both affect metabolic rate, immune function

**Methylation:**
- [[Homocysteine_Composite_Methylation_Marker_Z-004-0001.md]] — Homocysteine (thyroid affects methylation via B12/folate absorption)
- Hypothyroid → elevated homocysteine

---

## 🩺 Clinical Patterns

### Pattern 1: Subclinical Hypothyroidism
| Marker | Value | Interpretation |
|--------|-------|----------------|
| TSH | 3.2 mIU/L | 🟡 Elevated (optimal <2.5) |
| fT4 | 1.0 ng/dL | Low-normal |
| fT3 | 2.8 pg/mL | Low-normal |
| Symptoms | | Fatigue, weight gain, cold intolerance |

**Standard view:** "Normal" — no treatment
**Optimal view:** Subclinical hypothyroidism — trial of intervention

### Pattern 2: Conversion Problem (High fT4, Low fT3)
| Marker | Value | Interpretation |
|--------|-------|----------------|
| TSH | 2.1 mIU/L | Borderline |
| fT4 | 1.5 ng/dL | Normal-high |
| fT3 | 2.5 pg/mL | 🔴 Low |
| fT3/fT4 | 1.67 | 🔴 Poor conversion |

**Cause:** Stress, illness, selenium/zinc deficiency, medications (beta-blockers, steroids)
**Action:** Address causes, consider T3-containing therapy

### Pattern 3: Optimal Thyroid
| Marker | Value | Interpretation |
|--------|-------|----------------|
| TSH | 1.4 mIU/L | ✅ Optimal |
| fT4 | 1.4 ng/dL | Upper half |
| fT3 | 3.5 pg/mL | Upper half |
| fT3/fT4 | 2.5 | ✅ Good conversion |

---

## 💊 Intervention Thresholds

### Subclinical Hypothyroidism (TSH 2.5-4.0)
| TSH | fT4 | Action |
|-----|-----|--------|
| 2.5-3.5 | Normal | Trial of selenium 200mcg + zinc 30mg |
| 2.5-3.5 | Low-normal | Consider low-dose levothyroxine |
| 3.5-4.0 | Any | Consider levothyroxine if symptomatic |
| >4.0 | Low | Treat (overt hypothyroidism) |

### Conversion Support (Low fT3)
- **Selenium:** 200 mcg daily (deiodinase cofactor)
- **Zinc:** 30 mg daily (T3 receptor function)
- **Iron:** Ferritin >50 (deiodinase requires iron)
- **Reduce stress:** Cortisol inhibits T4→T3 conversion

---

## 🔬 PhD-METHAP Relevance

**Secondary marker:**
- Thyroid status affects metabolic rate → energy expenditure outcomes
- Subclinical hypothyroidism may confound IR treatment response

**Data fields:**
```csv
patient_id,visit,tsh_miu_l,ft3_pg_ml,ft4_ng_dl,thyroid_status
```

---

## 💡 Clinical Pearl

> "TSH is a pituitary hormone, not a thyroid hormone. It's an indirect marker. A patient can have 'normal' TSH 3.0 but low fT3 and feel terrible. Always check fT3 and fT4."

> "The fT3/fT4 ratio tells you about conversion. If it's <2.0, your patient isn't converting T4 to T3 well — common with stress, illness, or nutrient deficiencies."

---

*Source: [[Ref_Wiersinga_TSH_Reference_2017]], [[Ref_Gaitonde_Thyroid_Review_2012]]*
*Created: 2026-02-26 | Domain: 005 | Status: Conscious*
