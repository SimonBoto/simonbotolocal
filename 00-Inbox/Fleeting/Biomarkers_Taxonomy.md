---
uid: 20260221162400
type: ontology
structure-type: taxonomy
title: Biomarkers Taxonomy — Classification & Hierarchy
tags: [ontology, taxonomy, biomarkers, classification, structure]
status: permanent
parent-moc: [[06-Structure/MOCs/MOC-Biomarkers]]
---

# 🧬 Biomarkers Taxonomy

**Hierarchical classification of biomarkers by type, timing, and clinical utility.**

> *"Not all biomarkers are equal. Early vs late, specific vs general, actionable vs observational."*

---

## 🎯 Classification Dimensions

| Dimension | Categories | Notes |
|-----------|------------|-------|
| **Timing** | Early / Intermediate / Late | When in disease course? |
| **Specificity** | Specific / Panel / Syndrome | How diagnostic? |
| **Actionability** | Intervention-responsive / Monitoring only | Can we change it? |
| **Biology** | Metabolic / Inflammatory / Genetic / Microbial | What system? |
| **Sample** | Urine / Plasma / Tissue / Stool | How measured? |

---

## 🌳 Hierarchical Tree

### METABOLIC BIOMARKERS

#### 🔬 Early Detection (Pre-disease, optimal window)

**Organic Acids (Urine) — Our Focus**
- **Adipic Acid** ⭐ [[ADIPIC_ACID_IR_CUTOFFS_20260215_027_000004]]
  - Beta-oxidation impairment marker
  - Cutoffs established for IR staging
  - Intervention: L-carnitine, B2, cofactors
  
- **Aconitate** [[METABOLITE_ACONITATE_20260215_007_000105]]
  - TCA cycle dysfunction
  - Early energy metabolism stress
  
- **Alpha-Ketoglutarate (AKG)** [[METABOLITE_ALPHAKETOGLUTARATE_AKG_20260215_008_000106]]
  - Mitochondrial efficiency
  - Collagen/gut barrier synthesis

**Amino Acids (Plasma/Urine)**
- **BCAAs** [[ATOMIC_BCAA_HISTIDINE_OA_BIOMARKER_20260216_044_000020]]
  - Leucine, isoleucine, valine
  - mTOR activation, IR risk
  
- **Histidine** [[ATOMIC_BCAA_HISTIDINE_OA_BIOMARKER_20260216_044_000020]]
  - Inflammation modulator
  - Histamine precursor

**Free Fatty Acids (Plasma)**
- **FFA Profile** [[CONCEPT_PLASMA_FREE_FATTY_ACIDS_LIPOTOXICITY_20260219_000048]]
  - Lipotoxicity indicator
  - Adipose tissue dysfunction
  
- **Omega-3 Index** [[OMEGA3_OMEGA6_RATIO_20260215_044_000145]]
  - EPA/DHA levels
  - Anti-inflammatory status

#### 🔶 Intermediate Markers (Early disease)

**Glucose Metabolism**
- **HOMA-IR** [[CLAIM_HOMA_HBA1C_INADEQUATE_EARLY_IR_20260219_000044]]
  - ⚠️ Late marker despite name
  - Beta-cell dysfunction required
  
- **Fasting Insulin** [[INSULIN_HORMONE_METS_20260215_014_000095]]
  - Better than HOMA for early IR
  - Compensatory hyperinsulinemia

**Lipid Panels (Advanced)**
- **Small Dense LDL** [[SMALLDENSE_LDL_RISK_20260215_028_000175]]
  - Atherogenic particles
  - Particle quality > quantity
  
- **HDL Function** [[HDL_PROTECTIVE_THRESHOLDS_20260215_029_000084]]
  - Reverse cholesterol transport
  - Anti-inflammatory capacity

#### 🔴 Late Markers (Established disease)

