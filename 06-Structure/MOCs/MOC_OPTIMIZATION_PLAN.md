<!-- NEW_NAME: MOC-Optimization-Plan.md -->
# 🗺️ 55-MOCs ANALYSIS & OPTIMIZATION PLAN

**Date:** 2026-02-21  
**Current Count:** 21 MOCs  
**Status:** Mixed quality, inconsistent structure, optimization needed

---

## 📊 CURRENT STATE ANALYSIS

### MOC Inventory

| Category | Count | Examples | Quality |
|----------|-------|----------|---------|
| **MOC_DT_* (Structured)** | 7 | MOC_DT_SafeVit, MOC_DT_Hashimoto | ⭐⭐⭐ High |
| **PhD MOCs** | 3 | PhD_IR_MOC, PhD-Biomarkers | ⭐⭐⭐ High |
| **Short Name MOCs** | 8 | Metabolic-Syndrome, Nutrition | ⭐⭐ Medium |
| **Workflow MOCs** | 3 | clinic-queue-moc, inbox-sprint-moc | ⭐ Basic |

### Size Distribution

| Size | Count | MOCs |
|------|-------|------|
| **< 500 bytes** | 4 | Literature, Clinical-Protocols, inbox-sprint, .md (empty) |
| **500-1000 bytes** | 9 | Metabolic-Syndrome, Metabolomics, Nutrition, etc. |
| **1000-2000 bytes** | 6 | MOC_DT_*, Nutrition-Risks, MOC_Hidden_Hunger |
| **> 2000 bytes** | 2 | PhD_IR_MOC (2123), PhD_IR_MOC_Update (1728) |

### Critical Issues Found

#### 🔴 Issue 1: Duplicate PhD MOCs
- **PhD_IR_MOC.md** (2123 bytes) — Main hub
- **PhD_IR_MOC_Update_20260218.md** (1728 bytes) — Update file
- **Problem:** Redundant, confusing which to use
- **Solution:** Merge into one authoritative MOC

#### 🔴 Issue 2: Broken Template Links
Multiple MOCs reference moved templates:
- `[[05-Structure/05a-Templates/Template_ClinicExtraction_v2.0]]` → Should be `[[05-Structure/05a-Templates/Template_ClinicExtraction_v2.0]]`
- `[[05-Structure/05a-Templates/Template_ClinicExtraction_v2.0]]` → Deleted (merged)

#### 🟡 Issue 3: Inconsistent Naming
- Some use `MOC_DT_` prefix (7 files)
- Some use short names (8 files)
- Some use `MOC_` prefix (1 file)
- **No clear pattern**

#### 🟡 Issue 4: Missing YAML Frontmatter
- Only MOC_DT_* files have proper YAML
- Others lack: uid, tags, status, confidence
- **Inconsistent metadata**

#### 🟡 Issue 5: Stale/Empty MOC
- **`.md`** (347 bytes) — Appears to be empty/corrupted file
- **inbox-sprint-moc.md** — Minimal, possibly outdated

---

## 🎯 FULL POTENTIAL OF MOCs

### What MOCs SHOULD Do:

1. **Navigation Hub** — Entry point for topic exploration
2. **Connection Map** — Show relationships between notes
3. **Status Dashboard** — Track progress, gaps, next actions
4. **Query Interface** — Dataview-powered dynamic lists
5. **Research Compass** — Guide future work, identify opportunities

### Current vs Potential:

| Function | Current | Potential | Gap |
|----------|---------|-----------|-----|
| **Navigation** | ✅ Basic lists | 🎯 Visual graph + quick filters | Medium |
| **Connections** | ⚠️ Manual links | 🎯 Auto-populated backlinks | Large |
| **Status** | ❌ None | 🎯 Progress bars, completion % | Large |
| **Queries** | ⚠️ 1-2 Dataview | 🎯 Dynamic tables per MOC | Medium |
| **Research** | ⚠️ Static | 🎯 Gap analysis, next steps | Large |

---

## 🚀 OPTIMIZATION PLAN

### Phase 1: Cleanup (30 min)

#### 1.1 Merge PhD MOCs
```bash
# Merge PhD_IR_MOC_Update into PhD_IR_MOC
# Delete update file
# Update all links
```

#### 1.2 Delete/Archive Stale Files
- **`.md`** — Delete (corrupted/empty)
- **inbox-sprint-moc.md** — Evaluate, possibly archive
- **Literature.md** — Expand or merge into 66-Literature structure

#### 1.3 Fix Broken Links
- Find/replace old template paths
- Update to new `Template_*_v2.0.md` format

### Phase 2: Standardize (45 min)

#### 2.1 Naming Convention
**Proposed Standard:**
```
MOC_{Domain}_{Topic}.md

Examples:
- MOC_PhD_IR.md (was PhD_IR_MOC)
- MOC_Clinic_Hashimoto.md (was MOC_DT_Hashimoto...)
- MOC_Topic_MetabolicSyndrome.md (was Metabolic-Syndrome)
```

**OR Keep Current Hybrid:**
- Keep MOC_DT_* for clinic/deep-dive topics
- Keep short names for general topics
- Standardize YAML across all

