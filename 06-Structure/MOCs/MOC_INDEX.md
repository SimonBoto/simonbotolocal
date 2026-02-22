<!-- NEW_NAME: MOC-INDEX-v2.md -->
---
uid: 20260221172200
type: moc
structure-type: master-index
title: MOC INDEX — Master Navigation Hub
tags: [moc, index, master, navigation, hub]
status: active
aliases: [MOC_Index, Master_MOC, MOC_of_MOCs, Navigation_Hub]
last-reviewed: 2026-02-21
next-review: 2026-03-21
---

# 🗺️ MOC INDEX — Master Navigation Hub

> **Your bird's-eye view of all knowledge maps. Start here to explore any topic.**

**Total MOCs:** 20 active | **Last Updated:** 2026-02-21 | **Status:** 🟢 Active

---

## 🎯 Primary Navigation — START HERE

### 🔬 Research & PhD
| MOC | Description | Notes | Status |
|-----|-------------|-------|--------|
| **[[PhD_IR_MOC]]** | Main PhD research hub — IR metabolomics, METHAP trial | 130+ atomics | 🟢 Active |
| **[[PhD-Biomarkers]]** | Biomarker-specific research | Core panel | 🟢 Active |

### 🏥 Clinical Practice
| MOC | Description | Focus | Status |
|-----|-------------|-------|--------|
| **[[Clinical-Protocols]]** | Standard operating procedures | Protocols | 🟢 Active |
| **[[clinic-queue-moc]]** | Patient workflow management | Operations | 🟢 Active |
| **[[MOC_DT_Hashimoto_Thyroiditis_20260215_008]]** | Hashimoto's deep-dive | Autoimmunity | 🟢 Active |

### 🔍 Topics by Domain

#### Metabolic Health
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[Metabolic-Syndrome]]** | MetS hub — prevalence, criteria, nutrition | Waist, TG, HDL, glucose |
| **[[MOC_DT_Diabetes_T2D_20260215_003]]** | Type 2 Diabetes deep-dive | Pathophysiology, reversal |
| **[[MOC_DT_Cholesterol_Quality_20260215_004]]** | Cholesterol particle quality | LDL size, HDL function |
| **[[MOC_DT_Omega3_Fats_20260215_006]]** | Omega-3 fatty acids | Anti-inflammatory, ratio |

#### Nutrition & Supplements
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[MOC_DT_SafeVit_20260215_002]]** | Vitamin safety & dosing | High-dose protocols |
| **[[MOC_Hidden_Hunger_20260215_009]]** | Micronutrient deficiencies | Hidden hunger, T2D link |
| **[[Nutrition]]** | General nutrition hub | Diet principles |
| **[[Nutrition-Risks]]** | Nutritional risk factors | Deficiency patterns |

#### Autoimmunity & Stress
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[MOC_DT_Stress_Autoimmune_20260215_007]]** | Stress-autoimmune connection | Cortisol, tolerance breach |

#### Methods & Analysis
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[Metabolomics]]** | Metabolomics methods | GC-MS, biomarkers |
| **[[metabolomics-protocols-moc]]** | Protocol-specific MOC | Pre-analytics, QC |
| **[[MOC_DT_Metabolomics_Analysis_20260215_005]]** | Data analysis deep-dive | PCA, multivariate |
| **[[biomarkers-moc]]** | Biomarker classification | Early vs late markers |

#### Operations
| MOC | Description | Purpose |
|-----|-------------|---------|
| **[[inbox-sprint-moc]]** | Inbox processing workflow | Triage system |
| **[[Literature]]** | Literature management | Reading queue |

---

## 📊 MOC Health Dashboard

```dataview
TABLE status, file.size AS "Size", last-reviewed AS "Last Review"
FROM "55-MOCs"
WHERE type = "moc"
SORT file.name ASC
```

### Quick Stats
- **Total MOCs:** 20
- **With YAML:** 10/20 (50%) — *standardization in progress*
- **With Dataview:** 3/20 (15%) — *enhancement needed*
- **Last Updated Today:** 2 — *PhD_IR_MOC, MOC_INDEX*

---

## 🎯 By Research Goal

### "I'm working on my PhD"
→ Start: [[PhD_IR_MOC]]  
→ Then: [[PhD-Biomarkers]], [[MOC_DT_Hashimoto_Thyroiditis_20260215_008]]

### "I need clinical protocols"
→ Start: [[Clinical-Protocols]]  
→ Then: [[clinic-queue-moc]], specific condition MOCs

### "I want to understand metabolic syndrome"
→ Start: [[Metabolic-Syndrome]]  
→ Then: [[MOC_DT_Diabetes_T2D_20260215_003]], [[MOC_DT_Cholesterol_Quality_20260215_004]]

### "I'm researching vitamin D"
→ Start: [[MOC_DT_SafeVit_20260215_002]]  
→ Then: [[MOC_DT_Hashimoto_Thyroiditis_20260215_008]] (VitD protocols)

### "I need to process literature"
→ Start: [[Literature]]  
→ Then: [[inbox-sprint-moc]], [[Template_ClinicExtraction_v2.0]]

---

## 🔗 Cross-Domain Connections

### Metabolic Health ↔ Autoimmunity
[[Metabolic-Syndrome]] → [[MOC_DT_Hashimoto_Thyroiditis_20260215_008]] via IR mechanisms

### Nutrition ↔ Biomarkers
[[Nutrition]] → [[biomarkers-moc]] via micronutrient status

### PhD Research ↔ Clinical
[[PhD_IR_MOC]] → [[Clinical-Protocols]] via METHAP trial protocols

---

## 🚀 MOC Development Status

### 🟢 Complete (High Quality)
- [[PhD_IR_MOC]] — Fully structured, active research
- [[MOC_DT_SafeVit_20260215_002]] — Deep-dive with Dataview
- [[MOC_DT_Hashimoto_Thyroiditis_20260215_008]] — Comprehensive

### 🟡 Active (Needs Enhancement)
- [[Metabolic-Syndrome]] — Good content, needs Dataview
- [[biomarkers-moc]] — Solid, expand connections
- [[Metabolomics]] — Core methods, add queries

### 🟠 Basic (Minimal/Outdated)
- [[Literature]] — Minimal, merge with 66-Literature?
- [[inbox-sprint-moc]] — Workflow, possibly outdated

---

## 📋 Maintenance Checklist

**Monthly:**
- [ ] Review all MOCs for stale content
- [ ] Update "last-reviewed" dates
- [ ] Check for orphaned notes (no MOC parent)

**Quarterly:**
- [ ] Add Dataview queries to 3 more MOCs
- [ ] Standardize YAML on 5 more MOCs
- [ ] Archive obsolete MOCs

**On-Demand:**
- [ ] Create new MOC for emerging topic
- [ ] Merge duplicate MOCs
- [ ] Update cross-links

---

## 🆘 Quick Commands

**In Telegram:**
- "MOC status" — Show this index
- "Update MOCs" — Refresh all dataviews
- "Find orphan notes" — Notes without MOC parents
- "Create MOC for [topic]" — Generate new MOC

---

## 📝 Recent Changes

| Date | Change | MOC |
|------|--------|-----|
| 2026-02-21 | Merged update into main | [[PhD_IR_MOC]] |
| 2026-02-21 | Deleted empty .md file | N/A |
| 2026-02-21 | Fixed template links | All MOCs |
| 2026-02-21 | Created this index | MOC_INDEX |

---

*MOC INDEX — Your map of maps. Updated with every heartbeat.*  
*Next review: 2026-03-21*
