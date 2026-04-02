---
uid: S-001-0002
type: strategy
title: "02-Literature — Quality Expansion Strategy"
aliases: [LitStrategy, Literature-Plan, Open-Issues]
tags: [strategy, literature, workflow, gaps, planning]
parent-moc: 
status: active
created: 2026-03-01
---

# 📚 02-Literature — Quality Expansion Strategy

> *"A literature folder is only as strong as its weakest source. Quality over quantity, but quantity matters for coverage."*

---

## 🎯 Strategic Framework

### The Three-Pillar Approach

| Pillar | Purpose | Current State | Target |
|--------|---------|---------------|--------|
| **1. Archive Mining** | Extract value from existing ChatGPT conversations | 675 files, 0% processed into LitNotes | 50 high-value conversations → LitNotes |
| **2. Gap-Filling** | Close knowledge holes (mentioned but not documented) | 15+ gaps identified | 15 new LitNotes from gaps |
| **3. Primary Integration** | Add peer-reviewed sources for IRB/PhD | 0% peer-reviewed | 30 primary papers → LitNotes |

---

## 📋 Open Issues — Knowledge Gaps

### Critical Gaps (METHAP-Blocking)

| # | Gap | Mentioned In | Impact | Priority |
|---|-----|--------------|--------|----------|
| 1 | **Magnesium** | L-001-0008 (VitD safety), L-001-0009 (pediatric research) | Cofactor for VitD activation; METHAP protocol needs Mg dosing | 🔴 P0 |
| 2 | **Calcium metabolism** | L-001-0007 (IOM error), L-001-0013 (D+K2) | Bone health, hypercalcemia risk | 🔴 P0 |
| 3 | **Zinc** | Mentioned in immune context | Immune function, bone health | 🟡 P1 |
| 4 | **Omega-3 fatty acids** | General health discussions | Anti-inflammatory, IR mechanisms | 🟡 P1 |
| 5 | **Bisphosphonates (beyond denosumab)** | L-001-0012 (transition protocol) | First-line osteoporosis therapy | 🟡 P1 |
| 6 | **Testosterone/Estrogen** | Bone health context | Hormonal bone regulation | 🟡 P1 |
| 7 | **Parathyroid hormone (PTH)** | Calcium homeostasis mentions | Master regulator of calcium | 🟡 P1 |
| 8 | **Calcitonin** | Bone remodeling mentions | Osteoclast inhibition | 🟢 P2 |
| 9 | **Strontium ranelate** | European bone therapy | Alternative osteoporosis drug | 🟢 P2 |
| 10 | **Exercise/Mechanical loading** | L-001-0014 (muscle-bone unit) | Non-pharmacologic intervention | 🟢 P2 |

### METHAP-Specific Gaps

| # | Gap | Why It Matters | Priority |
|---|-----|----------------|----------|
| 11 | **Adipic acid clinical studies** | Your PhD marker | 🔴 P0 |
| 12 | **Organic acid profiling methods** | METHAP methodology | 🔴 P0 |
| 13 | **TFA (trans fatty acids) metabolism** | Clinical application | 🔴 P0 |
| 14 | **Vitamin D metabolome analysis** | METHAP endpoint | 🔴 P0 |
| 15 | **IR biomarker panels** | METHAP justification | 🟡 P1 |

---

## 🗂️ ChatGPT Archive Extraction Plan

### Phase 1: High-Value Targets (This Week)

| Folder | Files | Priority Conversations | Expected LitNotes |
|--------|-------|------------------------|-------------------|
| `vitamin_d/` | ~80 | Any Mg mentions, K2 synergy, toxicity | 5 |
| `insulin_resistance/` | ~40 | Mechanisms, adipic acid, biomarkers | 5 |
| `metabolomics/` | ~200 | Methods, OA/TFA, pharmacometabolomics | 8 |
| `clinical/` | ~150 | Patient cases, protocols, monitoring | 5 |
| `nutrition/` | ~30 | Protein, minerals, supplements | 3 |

**Phase 1 Target: 26 LitNotes from ~25 conversations**

### Phase 2: Medium-Value (Next 2 Weeks)

| Folder | Files | Focus |
|--------|-------|-------|
| `phd_research/` | ~20 | METHAP design, IRB prep | 5 |
| `adipic_acid/` | ~15 | All conversations | 5 |
| `general/` | ~200 | Health optimization, longevity | 5 |

