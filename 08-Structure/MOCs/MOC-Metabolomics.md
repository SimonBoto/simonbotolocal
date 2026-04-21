---
uid: MOC-METABOLOMICS-001
type: moc
title: MOC — Metabolomics
aliases: [Metabolomics-MOC, MOC-Metabolomics-Hub]
description: "Hub for metabolomics: scope, protocols, metabolites, clinical applications"
tags: [moc, metabolomics, phd, research-methods]
parent-moc: [[MOC-Research]]
status: active
created: 2026-02-15
last-updated: 2026-04-07
---

# MOC: Metabolomics

> **Hub for metabolomics: scope, protocols, metabolites, clinical applications**

---

## 🎯 Entry Points

**Core Concepts:**
- [[MOC-Metabolomics]] — Data analysis workflows
- [[MOC-Metabolomics]] — Lab protocols and methods
- [[MOC-Metabolomics]] — Learning resources

---

## 📊 Scope Areas

### Clinical Metabolomics
- Biomarker discovery and validation
- Patient stratification
- Treatment monitoring

### Research Applications
- PhD methodology ([[MOC-PhD-Research]])
- Pharmacometabolomics ([[MOC-Pharmacometabolomics]])
- Nutritional metabolomics ([[MOC-Nutrition]])

### Technical Domains
- Sample preparation
- Mass spectrometry
- Data processing
- Statistical analysis

---

## 🔗 Related MOCs

| MOC | Connection |
|-----|------------|
| [[MOC-Metabolomics]] | Data analysis sub-domain |
| [[MOC-Metabolomics]] | Lab protocols sub-domain |
| [[MOC-Metabolomics]] | Education sub-domain |
| [[MOC-Pharmacometabolomics]] | Drug metabolism focus |
| [[MOC-Research]] | Parent methodology |
| [[MOC-PhD-Research]] | PhD application |

---

## 📚 Contributing LitNotes

| LitNote | Zettels | Status |
|---------|---------|--------|
| [[Metabolomics_Methods_L-XXX-XXXX]] | {{N}} | 🟡 Processing |

---