#### 2.2 YAML Standardization
**Every MOC should have:**
```yaml
---
uid: YYYYMMDDHHMMSS
type: moc
title: {{Full Title}}
aliases: [{{Short}}, {{Acronym}}]
tags: [moc, {{topic}}, {{domain}}]
status: {{active | archived | draft}}
parent-moc: [[05-Structure/05b-MOCs/{{Parent}}]]
last-reviewed: YYYY-MM-DD
next-review: YYYY-MM-DD
---
```

#### 2.3 Structure Template
**Standard MOC Sections:**
```markdown
# MOC Title

## 🎯 Scope
One-paragraph summary of what this MOC covers.

## 📊 Status Dashboard
| Metric | Status |
|--------|--------|
| Child notes | {{count}} |
| Last updated | {{date}} |
| Completeness | {{%}} |

## 🔗 Quick Links
- [[Key Note 1]]
- [[Key Note 2]]

## 📚 All Notes (Dataview)
```dataview
LIST FROM "02-Atomic" WHERE contains(file.name, "{{keyword}}")
```

## 🎯 Next Actions
- [ ] Action 1
- [ ] Action 2

## 🔍 Related MOCs
- [[MOC_X]] — Description
- [[MOC_Y]] — Description
```

### Phase 3: Enhance (60 min)

#### 3.1 Add Dataview Queries
**To each MOC, add dynamic tables:**
- List all atomic notes related to topic
- Show recent updates
- Track unlinked notes (orphans)
- Display statistics

#### 3.2 Create MOC Index
**New file:** `05-Structure/05b-MOCs/MOC_INDEX.md`
- Master list of all MOCs
- Classification by domain
- Status overview
- "Start here" recommendations

#### 3.3 Cross-Link MOCs
- Ensure all related MOCs link to each other
- Create "MOC of MOCs" — meta-navigation
- Add breadcrumbs

### Phase 4: Automate (30 min)

#### 4.1 RON Integration
**Commands I can execute:**
- "Update MOCs" — Refresh all dataview queries
- "Link orphans" — Find unlinked atomics and suggest MOCs
- "MOC health check" — Report broken links, stale MOCs
- "Create MOC for [topic]" — Generate new MOC from template

#### 4.2 Heartbeat Integration
**Every pulse:**
- Check MOC freshness (last-reviewed date)
- Flag MOCs needing review (>30 days)
- Report orphan notes without MOC parents

---

## 📋 RECOMMENDED MOC HIERARCHY

### Top-Level MOCs (7)
1. **MOC_PhD_IR** — Research hub ⭐ PRIMARY
2. **MOC_Clinic** — Clinical practice
3. **MOC_MetabolicSyndrome** — MetS topic
4. **MOC_Autoimmunity** — Hashimoto, etc.
5. **MOC_Nutrition** — Diet, supplements
6. **MOC_Biomarkers** — Lab markers
7. **MOC_Methods** — Protocols, techniques

### Sub-MOCs (14)
Under PhD_IR:
- MOC_DT_Hashimoto (deep-dive)
- MOC_DT_VitD (deep-dive)
- MOC_DT_Adipic (deep-dive)

Under Clinic:
- MOC_Clinic_Protocols
- MOC_Clinic_Queue

Under MetabolicSyndrome:
- MOC_DT_DiabetesT2D
- MOC_DT_Cholesterol

[etc.]

---

## 🎁 IMMEDIATE WINS

### Quick Fix (15 min)
```bash
# 1. Delete empty .md file
rm 05-Structure/05b-MOCs/.md

# 2. Merge PhD MOCs
cat 05-Structure/05b-MOCs/PhD_IR_MOC_Update_20260218.md >> 05-Structure/05b-MOCs/PhD_IR_MOC.md
rm 05-Structure/05b-MOCs/PhD_IR_MOC_Update_20260218.md

# 3. Fix template links
sed -i 's|Lit_Extraction_Clinic_Sites_20260215_075|Template_ClinicExtraction_v2.0|g' 05-Structure/05b-MOCs/*.md
sed -i 's|Process_Clinic_Lit_Step1_Template_20260215_076|Template_ClinicExtraction_v2.0|g' 05-Structure/05b-MOCs/*.md

# 4. Git commit
git add -A && git commit -m "MOC cleanup: merge duplicates, fix links, delete empty"
```

### Medium Investment (1 hour)
- Standardize YAML on top 5 MOCs
- Add Dataview queries to PhD_IR_MOC
- Create MOC_INDEX.md

### Full Optimization (2 hours)
- Complete Phase 1-4
- Full YAML standardization
- Automated RON integration

---

## ❓ YOUR DECISION

**Choose depth:**

**A) Quick Fix (15 min)** — Delete empty, merge PhD, fix links  
**B) Standardize (1 hour)** — Quick fix + YAML + top 5 MOCs  
**C) Full Optimization (2 hours)** — Complete overhaul  
**D) Create MOC_INDEX first** — Master navigation, then optimize  
**E) Your plan** — Tell me what you want

**Which path?** 🦞