**Phase 2 Target: 15 LitNotes**

### Phase 3: Archive (Optional)

| Folder | Files | Notes |
|--------|-------|-------|
| `consciousness_ai/` | ~50 | Philosophy, interesting but low clinical relevance |
| `communication/` | ~30 | RON development, not for LitNotes |
| `technology/` | ~30 | Tools, workflows |

---

## 🔬 Primary Literature Targets (For IRB/PhD)

### Must-Have Papers (10 GOLD References)

| # | Topic | Search Strategy | Target Journal |
|---|-------|-----------------|----------------|
| 1 | Veugelers & Ekwaru 2014 | Already cited in L-001-0007 | Nutrients |
| 2 | Heaney 2003/2014 | Vitamin D dosing | J Clin Endocrinol Metab |
| 3 | Holick 2007 | Vitamin D deficiency | N Engl J Med |
| 4 | Cummings 2018 | Denosumab rebound | Lancet Diabetes Endocrinol |
| 5 | Adipic acid IR marker | PubMed: "adipic acid insulin resistance" | Metabolomics |
| 6 | Adipic acid clinical validation | PubMed: "adipic acid urine organic acid" | Clin Chem |
| 7 | TFA clinical application | PubMed: "trans fatty acids plasma clinical" | Lipids |
| 8 | High-dose VitD safety adult | PubMed: "vitamin D 10000 IU safety adult" | J Bone Miner Res |
| 9 | Mg + VitD interaction | PubMed: "magnesium vitamin D activation" | J Am Osteopath Assoc |
| 10 | Pharmacometabolomics review | PubMed: "pharmacometabolomics precision medicine" | Nat Rev Drug Discov |

---

## 📝 New LitNote Template

```markdown
---
uid: L-{DDD}-{SSSS}
type: lit-note
title: "Lit — [Topic]"
authors: [Author, A., Author, B.]
year: 2024
journal: Journal Name
doi: 10.xxxx/xxxxx
pmid: 12345678
tier: 1|2|3
relevance: High|Medium|Low — [one-line reason]
status: extracted|pending|needs-source
parent-moc: 
extraction-date: YYYY-MM-DD
---

# Lit: [Title]

## Source
- **Full citation:** 
- **PDF Asset:** 
- **ChatGPT conversation:**  (if applicable)
- **Scope:** [What this covers]

---

## Core Concepts Extracted

### 1. [Concept Name]
> "Key quote from source"

**Zettel extracted:** 

[Repeat for each concept]

---

## Key Figures & Data
- **Stat 1:** Value
- **Stat 2:** Value

---

## My Notes

**Synthesis:** [Your interpretation]

**Connection to METHAP/PhD:** [Relevance]

**Questions:**
- 
- 

---

## Zettels Created from This Source
1. 
2. 

## Related References
- 
- 

---

*Literature note processed: YYYY-MM-DD*  
*Zettels extracted: N*  
*Status: extracted*
```

---

## 📊 Progress Tracking

| Week | Target | Actual | Notes |
|------|--------|--------|-------|
| Mar 1-7 | 10 ChatGPT → LitNotes | 0 | Starting today |
| Mar 8-14 | 10 ChatGPT + 3 primary | 0 | |
| Mar 15-21 | 5 gaps + 5 primary | 0 | IRB deadline Mar 15 |
| Mar 22-31 | 10 remaining | 0 | |

**Total Target: 50 new LitNotes by end of March**

---

## 🏷️ UID Allocation

| Domain | Range | Purpose |
|--------|-------|---------|
| L-001-00xx | 0011-0099 | Bone health expansion |
| L-001-01xx | 0100-0199 | Insulin resistance expansion |
| L-001-02xx | 0200-0299 | VitD/Mg/minerals |
| L-001-03xx | 0300-0399 | METHAP-specific |
| L-101-00xx | 0002-0099 | Pharmacometabolomics |

Next available: L-001-0015, L-101-0002

---

## ✅ Success Criteria

- [ ] All 15 gaps filled with LitNotes
- [ ] 50 ChatGPT conversations processed
- [ ] 10 primary papers integrated
- [ ] 02-Literature.md index updated with queries
- [ ] Cross-links between clusters established
- [ ] IRB Section 1 fully supported by citations

---

*Strategy created: 2026-03-01*  
*Next review: Weekly Sundays*