*MOC-METABOLOMICS-001 | Created: 2026-02-15 | Status: active*
<!-- NEW_NAME: MOC-Metabolomics-Analysis-20260215-005.md -->
---
uid: 20260215135600
tags: [moc dt-clinic #metabolomics #biomarkers phd-biomarker]
parent-moc:  | 
aliases: [MOC_DT_Metabolomics_Analysis]
status: atomic
confidence: high
source: 
---

# MOC_DT_Metabolomics_Analysis_20260215_005

**Overview**: DT clinic zettel cluster: 13 refs + 8 atomics (metabolomics 174 markers/adipic/IR/GC-MS PhD hooks). VERIFY post-spawn.

**Lit-Full**: 

**References**: {{VERIFY SPAWN}}

**Atomics (Dynamic Zettels)**: {{VERIFY SPAWN}}

**Dataview**: `LIST FROM "33-Atomic" WHERE contains(tags, "dt-clinic") AND contains(file.name, "Metabolomics")`

**Next MOCs**:  | .
**RON**: Pipeline: 8 strong zettels → PhD graph. VERIFY before hub.

---

## 🔗 Related MOCs

| MOC | Connection |
|-----|------------|
| MOC-Example | {{Why related}} |
| MOC-Example | {{Why related}} |


---

## 📄 Synthesis Documents

- {{Synthesis_Title}}_{{S-XXX-XXXX}} — {{Description}}


---

## 📚 Source LitNotes

| LitNote | Zettels Extracted | Status |
|---------|-------------------|--------|
| {{LitNote_Title}}_{{L-XXX-XXXX}} | {{N}} zettels | {{status}} |


---

## 🆕 Zettel Backlog

**Zettels to create:**
- [ ] {{Zettel idea}} — {{Why needed}}

**Zettels to review for promotion:**
- [ ] {{Zettel_Title}}_{{Z-XXX-XXXX}} — {{Why ready}}


---

## 📝 Status History

| Date | Status | Notes |
|------|--------|-------|
| {{YYYY-MM-DD}} | created | Initial MOC setup |

---
parent-index: [[08-Structure-Index]], [[MOCs-Index]]
<!-- NEW_NAME: MOC-Metabolomics-Protocols.md -->
#atomic
---
uid: 20260214141600
tags: [moc #protocol #metabolomics #phd clinic]
status: active
parent-moc: "[[MOCs-Index]]"
aliases: [Metabolomics_Protocols_MOC]
---

# Zettel_Metabolomics_Protocols_MOC

**Clinical & PhD Protocols Hub** (GC-MS/OA targeted metabolomics).

## Key Protocols
-  #plasma OA/FFA, fasting standards
-  clinic workflow
-  #intervention

## Dictionary & References
- 
- 

## Dataview
```dataview
LIST FROM "44-Clinic" 
WHERE contains(tags, "#protocol") 
  OR contains(tags, "#metabolomics")
SORT file.ctime DESC
```

## PhD Cohorts\n- \n\nLinks:  |  | 

---

## 🔗 Related MOCs

| MOC | Connection |
|-----|------------|
| MOC-Example | {{Why related}} |
| MOC-Example | {{Why related}} |


---

## 📄 Synthesis Documents

- {{Synthesis_Title}}_{{S-XXX-XXXX}} — {{Description}}


---

## 📚 Source LitNotes

| LitNote | Zettels Extracted | Status |
|---------|-------------------|--------|
| {{LitNote_Title}}_{{L-XXX-XXXX}} | {{N}} zettels | {{status}} |


---

## 🆕 Zettel Backlog

**Zettels to create:**
- [ ] {{Zettel idea}} — {{Why needed}}

**Zettels to review for promotion:**
- [ ] {{Zettel_Title}}_{{Z-XXX-XXXX}} — {{Why ready}}


---

## 📝 Status History

| Date | Status | Notes |
|------|--------|-------|
| {{YYYY-MM-DD}} | created | Initial MOC setup |

---
parent-index: [[08-Structure-Index]], [[MOCs-Index]]
---
uid: MOC-METAB-TRAIN-001
type: moc
title: MOC — Metabolomics Training
aliases: [MOC-Metabolomics-Training, MOC-Systems-Biology, MOC-Omics-Cascade, MOC-Clinical-Training]
description: "Navigation hub for metabolomics training and education"
tags: [moc, map-of-content, metabolomics, training, omics, systems-biology, clinical-education]
parent-moc: [[MOC-Metabolomics]]
status: active
version: 2.0
created: 2024-01-01
last-updated: 2026-04-07
---

# MOC: Metabolomics Training

> **Navigation hub for metabolomics training and education**  
> **Scope:** Academic courses → Clinical training programs → Educational frameworks

---

## Sub-MOCs

| Track | Focus | Content |
|-------|-------|---------|
| **Academic** | NKUA Course 3174 | Systems biology, omics cascade |
| **Clinical** | Bootcamp & MCI | Practitioner training, competency |

---

## 📚 Academic Track: NKUA Course 3174

> **Course:** 3174 - Βασικές Αρχές Μεταβολομικής (NKUA 2024)

---

## 📚 Source Materials

| Part | Title | Status | LitNote |
|------|-------|--------|---------|
| ΔΕ 1 | Εισαγωγή στα Omics | ✅ Complete (9 zettels) | [[NKUA_2024_Basics_Metabolomics_DE1_L-001-0001]] |
| ΔΕ 2 | Τι είναι οι μεταβολίτες | ✅ Complete (5 zettels) | [[NKUA_2024_Metabolites_Basic_Biochem_DE2_L-001-0002]] |
| ΔΕ 3 | Μεταβολίτες και Φαινότυπος | ✅ Complete (6 zettels) | [[NKUA_2024_Metabolites_Phenotype_Clinical_L-001-0003]] |
| ΔΕ 4 | Μεταβολικές Διαταραχές και Διάγνωση | ✅ Complete (5 zettels) | [[NKUA_2024_Metabolic_Disorders_Diagnosis_DE4_L-001-0004]] |
| ΔΕ 5-8 | *(Pending)* | ⏳ Not started | — |

**Asset Location:** 

---

## 🧠 Core Zettels (From ΔΕ 1)

### Systems Biology Foundations
| UID | Zettel | Status | Key Concept |
|-----|--------|--------|-------------|
| Z-001-0001 | [[Systems_Biology_Integrative_Framework_Z-001-0001] | ✅ Created | Multi-parameter integration |
| Z-001-0002 | [[Omics_Cascade_Genotype_Phenotype_Z-001-0002] | ✅ Created | Genotype → Phenotype flow |
| Z-001-0003 | [[Environmental_Factors_80_Percent_Chronic_Disease_Z-001-0003] | ✅ Created | 80% environmental disease |

### Subsection 2: Omics Technologies (All Created)
| UID | Zettel | Status | Key Concept |
|-----|--------|--------|-------------|
| Z-001-0004 | [[Genomics_Structure_Function_Genome_Z-001-0004] | ✅ Created | Genome structure, GWAS, pharmacogenomics |
| Z-001-0005 | [[Epigenomics_Gene_Regulation_Z-001-0005] | ✅ Created | DNA methylation, histone acetylation |
| Z-001-0006 | [[Transcriptomics_Transcriptome_Bridge_Z-001-0006] | ✅ Created | mRNA, gene expression |
| Z-001-0007 | [[Proteomics_Protein_Structure_Function_Z-001-0007] | ✅ Created | Proteins, enzymes, drug targets |
| Z-001-0008 | [[Microbiomics_Gut_Metabolic_Organ_Z-001-0008] | ✅ Created | Gut microbiome, dysbiosis, butyrate |
| Z-001-0009 | [[Biomarkers_Precision_Medicine_Z-001-0009] | ✅ Created | Biomarker types, precision medicine |

**Total DE1 Part 1: 9 zettels** ✅

### DE2 Tier 1: Metabolites & Metabolic Pathways (New)
| UID | Zettel | Status | Key Concept |
|-----|--------|--------|-------------|
| Z-001-0010 | [[Metabotypes_Individual_Metabolic_Phenotypes_Z-001-0010] | ✅ Created | Individual metabolic phenotypes |
| Z-001-0011 | [[Cofactor_Metabolite_Biomarker_Logic_B12_Model_Z-001-0011] | ✅ Created | B12→methylmalonic model (VD→adipic parallel) |
| Z-001-0012 | [[Krebs_Cycle_Metabolites_IR_Markers_Z-001-0012] | ✅ Created | Malate, succinate as IR markers |
| Z-001-0013 | [[Carnitine_Fatty_Acid_Transport_Z-001-0013] | ✅ Created | Fatty acid transport (plasma TFA link) |
| Z-001-0014 | [[Ketone_Bodies_IR_Diabetes_Metabolism_Z-001-0014] | ✅ Created | Alternative fuel in IR/diabetes |

**Total DE2: 5 Tier 1 zettels** ✅

### DE3 Tier 1: Phenotype & Clinical Applications (New)
| UID | Zettel | Status | Key Concept |
|-----|--------|--------|-------------|
| Z-001-0018 | [[Phenotype_Mapping_Metabolomics_Z-001-0018]] | ✅ Created | Metabolomics as phenotype decoder |
| Z-001-0019 | [[Predictive_Metabolites_T1D_Example_Z-001-0019]] | ✅ Created | Early disease prediction proof-of-concept |
| Z-001-0020 | [[Oxidative_Stress_Biomarkers_Metabolomics_Z-001-0020]] | ✅ Created | 5 OS markers (8-OHdG, 2-HBA, etc.) |
| Z-001-0021 | [[Micronutrients_Vitamin_D_Immunoregulation_Z-001-0021]] | ✅ Created | VitD as immune-modulatory micronutrient |
| Z-001-0022 | [[Insulin_Resistance_Metabolic_Disorder_Phenotype_Z-001-0022]] | ✅ Created | IR as core metabolic phenotype |
| Z-001-0023 | [[Dysbiosis_Detection_Metabolomics_Z-001-0023]] | ✅ Created | Gut microbiome metabolite markers |

**Total DE3: 6 Tier 1 zettels** ✅

### DE4 Tier 1: Metabolic Disorders & Diagnosis (New)
| UID | Zettel | Status | Key Concept |
|-----|--------|--------|-------------|
| Z-001-0024 | [[Inherited_Metabolic_Diseases_Newborn_Screening_Paradigm_Z-001-0024]] | ✅ Created | 49 IMDs via newborn screening (adipic acid precedent) |
| Z-001-0025 | [[Protein_Metabolism_Disorders_Oxalate_Pathway_Z-001-0025]] | ✅ Created | Oxalate pathway (urine OA methodology) |
| Z-001-0026 | [[Carbohydrate_Metabolism_IR_Biomarkers_Z-001-0026]] | ✅ Created | Glucose/lactate IR markers (Savage 2005) |
| Z-001-0027 | [[Lipid_Metabolism_Fatty_Acid_IR_Markers_Z-001-0027]] | ✅ Created | Omega-3/6, desaturases in IR |
| Z-001-0028 | [[Metabolic_Acidosis_Biomarkers_Patterns_Z-001-0028]] | ✅ Created | Organic acid patterns (diagnostic algorithm) |

**Total DE4: 5 Tier 1 zettels** ✅

**Course Total: 25 zettels**

---

## 🔗 Connections to PhD Work

### Direct METHAP Links

### Research Questions Addressed
1. Why metabolomics over genomics? → [[Insulin_Hormone_Structure_Z-001-0002]]
2. Environmental vs genetic drivers? → [[INSR_Autophosphorylation_Mechanism_Z-001-0003]]
3. Systems approach to IR? → [[Insulin_Receptor_Structure_Z-001-0001]]

---

## 📊 Synthesis

### Course Synthesis Document
**Status:** ✅ Created — [[Omics_Training_Core_Insights_S-001-0001]]  
**Scope:** Aggregates 9 zettels into METHAP trial design framework  
**Key Outputs:**
- Omics hierarchy positioning metabolomics
- 80% environmental factor justification
- Biomarker framework for IR research
- Direct IRB Section 1 structure

### Key Insights (From Synthesis)
1. **Systems biology** integrates all omics levels (not just metabolomics)
2. **Metabolomics** is closest to phenotype (captures environment)
3. **80% environmental** disease burden → metabolomics essential
4. **Precision medicine** requires biomarker integration
5. **Adipic acid** serves as predictive, prognostic, pharmacodynamic marker
6. **Gut-microbiome-VD axis** emerging as key interaction

---

## 📖 Reference Hubs

### Created (Tier 1)

### Created (Tier 2)

### Pending (From Bibliography)
- [ ] Beebe K et al. (2017) — Computational metabolomics
- [ ] Chen R & Snyder M (2012) — Systems biology overview
- [ ] Klassen A et al. (2017) — Metabolomics definitions
- [ ] Marchand CR et al. (2018) — Biomarker framework
- [ ] Θεοδωρίδης Γ. (2015) — Greek systems biology textbook

---

## 🎯 Extraction Queue

### Immediate (Next Session)
- [ ] Extract Subsection 2: Other Omics Sciences
- [ ] Identify all cited references
- [ ] Create reference hubs for cited works

### This Week
- [ ] Process ΔΕ 2 (if available)
- [ ] Link zettels to existing IR/VitD knowledge
- [ ] Create synthesis document

### Monthly
- [ ] Review zettels for Subconscious promotion (>30 days)
- [ ] Update with new course parts
- [ ] Integrate into PhD IRB Section 1

---

## 📝 RON Ledger

| Unit | Date | Zettels | Ref Hubs | Time |
|------|------|---------|----------|------|
| DE1 | 2026-02-23 | 9 | 10 | ~60 min |
| DE2 | 2026-02-23 | 5 | 1 (HMDB) | ~30 min |
| DE3 | 2026-02-23 | 6 | 17 | ~60 min |
| DE4 | 2026-02-23 | 5 | 10 | ~45 min |
| **Total** | — | **25** | **38** | **~3.75 hrs** |

- **Input format:** PDF (Greek)
- **Extraction method:** Literature note → Tier 1 zettels
- **Quality:** DE1 standard (100% bibliography, all hubs, cross-connections)
- **Synthesis:** [[Omics_Training_Core_Insights_S-001-0001]

---

*Last updated: 2026-02-23*  
*Status: Active — DE1-DE4 Complete (25 zettels), awaiting DE5-8*  
*Next review: After ΔΕ 5-8 extraction*

---
parent-index: [[08-Structure-Index]], [[MOCs-Index]]


---

## 🎓 Clinical Track: Training Programs

### Training Curricula
Structured learning programs for practitioners:
- [[8-Week_Metabolomics_Bootcamp_Curriculum_L-001-0589_v4.0]] — 8-week progressive curriculum
- [[Bootcamp_Four_Phase_Structure_Z-001-1035]] — Four-phase training architecture

### Pedagogical Frameworks
Teaching methodologies:
- [[Training_Teaching_Style_Framework_Z-001-1040]] — Military vs Socratic vs Hybrid

### Competency Assessment
Evaluation and progression:
- [[Phase_1_Biochemical_Literacy_Foundation_Z-001-1036]] — Foundation assessment
- [[Phase_2_OAT_Pattern_Mastery_Z-001-1037]] — Pattern recognition competency
- [[Phase_3_Lipidomics_Interpretation_Z-001-1038]] — Lipidomics competency
- [[Phase_4_Clinical_Integration_Drills_Z-001-1039]] — Integration competency

### Clinical Integration
- [[Metabolomics_Chief_Instructor_Framework_L-001-0588_v4.0]] — MCI role definition

---

## 🔗 Related MOCs

| MOC | Connection |
|-----|------------|
| MOC-Example | {{Why related}} |
| MOC-Example | {{Why related}} |


---

## 📄 Synthesis Documents

- {{Synthesis_Title}}_{{S-XXX-XXXX}} — {{Description}}


---

## 📚 Source LitNotes

| LitNote | Zettels Extracted | Status |
|---------|-------------------|--------|
| {{LitNote_Title}}_{{L-XXX-XXXX}} | {{N}} zettels | {{status}} |


---

## 🆕 Zettel Backlog

**Zettels to create:**
- [ ] {{Zettel idea}} — {{Why needed}}

**Zettels to review for promotion:**
- [ ] {{Zettel_Title}}_{{Z-XXX-XXXX}} — {{Why ready}}


---

## 📝 Status History

| Date | Status | Notes |
|------|--------|-------|
| {{YYYY-MM-DD}} | created | Initial MOC setup |

---
parent-moc: [[MOCs-Index]]
