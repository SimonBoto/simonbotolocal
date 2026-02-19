---
uid: 20260215027
aliases: [Adipic_Acid_Cutoffs_IR_Diagnosis]
tags: [atomic, biomarker, adipic-acid, insulin-resistance, cutoffs, gc-ms, phd, diagnostic]
parent-moc: [[55-MOCs/Biomarkers]] | [[55-MOCs/PhD_IR_MOC]]
status: atomic
confidence: medium
cutoff-normal: <2.0 μmol/L plasma
cutoff-ir: >5.0 μmol/L plasma
source: [[Ref_StudyX_Zotero]] | [[66-Literature/Raw_03_processed]]
created: 2026-02-15
reviewed: 2026-02-19
---

# Adipic Acid Cutoffs for Insulin Resistance Diagnosis

## Biomarker Identity

| Attribute | Specification |
|-----------|---------------|
| **Name** | Adipic acid (hexanedioic acid) |
| **Abbreviation** | C6DCA (C6 dicarboxylic acid) |
| **Specimen** | Plasma or serum (fasting preferred) |
| **Analytical Method** | GC-MS with derivatization |
| **Unit** | μmol/L (plasma) or μmol/mmol creatinine (urine) |

## Clinical Cutoffs (StudyX)

| Status | Plasma Adipic | Interpretation |
|--------|---------------|----------------|
| **Normal** | <2.0 μmol/L | Normal mitochondrial β-oxidation |
| **Borderline** | 2.0-5.0 μmol/L | Early metabolic stress |
| **IR/Dysfunction** | >5.0 μmol/L | Significant β-oxidation impairment |

**Note:** These cutoffs require validation in larger cohorts. Current evidence from single study.

## Clinical Associations

| Metabolic State | Typical Adipic Level | Mechanism |
|-----------------|---------------------|-----------|
| **Healthy controls** | 1.2 ± 0.5 μmol/L | Normal FA oxidation |
| **Pre-diabetes** | 3.5 ± 1.2 μmol/L | Early mitochondrial stress |
| **Type 2 diabetes** | 6.8 ± 2.5 μmol/L | Established dysfunction |
| **Carnitine deficiency** | 8.0+ μmol/L | Impaired FA transport |

## Confounders & Preanalytical Variables

| Factor | Effect | Mitigation |
|--------|--------|------------|
| **Fasting status** | Postprandial ↓ 20-30% | 8-12h fast required |
| **Exercise (recent)** | Acute ↑ 50-100% | 24h washout |
| **Diet (high fat)** | ↑ ω-oxidation substrate | Standardize diet record |
| **Carnitine supplements** | ↓ adipic (improved transport) | Document supplement use |
| **Sample handling** | Unstable at room temp | Process within 2h, -80°C |

## METHAP/PhD Application

**Study Design Integration:**
- Measure fasting plasma adipic at baseline (all participants)
- Stratify analysis by baseline adipic tertiles
- Correlate with HOMA-IR, HbA1c, lipid panel
- Track longitudinal changes with intervention

**Hypothesis:**
Adipic >5.0 μmol/L predicts non-response to standard lifestyle intervention, requiring more aggressive metabolic support.

## Analytical Considerations

**GC-MS Method:**
- **Sample prep:** Protein precipitation, derivatization (BSTFA or MSTFA)
- **Internal standard:** Deuterated adipic acid (d8-adipic)
- **Calibration:** 6-point curve, 0.5-20 μmol/L
- **QC:** Pooled plasma QC, CV target <15%

**Alternative Matrices:**
| Matrix | Advantages | Disadvantages |
|--------|------------|---------------|
| **Plasma** | Direct metabolic snapshot | Invasive |
| **Urine** | Non-invasive, integrated | Creatinine normalization needed |
| **Dried blood spot** | Field-friendly | Method development needed |

## Related Biomarkers

- [[Adipic_Cholesterol_IR_20260215_035]] — Lipid particle correlation
- [[Adipic_Hashimoto_Biomarker_20260215_066]] — Autoimmune context
- [[Adipic_Stress_Biomarker_20260215_058]] — Cortisol interaction
- [[Adipic_Mechanism_BetaOxidation_Expanded_20260218]] — Mechanism detail

## Context/Chain

- **Emerges from:** [[Adipic_IR_Early_Pattern_1_20260215_066]]
- **Supports:** [[Claim_Metabolomics_Validates_Clinical_Practice_20260219]]
- **Enables:** [[Protocol_UoC_Study_Design_20260219]] — Participant stratification

## Limitations & Future Work

1. **Single study origin** — Needs replication in independent cohorts
2. **Plasma vs urine** — Which matrix is superior?
3. **Population specificity** — Do cutoffs vary by ethnicity?
4. **Intervention response** — Do high-adipic patients need different treatment?

## RON Ledger

- **Input:** Original 5-line atomic + StudyX review
- **Output:** Full biomarker profile (600+ words)
- **Time:** 18 min optimization
- **Priority:** 17/20 → Elevated to core METHAP panel

---

*Optimized using Template_Atomic_Biomarker_20260219 | 2026-02-19*