**Standard Clinical**
- **HbA1c** [[CLAIM_HOMA_HBA1C_INADEQUATE_EARLY_IR_20260219_000044]]
  - ⚠️ 3-month average, late indicator
  - Already diabetic range when elevated
  
- **Fasting Glucose** [[T2D_EPIDEMIC_IR_CENTRAL_20260215_017_000179]]
  - End-stage beta-cell failure marker

**Comorbidity Indicators**
- **Liver Enzymes** (ALT/AST/GGT)
  - NAFLD progression
  
- **Uric Acid**
  - MetS component

---

### INFLAMMATORY BIOMARKERS

#### 🩸 Acute Phase

**Cytokines** (Research-grade, not clinical)
- **IL-6** [[Refs_Morand_SLE_Stress_062]]
  - Systemic inflammation
  
- **IL-17** [[TH17_IL17_VITD_MOD_20260216_018_000184]]
  - Autoimmunity marker
  
- **TNF-alpha** [[Refs_Chimenti_Inflammation_RA_20260216_032]]
  - RA, IBD activity

**Clinical Markers**
- **CRP / hs-CRP** [[VITD_CRP_CAUSAL_LINK_20260215_086_000209]]
  - General inflammation
  - VitD modulates
  
- **Homocysteine** [[HOMOCYSTEINE_B_VITAMINS_BIOMARKER_20260215_100_000089]]
  - Methylation status
  - B-vitamin responsive

#### 🧩 Chronic/Autoimmune

