---
uid: RON-SYS-UID-FIX-001
type: script
title: UID Collision Fix Script
status: draft
---

# UID Collision Fix Script

## ARM_RED Required
This is a destructive batch operation. Git checkpoint required.

## Pre-Flight Checklist
- [ ] Git status clean
- [ ] Backup created
- [ ] ARM_RED confirmed

## Phase 1: Git Checkpoint
```bash
cd ~/Workspaces/TheOptimizedBrain
git add -A
git commit -m "2026-04-21: Pre-UID-collision-fix checkpoint"
```

## Phase 2: Fix Pattern 1 — PAI-1/Nattokinase (9 files)

### Files to Reassign (Z-001-5000+)
| Old File | New UID |
|----------|---------|
| Diabetes_Strongest_Mortality_Risk_Z-001-0002.md | Z-001-5000 |
| NonHDL_Cholesterol_U_Shaped_Paradox_Z-001-0003.md | Z-001-5001 |
| Metabolic_Syndrome_Cluster_Dominance_Z-001-0004.md | Z-001-5002 |
| Population_Attributable_Fraction_Burden_Z-001-0005.md | Z-001-5003 |
| PAI1_Cardiovascular_Aging_Mechanism_Z-001-0006.md | Z-001-5004 |
| PAI1_Senescence_Feedback_Loop_Z-001-0007.md | Z-001-5005 |
| PAI1_Genetic_Longevity_Amish_Z-001-0008.md | Z-001-5006 |
| Nattokinase_PAI1_Inhibition_Z-001-0009.md | Z-001-5007 |
| Nattokinase_Safety_Dosing_Z-001-0010.md | Z-001-5008 |

### Commands (Batch 1)
```bash
cd ~/Workspaces/TheOptimizedBrain/03-Zettels/Conscious

# Rename files
mv Diabetes_Strongest_Mortality_Risk_Z-001-0002.md Diabetes_Strongest_Mortality_Risk_Z-001-5000.md
mv NonHDL_Cholesterol_U_Shaped_Paradox_Z-001-0003.md NonHDL_Cholesterol_U_Shaped_Paradox_Z-001-5001.md
mv Metabolic_Syndrome_Cluster_Dominance_Z-001-0004.md Metabolic_Syndrome_Cluster_Dominance_Z-001-5002.md
mv Population_Attributable_Fraction_Burden_Z-001-0005.md Population_Attributable_Fraction_Burden_Z-001-5003.md
mv PAI1_Cardiovascular_Aging_Mechanism_Z-001-0006.md PAI1_Cardiovascular_Aging_Mechanism_Z-001-5004.md
mv PAI1_Senescence_Feedback_Loop_Z-001-0007.md PAI1_Senescence_Feedback_Loop_Z-001-5005.md
mv PAI1_Genetic_Longevity_Amish_Z-001-0008.md PAI1_Genetic_Longevity_Amish_Z-001-5006.md
mv Nattokinase_PAI1_Inhibition_Z-001-0009.md Nattokinase_PAI1_Inhibition_Z-001-5007.md
mv Nattokinase_Safety_Dosing_Z-001-0010.md Nattokinase_Safety_Dosing_Z-001-5008.md

# Update YAML in each file (sed command)
for file in *_Z-001-500*.md; do
    newuid=$(echo $file | grep -oE 'Z-[0-9]{3}-[0-9]{4}')
    sed -i "s/^uid: Z-001-00[0-9][0-9]/uid: $newuid/" $file
done
```

### Update Links (Batch 1)
```bash
cd ~/Workspaces/TheOptimizedBrain

# Find and replace links
sed -i 's/Diabetes_Strongest_Mortality_Risk_Z-001-0002/Diabetes_Strongest_Mortality_Risk_Z-001-5000/g' 01-Literature/*.md 04-Synthesis/*.md
sed -i 's/NonHDL_Cholesterol_U_Shaped_Paradox_Z-001-0003/NonHDL_Cholesterol_U_Shaped_Paradox_Z-001-5001/g' 01-Literature/*.md 04-Synthesis/*.md
# ... repeat for all 9 files
```

## Phase 3: Fix Pattern 2 — Metabolic/Insulin Conflict (5 files)

### Files to Reassign (Z-001-5100+)
| Old File | New UID |
|----------|---------|
| Insulin_Receptor_Autophosphorylation_Z-001-0200.md | Z-001-5100 |
| IRS1_Phosphorylation_Signal_Transduction_Z-001-0201.md | Z-001-5101 |
| GLUT4_Translocation_Glucose_Uptake_Z-001-0202.md | Z-001-5102 |
| ADA_Founding_Mission_1940_Z-001-0241.md | Z-001-5103 |
| ADA_Pharmaceutical_Funding_Controversy_Z-001-0242.md | Z-001-5104 |

## Phase 4: Fix Pattern 4 — Conscious/Biomarkers (10 files)

### Files to Reassign (Z-001-6000+)
| Old File | New UID |
|----------|---------|
| GRADE_Certainty_Evidence_Z-001-1001.md | Z-001-6000 |
| Seven_Requirements_Ethical_Research_Z-001-1002.md | Z-001-6001 |
| Historical_Ethical_Guidelines_Z-001-1003.md | Z-001-6002 |
| IRB_Ethics_Committee_Functions_Z-001-1004.md | Z-001-6003 |
| Informed_Consent_Requirements_Z-001-1005.md | Z-001-6004 |
# ... etc

## Phase 5: Fix Pattern 5 — Batch Templates (Delete)

### Find and Delete
```bash
cd ~/Workspaces/TheOptimizedBrain/03-Zettels
find . -name "Batch*_Zettel_Z-*" -type f
# Review list, then delete:
# find . -name "Batch*_Zettel_Z-*" -type f -delete
```

## Phase 6: Git Commit
```bash
cd ~/Workspaces/TheOptimizedBrain
git add -A
git commit -m "2026-04-21: Fix UID collisions — 54+ zettels reassigned"
```

## Verification
- [ ] All duplicate UIDs resolved
- [ ] Links updated in synthesis documents
- [ ] QMD reindex successful
- [ ] No broken links in vault

## Post-Fix
Run QMD update:
```bash
qmd update --pull
qmd embed
```
