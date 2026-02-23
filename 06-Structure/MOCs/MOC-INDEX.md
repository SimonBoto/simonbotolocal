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
| **[[MOC-Insulin-Signaling]]** | Main PhD research hub — IR mechanisms | 17 atomics | 🟢 Active |
| **[[MOC-Biomarkers]]** | Biomarker classification | Early detection panel | 🟢 Active |

### 🏥 Clinical Practice
| MOC | Description | Focus | Status |
|-----|-------------|-------|--------|
| **[[MOC-Clinical-Protocols]]** | Standard operating procedures | Protocols | 🟢 Active |
| **[[MOC-Clinic-Queue]]** | Patient workflow management | Operations | 🟢 Active |
| **[[MOC-Hashimoto-Thyroiditis]]** | Hashimoto's deep-dive | Autoimmunity | 🟢 Active |

### 🔍 Topics by Domain

#### Metabolic Health
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[MOC-Metabolic-Syndrome]]** | MetS hub — prevalence, criteria, nutrition | Waist, TG, HDL, glucose |
| **[[MOC-Diabetes-T2D]]** | Type 2 Diabetes deep-dive | Pathophysiology, reversal |
| **[[MOC-Cholesterol-Quality]]** | Cholesterol particle quality | LDL size, HDL function |
| **[[MOC-Omega3-Fats]]** | Omega-3 fatty acids | Anti-inflammatory, ratio |

#### Nutrition & Supplements
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[MOC-Vitamin-Safety]]** | Vitamin safety & dosing | High-dose protocols |
| **[[MOC-Hidden-Hunger]]** | Micronutrient deficiencies | Hidden hunger, T2D link |
| **[[MOC-Nutrition]]** | General nutrition hub | Diet principles |
| **[[MOC-Nutrition-Risks]]** | Nutritional risk factors | Deficiency patterns |

#### Autoimmunity & Stress
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[MOC-Stress-Autoimmune]]** | Stress-autoimmune connection | Cortisol, tolerance breach |

#### Methods & Analysis
| MOC | Description | Key Concepts |
|-----|-------------|--------------|
| **[[MOC-Metabolomics]]** | Metabolomics methods | GC-MS, biomarkers |
| **[[MOC-Metabolomics-Protocols]]** | Protocol-specific MOC | Pre-analytics, QC |
| **[[MOC-Metabolomics-Analysis]]** | Data analysis methods | Multivariate, PCA |
| **[[MOC-Biomarkers]]** | Biomarker classification | Early vs late markers |

#### Operations
| MOC | Description | Purpose |
|-----|-------------|---------|
| **[[MOC-Inbox-Sprint]]** | Inbox processing workflow | Triage system |
| **[[MOC-Literature-Management]]** | Literature management | Reading queue |

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
→ Start: [[MOC-PhD-Insulin-Resistance]]  
→ Then: [[MOC-PhD-Biomarkers]], [[MOC-Hashimoto-Thyroiditis]]

### "I need clinical protocols"
→ Start: [[MOC-Clinical-Protocols]]  
→ Then: [[MOC-Clinic-Queue]], specific condition MOCs

### "I want to understand metabolic syndrome"
→ Start: [[MOC-Metabolic-Syndrome]]  
→ Then: [[MOC-Diabetes-T2D]], [[MOC-Cholesterol-Quality]]

### "I'm researching vitamin D"
→ Start: [[MOC-Vitamin-Safety]]  
→ Then: [[MOC-Hashimoto-Thyroiditis]] (VitD protocols)

### "I need to process literature"
→ Start: [[MOC-Literature-Management]]  
→ Then: [[MOC-Inbox-Sprint]], [[Template_ClinicExtraction_v2.0]]

---

## 🔗 Cross-Domain Connections

### Metabolic Health ↔ Autoimmunity
[[MOC-Metabolic-Syndrome]] → [[MOC-Hashimoto-Thyroiditis]] via IR mechanisms

### Nutr[[MOC-Biomarkers]]
[[MOC-Nutrition]] → [[biomarkers-moc]] via micronutrient status

### PhD Research ↔ Clinical
[[MOC-PhD-Insulin-Resistance]] → [[MOC-Clinical-Protocols]] via METHAP trial protocols

---

## 🚀 MOC Development Status

### 🟢 Complete (High Quality)
- [[MOC-PhD-Insulin-Resistance]] — Fully structured, active research
- [[MOC-Vitamin-Safety]] — Deep-dive with Dataview
- [[MOC-Hashimoto-Thyroiditis]] — Comprehensive

### 🟡 Active (Needs Enhancement)
- [[Metabolic-Syndrome][[BIOMARKERS_MOC]]needs Dataview
- [[biomarkers-moc]] — Solid, expand connections
- [[MOC-Metabolomics]] — Core methods, add queries

### 🟠 Basic (Minimal/Outdated)
- [[MOC-Literature-Management]] — Minimal, merge with 66-Literature?
- [[MOC-Inbox-Sprint]] — Workflow, possibly outdated

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
| 2026-02-21 | Merged update into main | [[MOC-PhD-Insulin-Resistance]] |
| 2026-02-21 | Deleted empty .md file | N/A |
| 2026-02-21 | Fixed template links | All MOCs |
| 2026-02-21 | Created this index | MOC_INDEX |

---

*MOC INDEX — Your map of maps. Updated with every heartbeat.*  
*Next review: 2026-03-21*