**Autoantibodies**
- **Anti-TPO** (Hashimoto's)
  - [[MOC-Hashimoto-Thyroiditis]]
  
- **Anti-CCP** (RA)
  - [[Refs_Firestein_RA_Immunopath_066]]
  
- **ANA Panel** (SLE)
  - [[Refs_Morand_SLE_Stress_062]]

---

### NUTRITIONAL STATUS MARKERS

#### 🥗 Micronutrients

**Fat-Soluble Vitamins**
- **Vitamin D (25-OH)** [[VITAMIN_D_DEFICIENCY_SYMPTOMS_20260215_010_000199]]
  - Immune modulation
  - Target: 40-60 ng/mL (not 30)
  
- **Vitamin K2 (MK-7)** [[VITAMIN_K2_T2D_RISK_BEULENS_2010_20260215_036_000205]]
  - Carboxylation status
  - Cardiovascular calcification

**Minerals**
- **Magnesium (RBC)** [[MAGNESIUM_DEFICIENCY_METS_20260215_011_000104]]
  - 80% population deficient
  - Insulin sensitivity
  
- **Zinc** [[ATOMIC_ZN_VITD_THERAPY_AUTOIMMUNE_20260216_050_000037]]
  - Immune function
  - Thyroid conversion
  
- **Selenium** [[VITD_SELENIUM_DEF_20260215_060_000218]]
  - Thyroid (deiodinases)
  - Antioxidant (GPx)

#### 🔬 Functional Markers

**Antioxidant Capacity**
- **Glutathione** [[MICRONUTS_GLUTATHIONE_SELENIUM_VITD_BARRIERRESTORE_20260216_003_000133]]
  - Master antioxidant
  - Detoxification capacity

---

### MICROBIOME BIOMARKERS

#### 🦠 Composition

**Diversity Indices**
- Alpha diversity (within-sample)
- Beta diversity (between-sample)

**Key Taxa**
- **Akkermansia muciniphila**
  - Mucus barrier, metabolic health
  
- **Faecalibacterium prausnitzii**
  - Butyrate producer
  - Anti-inflammatory

#### 🧪 Functional

**Short-Chain Fatty Acids** (Stool)
- **Butyrate** [[BUTYRATE_GUT_MUCOSAL_BARRIER_20260215_103_000080]]
  - Colonocyte fuel
  - Tight junction integrity
  
- **Propionate**
  - Gluconeogenesis
  
- **Acetate**
  - Systemic energy

---

### HORMONAL/ENDOCRINE

#### ⚡ Adrenal
- **Cortisol (saliva/DUTCH)** [[HPA_AXIS_STRESS_BIOMARKER_20260215_009_000090]]
  - Diurnal rhythm
  - Chronic stress marker
  
- **DHEA-S**
  - Anabolic reserve

#### 🦋 Thyroid
- **TSH** [[TSH_NORMAL_HYPO_20260215_063_000191]]
  - ⚠️ Late marker
  
- **Free T3 / Free T4**
  - Active hormone levels
  
- **Reverse T3**
  - Conversion issues, stress

#### 🍬 Metabolic Hormones
- **Leptin**
  - Satiety, leptin resistance
  
- **Adiponectin**
  - Insulin sensitizing
  - Inverse to MetS

---

### GENETIC/EPIGENETIC

#### 🧬 SNPs (Research context)
- **VDR polymorphisms** [[VITAMIN_D_RESISTANCE_HYPOTHESIS_20260215_026_000217]]
  - VitD resistance
  
- **MTHFR C677T**
  - Methylation capacity
  - Folate metabolism

#### 🧪 Epigenetic Clocks
- **Telomere Length** [[TELOMERE_SHORTENING_IR_OXIDSTRESS_20260216_004_000182]]
  - Cellular aging
  - IR accelerates shortening
  
- **DNA Methylation (Horvath)**
  - Biological age

---

## 📊 Clinical Utility Matrix

| Biomarker | Early Detection | Intervention Monitoring | Cost | Accessibility |
|-----------|----------------|------------------------|------|---------------|
| **Adipic Acid** | ⭐⭐⭐⭐⭐ | ⭐⭐⭐⭐ | $$ | Clinic only |
| **HOMA-IR** | ⭐⭐ | ⭐⭐⭐ | $ | Standard |
| **HbA1c** | ⭐ | ⭐⭐⭐⭐⭐ | $ | Standard |
| **Vitamin D** | ⭐⭐⭐ | ⭐⭐⭐⭐ | $ | Standard |
| **hs-CRP** | ⭐⭐⭐ | ⭐⭐⭐ | $ | Standard |
| **Microbiome** | ⭐⭐⭐⭐ | ⭐⭐⭐ | $$$$ | Specialized |
| **Telomeres** | ⭐⭐ | ⭐⭐ | $$$ | Research |

---

## 🔗 METHAP Biomarker Panel

**Our Clinical Trial Focus:** [[METHAP_BIOMARKER_INTEGRATION_PANEL_20260218_000117]]

| Category | Biomarkers | Sample |
|----------|-----------|--------|
| **Early IR** | Adipic acid, BCAAs, FFA | Urine + Plasma |
| **Inflammation** | CRP, IL-6 (research) | Plasma |
| **Nutritional** | VitD, Mg, Zn, Se | Plasma |
| **Thyroid** | fT3, fT4, anti-TPO | Plasma |
| **Microbiome** | SCFAs, diversity | Stool |

---

## 🎯 Actionable Insights

### For Early IR Detection (Our Focus)
**Tier 1 (Must Have):**
1. Adipic acid (urine organic acids)
2. Fasting insulin + glucose
3. Vitamin D
4. hs-CRP

**Tier 2 (Expanded):**
5. BCAAs
6. FFA profile
7. Magnesium (RBC)
8. Advanced lipids (sdLDL)

**Tier 3 (Research):**
9. Microbiome
10. Telomeres
11. Cytokine panel

---

## 🔍 Related Navigation

- [[MOC-PhD-Biomarkers]] — Research-specific biomarker MOC
- [[METHAP_BIOMARKER_INTEGRATION_PANEL_20260218_000117]] — Clinical trial panel
- [[MOC-Biomarkers]] — General biomarkers MOC
- [[A-Z_Index]] — Find specific biomarkers
- [[55-MOCs/]] — All topic MOCs

---

*Taxonomy version: 1.0*  
*Last updated: 2026-02-21*  
*Based on: 220 atomic notes, 128 references*
