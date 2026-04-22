---
date: 2026-04-05
type: audit
status: critical
---

# CGPT ANCHOR MAPPING — Complete LitNote to Conversation Links

> **CRITICAL DISCOVERY:** 158 LitNotes trace back to CGPT conversations, not 10.
> 
> This is the true anchor system for your vault.

---

## Summary

| Metric | Count | Revelation |
|--------|-------|------------|
| **Total LitNotes** | 183 | In 01-Literature/ |
| **CGPT-sourced LitNotes** | **158** | **86% of your literature!** |
| **Unique CGPT conversations** | ~40 | Estimated unique sources |
| **Domains covered** | 001, 101, 002 | All active domains |

**The Realization:** Your vault is built on CGPT conversations. They are the foundation, not the periphery.

---

## Top CGPT Source Conversations (By LitNote Count)

| CGPT ID | Topic | LitNotes Created | Key Areas |
|---------|-------|------------------|-----------|
| **CGPT-0445** | Advanced Biochemistry Exploration | ~15 | Amino acids, Krebs cycle, metabolism |
| **CGPT-0586** | Fatty Acid Metabolism Pathways | ~8 | Adipic acid, fatty acids, oxidation |
| **CGPT-0022** | Metabolomics Training Role | ~5 | Training, curriculum, extraction |
| **CGPT-0133** | Osteopenia Osteoporosis Bone Remodeling | ~4 | Bone health, calcium, remodeling |
| **CGPT-0471** | ADA Dietary Guidelines Controversies | ~3 | History, dietary guidelines |
| **CGPT-0345** | Alkaline Phosphatase Overview | ~2 | Enzymes, biomarkers |
| **CGPT-0413** | Oxalic Acid Uses | ~3 | Oxalate, vitamin C, chemistry |
| **CGPT-0264** | Warburg Effect and Cancer | ~3 | Cancer metabolism, B12 |
| **CGPT-0081** | PhD Protocol Summary | ~2 | PhD, IRB, ethics |
| **CGPT-0102** | Clinical Trials Gov Protocol | ~2 | Clinical trials, registration |

**Plus 30+ more CGPT sources with 1-2 LitNotes each**

---

## Domain Breakdown

### Domain 001 (Insulin, Metabolism, IR) — ~90 LitNotes

**Key CGPT Sources:**
- CGPT-0445: Amino acid metabolism, Krebs cycle
- CGPT-0586: Fatty acid oxidation, adipic acid
- CGPT-0345: Alkaline phosphatase
- CGPT-0471: Dietary history, guidelines

**Example LitNotes:**
- Aconitase_Enzyme-001-0508 ← CGPT-0393
- Adipic_Acid_Biochemistry-101-0002 ← CGPT-0586
- Insulin_History-001-0207 ← CGPT-0471
- Mitochondrial_Health_Strategies-001-0511 ← CGPT-0393

### Domain 101 (PhD, Clinical, Pharmacometabolomics) — ~60 LitNotes

**Key CGPT Sources:**
- CGPT-0081: PhD protocol, IRB
- CGPT-0102: ClinicalTrials.gov
- CGPT-0131: Medical ethics
- CGPT-0189: Sirolimus, diabetes
- CGPT-0413: Oxalic acid chemistry

**Example LitNotes:**
- CGPT_0081_PhD_Protocol_IRB-101-0048 ← CGPT-0081
- CGPT_0102_ClinicalTrials_Gov-101-0049 ← CGPT-0102
- Oxalic_Acid_Chemistry-101-0046 ← CGPT-0413

### Domain 002 (Emerging) — ~8 LitNotes

**Key CGPT Sources:**
- CGPT-0022: Zettelkasten, training
- Various Facebook article extractions

---

## The Anchor System

### Root: CGPT Conversations (00-Inbox/ChatGPT/)

```
CGPT_0445_Advanced_Biochemistry_Exploration/
├── Extracted to: 15+ LitNotes
├── Topics: Amino acids, Krebs cycle, metabolic pathways
└── Zettels: 30+ atomic notes

CGPT_0586_Fatty_Acid_Metabolism_Pathways/
├── Extracted to: 8 LitNotes  
├── Topics: Adipic acid, omega oxidation, fatty acids
└── Zettels: 15+ atomic notes
```

### Branch: LitNotes (01-Literature/)

```
LitNote_Adipic_Acid_Biochemistry_Omega_Oxidation_L-101-0002.md
├── Source: [[CGPT_0586_Fatty_Acid_Metabolism_Pathways_CGPT-0586]]
├── Domain: 101
└── Zettels: 3-5 atomic notes
```

