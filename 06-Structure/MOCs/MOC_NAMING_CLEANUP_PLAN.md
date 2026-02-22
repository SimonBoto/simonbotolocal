# 🗺️ MOC NAMING STANDARDIZATION — CLEAN SLATE PLAN

**Problem:** Current MOC names are inconsistent, confusing, and hard to use  
**Solution:** Simple, memorable, stable naming convention  
**Status:** URGENT — affects daily workflow

---

## 🔴 THE PROBLEM

### Current Mess (Examples)

| Current Name | Issues |
|--------------|--------|
| `MOC_DT_Hashimoto_Thyroiditis_20260215_008.md` | Too long, "DT" unclear, date useless, hard to type |
| `MOC_DT_SafeVit_20260215_002.md` | Abbreviation (SafeVit?), date noise, number meaningless |
| `Metabolic-Syndrome.md` | No MOC prefix, inconsistent with MOC_DT_* |
| `biomarkers-moc.md` | Suffix instead of prefix, kebab-case vs snake_case |
| `PhD_IR_MOC.md` | Good! But inconsistent with others |

### Why This Hurts You

1. **Hard to type:** `[[MOC_DT_Hashimoto_Thyroiditis_20260215_008]]` vs `[[MOC_Hashimoto]]`
2. **Unclear what "DT" means:** Deep Topic? Dr. T? Date? 
3. **Dates in MOCs are wrong:** MOCs are permanent navigation, not dated notes
4. **Inconsistent patterns:** Can't remember which format to use
5. **Autocomplete nightmare:** Type "Hashimoto" - which one pops up?

---

## 🎯 THE SOLUTION: SIMPLE & STABLE

### Naming Rule

```
MOC_{Topic}.md

Examples:
✅ MOC_Hashimoto.md
✅ MOC_VitaminD.md
✅ MOC_MetabolicSyndrome.md
✅ MOC_Clinic.md
✅ MOC_Literature.md
```

### Why This Works

| Feature | Benefit |
|---------|---------|
| **MOC_ prefix** | Clear it's a Map of Content |
| **No dates** | MOCs are permanent, not time-stamped |
| **No numbers** | Not a sequence, not a UID |
| **Simple topic** | Easy to remember, easy to type |
| **Consistent** | All follow same pattern |

### Comparison: Before vs After

| Current (BAD) | New (GOOD) | Why Better |
|---------------|------------|------------|
| `MOC_DT_Hashimoto_Thyroiditis_20260215_008.md` | `MOC_Hashimoto.md` | 47 chars → 17 chars |
| `MOC_DT_SafeVit_20260215_002.md` | `MOC_VitaminD.md` | Clear topic, no abbreviation |
| `MOC_DT_Diabetes_T2D_20260215_003.md` | `MOC_DiabetesT2D.md` | Compact, memorable |
| `biomarkers-moc.md` | `MOC_Biomarkers.md` | Consistent prefix |
| `Metabolic-Syndrome.md` | `MOC_MetabolicSyndrome.md` | Clear it's a MOC |
| `PhD_IR_MOC.md` | `MOC_PhD_IR.md` or keep | Already good! |

---

## 🚀 IMPLEMENTATION PLAN

### Phase 1: Rename All MOCs (30 minutes)

```bash
# Current → New

# MOC_DT_* → MOC_*
mv MOC_DT_Cholesterol_Quality_20260215_004.md MOC_Cholesterol.md
mv MOC_DT_Diabetes_T2D_20260215_003.md MOC_DiabetesT2D.md
mv MOC_DT_Hashimoto_Thyroiditis_20260215_008.md MOC_Hashimoto.md
mv MOC_DT_Metabolomics_Analysis_20260215_005.md MOC_MetabolomicsAnalysis.md
mv MOC_DT_Omega3_Fats_20260215_006.md MOC_Omega3.md
mv MOC_DT_SafeVit_20260215_002.md MOC_VitaminD.md
mv MOC_DT_Stress_Autoimmune_20260215_007.md MOC_StressAutoimmune.md

# Others → Add MOC_ prefix
mv biomarkers-moc.md MOC_Biomarkers.md
mv Clinical-Protocols.md MOC_ClinicProtocols.md
mv clinic-queue-moc.md MOC_ClinicQueue.md
mv inbox-sprint-moc.md MOC_InboxSprint.md
mv Literature.md MOC_Literature.md
mv Metabolic-Syndrome.md MOC_MetabolicSyndrome.md
mv Metabolomics.md MOC_Metabolomics.md
mv metabolomics-protocols-moc.md MOC_MetabolomicsProtocols.md
mv Nutrition.md MOC_Nutrition.md
mv Nutrition-Risks.md MOC_NutritionRisks.md
mv PhD-Biomarkers.md MOC_PhD_Biomarkers.md

# Keep or simplify
mv PhD_IR_MOC.md MOC_PhD_IR.md  # Or keep as-is
```

### Phase 2: Update All Links (45 minutes)

