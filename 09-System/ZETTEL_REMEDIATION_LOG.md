# ZETTEL AUDIT & REMEDIATION LOG
## Started: 2026-03-05
## Scope: Full cleanup of 423 Conscious zettels

---

## PHASE 1: DUPLICATE UID INVENTORY

| UID | File 1 | File 2 | Domain Analysis | Action |
|-----|--------|--------|-----------------|--------|
| Z-001-0001 | Insulin_Receptor_Structure | Systems_Biology_Framework | Both 001 | Reassign Systems → Z-001-0901 |
| Z-001-0002 | Insulin_Hormone_Structure | Omics_Cascade | Both 001 | Reassign Omics → Z-001-0902 |
| Z-001-0003 | INSR_Autophosphorylation | Environmental_Factors | Both 001 | Reassign Environmental → Z-001-0903 |
| Z-001-0004 | INSR_Mutations | Genomics_Structure | Both 001 | Reassign Genomics → Z-001-0904 |
| Z-001-0005 | IRS_Protein_Recruitment | Epigenomics | Both 001 | Reassign Epigenomics → Z-001-0905 |
| Z-001-0006 | IRS1_vs_IRS2 | Transcriptomics | Both 001 | Reassign Transcriptomics → Z-001-0906 |
| Z-001-0007 | PI3K_Activation | Proteomics | Both 001 | Reassign Proteomics → Z-001-0907 |
| Z-001-0008 | IRS_Serine_Phosphorylation | Microbiomics | Both 001 | Reassign Microbiomics → Z-001-0908 |
| Z-001-0009 | Akt_Recruitment | Biomarkers_Precision | Both 001 | Reassign Biomarkers → Z-001-0909 |
| Z-001-0010 | Akt_Substrate | Metabotypes | Both 001 | Reassign Metabotypes → Z-001-0910 |
| Z-001-0011 | GLUT4_Translocation | Cofactor_B12_Model | Both 001 | Reassign Cofactor → Z-001-0911 |
| Z-001-0012 | GSK3_Inhibition | Krebs_Cycle_Metabolites | Both 001 | Reassign Krebs → Z-001-0912 |
| Z-001-0013 | Lipotoxicity_Ceramide | Carnitine_Transport | Both 001 | Reassign Carnitine → Z-001-0913 |
| Z-001-0014 | ER_Stress | Ketone_Bodies | Both 001 | Reassign Ketone → Z-001-0914 |
| Z-001-0501 | Cholesterol_Mevalonate | Glutamate_Hub | Both 001 | Reassign Glutamate → Z-001-0915 |
| Z-001-0502 | Glutamine_Cycle | Lipoproteins | Both 001 | Reassign Glutamine → Z-001-0916 |
| Z-001-0503 | Glutamate_Urea | LDL_Cholesterol | Both 001 | Reassign Glutamate_Urea → Z-001-0917 |
| Z-001-0504 | Aspartate_Structure | HDL_Cholesterol | Both 001 | Reassign Aspartate → Z-001-0918 |
| Z-001-0512 | Sirolimus_mTORC1 | Statin_Myopathy | Both 001 | Reassign Statin → Z-001-0919 |
| Z-001-0513 | Sirolimus_ETC | Statin_Pharmacogenomics | Both 001 | Reassign Statin_PGx → Z-001-0920 |

---

## PHASE 2: LEGACY NAMING INVENTORY (74 files)

Pattern: `Topic_Z-XXX-XXXX.md` instead of `Topic_[Z-XXX-XXXX].md`

Full list to be generated...

---

## PHASE 3: ORPHANED ZETTELS (no source-litnote)

To be cataloged...

---

## EXECUTION LOG

### PHASE 1: UID Reassignment — ✅ COMPLETE
**Commits:** `73acc51`, `ac8bee6`
**Scope:** All 20 duplicate UIDs resolved
- Z-001-0001 → Z-001-0901 (Systems Biology)
- Z-001-0002 → Z-001-0902 (Omics Cascade)
- Z-001-0003 → Z-001-0903 through Z-001-0014 → Z-001-0914
- Z-001-0501 → Z-001-0915 through Z-001-0504 → Z-001-0918
- Z-001-0512 → Z-001-0919, Z-001-0513 → Z-001-0920

**Actions per file:**
- ✅ Updated YAML uid field
- ✅ Added deprecated alias
- ✅ Renamed to bracket format `[Z-XXX-XXXX]`
- ✅ Updated all inbound links
- ✅ Added `updated: 2026-03-05`

### PHASE 2: LitNote Fixes — ✅ COMPLETE
**Commit:** `b61a0c6`

**Status Corrections (12):**
- `extracting` → `complete`: L-001-0060, L-001-0060A
- `conscious` → `extracted`: 10 LitNotes (L-101-0045A, L-001-0046B, L-001-0046A, L-001-0045E, L-001-0045F, L-001-0045G, L-001-0045H, L-101-0045B, L-001-0045C, L-001-0045D)

**Type Corrections (10):**
- `litnote` → `lit-note`: All 10 above + 02-Literature.md → `index`

**Verification:**
- 0 remaining `status: conscious` in LitNotes
- 0 remaining `status: extracting` in LitNotes
- 0 remaining `type: litnote` in LitNotes