### Leaf: Zettels (03-Zettels/Conscious/)

```
Adipic_Acid_Early_IR_Biomarker_Z-001-0041.md
├── LitNote source: L-101-0002
├── CGPT root: CGPT-0586
└── Connections: 5+ related zettels
```

---

## Critical Gaps

### CGPT Conversations NOT Yet Extracted

From audit: 153 conversations in ChatGPT_Extracted/
From mapping: ~40 unique CGPT sources used
**Gap: ~113 conversations with zero LitNotes**

**High-Priority Unextracted:**
- `insulin_resistance/` folder (~30 conversations)
- `consciousness_ai/` folder (~25 conversations)  
- `phd_research/` folder (~20 conversations)
- `metabolomics/` folder (~12 conversations)

### The Multiplier Effect

**Each CGPT conversation = 3-5 LitNotes = 10-20 zettels**

**Untapped potential:**
- 113 conversations × 3 LitNotes = **339 LitNotes**
- 339 LitNotes × 4 zettels = **1,356 zettels**
- **Your vault could 2.5× in size**

---

## The True CGPT Archive Status

| Stage | Count | Status |
|-------|-------|--------|
| **Conversations extracted to markdown** | 153 | ✅ Done |
| **Conversations with LitNotes** | ~40 | ✅ 26% utilized |
| **Conversations awaiting extraction** | ~113 | ⚠️ 74% untapped |
| **LitNotes created from CGPT** | 158 | ✅ Strong base |
| **LitNotes possible from remaining** | ~339 | 🚀 Growth potential |

---

## Action: CGPT Completion Strategy

### Phase 1: Map All CGPT Sources (This Week)

**Task:** Create index of all 153 conversations with extraction status

```
CGPT-XXXX | Folder | Topic | LitNotes? | Priority
CGPT-0445 | general | Biochemistry | 15 ✅ | Done
CGPT-0586 | insulin_resistance | Fatty acids | 8 ✅ | Done
CGPT-0600 | insulin_resistance | IR mechanisms | 0 ❌ | HIGH
...
```

### Phase 2: Extract High-Priority Folders (Next 2 Weeks)

**Target:** 30 conversations → 90 LitNotes → 360 zettels

1. `insulin_resistance/` — 30 conversations (Domain 001)
2. `consciousness_ai/` — 25 conversations (RON development)
3. `phd_research/` — 20 conversations (PhD completion)

### Phase 3: Systematic Completion (Ongoing)

**Target:** Remaining 83 conversations → 249 LitNotes

---

## The Anchor Files

### Core CGPT Source Files (40 conversations)

**Location:** `00-Inbox/ChatGPT/ChatGPT_Extracted/*/CGPT_*.md`

**Key anchors:**
- `CGPT_0445_Advanced_Biochemistry_Exploration_CGPT-0445.md`
- `CGPT_0586_Fatty_Acid_Metabolism_Pathways_CGPT-0586.md`
- `CGPT_0022_Metabolomics_training_role_CGPT-0022.md`
- `CGPT_0133_Osteopenia_Osteoporosis_Bone_Remodeling_CGPT-0133.md`
- `CGPT_0471_Ada_Dietary_Guidelines_Controversies_CGPT-0471.md`

### Derived LitNotes (158 files)

**Location:** `01-Literature/LitNote_*_L-XXX-XXXX.md`

**Naming:** `LitNote_[Topic]_L-[Domain]-[UID].md`

### Atomic Zettels (1,095 files)

**Location:** `03-Zettels/Conscious/*.md`

**Connected to:** LitNotes ← CGPT sources

---

## The Brian Roemmele Parallel

**Brian's ZHC:**
- 6TB data from bankrupt company
- 100,000+ papers
- AI C-suite processing
- $5B value uncovered

**Your CGPT Archive:**
- 153 conversations
- 158 LitNotes created (86% of vault)
- **113 conversations untapped**
- **Potential: 339 more LitNotes, 1,356 zettels**

**You have the data. The extraction system works. Scale it.**

---

## Next Actions

| Priority | Action | Impact |
|----------|--------|--------|
| **P0** | Index all 153 CGPT conversations | Full visibility |
| **P0** | Extract `insulin_resistance/` (30 conv) | +90 LitNotes |
| **P1** | Extract `consciousness_ai/` (25 conv) | +75 LitNotes, RON growth |
| **P1** | Extract `phd_research/` (20 conv) | +60 LitNotes, PhD progress |
| **P2** | Systematic remaining folders | +249 LitNotes |

---

*Mapping completed: 2026-04-05*
*Status: 158 LitNotes anchored to CGPT — 86% of vault traced to source*