```bash
# Find and replace in entire vault
find 77-Archive/Legacy_20260222/02-Atomic-Legacy 55-MOCs 22-Dashboards 03-Structure -name "*.md" -exec sed -i \
  -e 's/MOC_DT_Hashimoto_Thyroiditis_20260215_008/MOC_Hashimoto/g' \
  -e 's/MOC_DT_SafeVit_20260215_002/MOC_VitaminD/g' \
  -e 's/MOC_DT_Diabetes_T2D_20260215_003/MOC_DiabetesT2D/g' \
  -e 's/MOC_DT_Cholesterol_Quality_20260215_004/MOC_Cholesterol/g' \
  -e 's/MOC_DT_Metabolomics_Analysis_20260215_005/MOC_MetabolomicsAnalysis/g' \
  -e 's/MOC_DT_Omega3_Fats_20260215_006/MOC_Omega3/g' \
  -e 's/MOC_DT_Stress_Autoimmune_20260215_007/MOC_StressAutoimmune/g' \
  -e 's/biomarkers-moc/MOC_Biomarkers/g' \
  -e 's/Clinical-Protocols/MOC_ClinicProtocols/g' \
  -e 's/Metabolic-Syndrome/MOC_MetabolicSyndrome/g' \
  -e 's/Metabolomics[^A-Za-z]/MOC_Metabolomics/g' \
  -e 's/PhD-Biomarkers/MOC_PhD_Biomarkers/g' \
  -e 's/PhD_IR_MOC/MOC_PhD_IR/g' \
  {} \;
```

### Phase 3: Update MOC_INDEX (10 minutes)

- Update all links in MOC_INDEX.md
- Update aliases in each MOC
- Update Start_Here.md and Dashboard_Home.md

### Phase 4: Git Commit (5 minutes)

```bash
git add -A
git commit -m "MOC naming standardization: MOC_Topic.md format, removed dates/numbers/DT, updated all links"
```

**Total: ~90 minutes**

---

## 📋 NEW MOC LIST (After Cleanup)

### 20 MOCs → Clean Names

| # | New Name | Topic | Aliases |
|---|----------|-------|---------|
| 1 | **MOC_PhD_IR.md** | Main PhD hub | PhD, METHAP, IR |
| 2 | **MOC_PhD_Biomarkers.md** | Biomarker research | Biomarkers, Panel |
| 3 | **MOC_Hashimoto.md** | Hashimoto's thyroiditis | Thyroid, Autoimmune |
| 4 | **MOC_VitaminD.md** | Vitamin D deep-dive | VitD, SafeVit |
| 5 | **MOC_DiabetesT2D.md** | Type 2 Diabetes | T2D, Diabetes |
| 6 | **MOC_Cholesterol.md** | Cholesterol quality | Lipids, Particles |
| 7 | **MOC_Omega3.md** | Omega-3 fatty acids | Fats, O3 |
| 8 | **MOC_MetabolomicsAnalysis.md** | Metabolomics methods | Analysis, Stats |
| 9 | **MOC_StressAutoimmune.md** | Stress-autoimmune link | Stress, GAS |
| 10 | **MOC_MetabolicSyndrome.md** | Metabolic syndrome | MetS |
| 11 | **MOC_Metabolomics.md** | Metabolomics overview | Methods |
| 12 | **MOC_MetabolomicsProtocols.md** | Lab protocols | Protocols, GC-MS |
| 13 | **MOC_Biomarkers.md** | Biomarker classification | Markers |
| 14 | **MOC_Nutrition.md** | General nutrition | Diet |
| 15 | **MOC_NutritionRisks.md** | Nutritional risks | Deficiencies |
| 16 | **MOC_ClinicProtocols.md** | Clinical SOPs | SOPs, Clinic |
| 17 | **MOC_ClinicQueue.md** | Patient workflow | Queue, Flow |
| 18 | **MOC_Literature.md** | Literature management | Reading |
| 19 | **MOC_InboxSprint.md** | Inbox processing | Triage |
| 20 | **MOC_INDEX.md** | Master navigation | Index, Hub |

---

## 🎁 BENEFITS AFTER CLEANUP

### Easy to Type
```
Before: [[MOC_DT_Hashimoto_Thyroiditis_20260215_008]]
After:  [[MOC_Hashimoto]]
```

### Easy to Remember
- "Vitamin D MOC" → `MOC_VitaminD`
- "Hashimoto MOC" → `MOC_Hashimoto`
- No cryptic abbreviations or dates

### Consistent
- All start with `MOC_`
- All follow `MOC_Topic.md`
- No exceptions, no confusion

### Professional
- Clean URL-friendly names
- Easy to share/reference
- Publication-quality organization

---

## ⚠️ RISK: BROKEN LINKS

**Temporary issue:** During rename, wikilinks will be broken
**Mitigation:** 
1. Do all renames at once
2. Run global find/replace immediately
3. Test 5-10 random links before committing
4. Git commit only after verification

**Recovery:** Git history preserves old names if needed

---

## ❓ YOUR DECISION

**Option A: DO IT NOW (90 min)**
- Rename all 20 MOCs
- Update all links
- Clean, consistent, professional
- **Best long-term**

**Option B: DO IT GRADUALLY**
- Rename 5 MOCs per day
- Update links incrementally
- Lower risk, takes 4 days

**Option C: ONLY FIX DT ONES**
- Keep short names as-is
- Just rename MOC_DT_* → MOC_*
- Quick win (30 min)

**Option D: LIVE WITH IT**
- MOCs work, just annoying
- Fix when you have time
- Not blocking anything

**What's your call?** The sooner we fix this, the sooner you have clean navigation. 🦞🗺️