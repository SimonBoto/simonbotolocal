---
aliases: [Template-Guide, Template-Index, Which-Template-When]
tags: [template, index, meta, reference]
version: 2.0
last-updated: 2026-02-21
---

# Template Guide v2.0

**Which template to use when.**

---

## 🎯 Quick Decision Tree

```
What are you creating?
│
├── 📚 Literature source (processed paper)
│   └── Use: Template_LitNote_v1.0 → 02-Literature/
│
├── 📖 Bibliographic reference (raw capture)
│   └── Use: Template_Reference_v2.0 → 01-References/Hub/
│
├── 🔬 Single biomarker (cutoffs, methods, associations)
│   └── Use: Template_Biomarker_v2.0 → 03-Zettels/Conscious/
│
├── 📢 Single falsifiable claim
│   └── Use: Template_Claim_v2.0 → 03-Zettels/Conscious/
│
├── ⚙️ Reproducible procedure/protocol
│   └── Use: Template_Method_v2.0 → 03-Zettels/Conscious/
│
├── 📋 Study design or clinical trial
│   └── Use: Template_Protocol_v2.0 → 03-Zettels/Conscious/
│
├── ❓ Research gap or limitation
│   └── Use: Template_Gap_v2.0 → 03-Zettels/Conscious/
│
├── 💡 Theoretical concept or mechanism
│   └── Use: Template_Concept_v2.0 → 03-Zettels/Conscious/
│
├── 👤 Person, lab, or institution
│   └── Use: Template_Entity_v2.0 → 03-Zettels/Conscious/
│
├── 🧩 Atomic knowledge (general zettel)
│   └── Use: Template_Zettel_v2.0 → 03-Zettels/Conscious/
│
├── 📊 Living synthesis (aggregates zettels)
│   └── Use: Template_Synthesis_v1.0 → 04-Synthesis/
│
├── 🗺️ Navigation hub or dashboard
│   └── Use: Template_MOC_v1.0 → 06-Structure/MOCs/
│       Use: Template_Index_v2.0 → 08-Dashboards/
│
├── 📖 Clinic article extraction
│   └── Use: Template_ClinicExtraction_v2.0 → Process → 02-Literature/
│
├── 📄 Zotero import
│   └── Use: Template_ZoteroImport_v2.0 → 01-References/Zotero/
│
├── 📅 Daily journal/log
│   └── Use: Template_DailyNote_v2.0 → 10-Daily/2026/
│
└── ⚡ Quick capture (mobile/raw)
    └── Use: Template_QuickCapture_v2.0 → 00-Inbox/Fleeting/
```

---

## 📚 Core Templates (Production-Ready)

### Knowledge Layer Templates

| Template | Purpose | Output Location | Target Length |
|----------|---------|-----------------|---------------|
| **Template_LitNote_v1.0** | Processed literature notes | `02-Literature/` | 500-1000 words |
| **Template_Synthesis_v1.0** | Living synthesis documents | `04-Synthesis/` | 1000-3000 words |
| **Template_Zettel_v2.0** | Atomic knowledge units | `03-Zettels/Conscious/` | 100-300 words |
| **Template_MOC_v1.0** | Navigation hubs | `06-Structure/MOCs/` | 300-800 words |

### Zettel Type Templates (03-Zettels/Conscious/)

| Template | Purpose | Target Length |
|----------|---------|---------------|
| **Template_Biomarker_v2.0** | Biomarker profiles | 400-700 words |
| **Template_Claim_v2.0** | Single falsifiable claims | 300-600 words |
| **Template_Method_v2.0** | Reproducible protocols | 400-800 words |
| **Template_Protocol_v2.0** | Study designs, trials | 500-1000 words |
| **Template_Gap_v2.0** | Research limitations | 200-400 words |
| **Template_Concept_v2.0** | Theoretical frameworks | 400-800 words |
| **Template_Entity_v2.0** | People, labs, orgs | 200-500 words |

### Capture & Reference Templates

| Template | Purpose | Output Location |
|----------|---------|-----------------|
| **Template_Reference_v2.0** | Bibliographic records | `01-References/Hub/` |
| **Template_ZoteroImport_v2.0** | Zotero integration | `01-References/Zotero/` |
| **Template_ClinicExtraction_v2.0** | Clinic article processing | `02-Literature/` |

## 🔄 Workflow Templates

| Template | Purpose | Output Location |
|----------|---------|-----------------|
| **Template_ClinicExtraction_v2.0** | Clinic article processing | `02-Literature/` |
| **Template_ZoteroImport_v2.0** | Zotero integration | `01-References/Zotero/` |
| **Template_Session_Completion.md** | Session wrap-up | `10-Daily/` or `09-System/Logs/` |

## 📝 Daily Operation Templates

| Template | Purpose | Output Location |
|----------|---------|-----------------|
| **Template_DailyNote_v2.0** | Daily journal, routine | `10-Daily/2026/` |
| **Template_QuickCapture_v2.0** | Mobile/raw capture | `00-Inbox/Fleeting/` |
| **Template_Index_v2.0** | Dashboards, navigation | `08-Dashboards/` |

---

## 🏷️ File Naming Convention (v4.1)

### Knowledge Layer Naming

| Type | Pattern | Example |
|------|---------|---------|
| **Zettel** | `Title_[Z-{DDD}-{SSSS}].md` | `Insulin_Receptor_[Z-001-0001].md` |
| **LitNote** | `Author_Year_Topic_[L-{DDD}-{SSSS}].md` | `GutierrezRodelo_2017_IR_Mechanisms_[L-001-0001].md` |
| **Synthesis** | `Topic_Synthesis_[S-{DDD}-{SSSS}].md` | `Insulin_Signaling_Synthesis_[S-001-0001].md` |
| **MOC** | `MOC-{Topic}.md` | `MOC-Insulin-Signaling.md` |

### UID System v2.0

**Format:** `{T}-{DDD}-{SSSS}`

| Component | Meaning | Example |
|-----------|---------|---------|
| **T** | Type | Z=Zettel, L=LitNote, S=Synthesis, R=Reference |
| **DDD** | Domain | 001=Insulin Signaling, 101=Adipic Acid |
| **SSSS** | Sequence | 0001, 0002, ... |

### Key Rules
- **Title case** with underscores
- **UID in square brackets** at end of filename
- **No datestamps** in filenames (UID handles uniqueness)
- **Kebab-case** for YAML keys: `parent-moc`, `extraction-date`

---

## 🎨 Template Structure Standards

All templates include:

### YAML Frontmatter
```yaml
---
uid: {YYYYMMDD}{HHMM} | {T}-{DDD}-{SSSS}  # Format depends on note type
type: {zettel | lit-note | synthesis | moc | reference | ...}
title: {{Full Title}}
aliases: [{{UID}}, {{ShortSlug}}]
tags: [{{type}}, {{topic}}, {{status}}]
domain: {{DDD}}  # For zettels/synthesis
parent-moc: [[MOC-{{DDD}}]]
status: {conscious | subconscious | stub | evolving | complete}
confidence: {high | medium | low}
extraction-date: {{YYYY-MM-DD}}
---
```

**Critical:** `parent-moc` and `extraction-date` use **kebab-case**

### Body Sections (by type)

**Zettels:**
1. Title with UID
2. Single atomic idea (50-200 words)
3. Key details (bullets/mini-table)
4. Links (2-5 required) — upstream, parallel, downstream
5. Context — parent source, supports

**LitNotes:**
1. Source citation block
2. Core concepts extracted (with quotes)
3. Key figures & data
4. My notes (synthesis, connections, questions)
5. Zettels created list
6. Related references

**Synthesis:**
1. Core definition
2. Source evolution (what each paper added)
3. Extracted zettels table
4. Clinical/practical connections
5. Open questions
6. Updates log

---

## 📊 Extraction Depth by Source (v4.1)

| Source Type | Expected Zettels | Output Location |
|-------------|------------------|-----------------|
| Quote | 1 | `03-Zettels/Conscious/` |
| Post/Social | 2-3 | `03-Zettels/Conscious/` |
| Paper | 10-20 | `03-Zettels/Conscious/` + `02-Literature/` |
| Book | Variable | `03-Zettels/Conscious/` + `02-Literature/` |

### Workflow
```
Source (PubMed/Telegram)
    ↓
00-Inbox/Fleeting/ (capture)
    ↓
01-References/Hub/ (bibliographic)
    ↓
02-Literature/ (process & extract)
    ↓
03-Zettels/Conscious/ (atomic zettel, status: conscious)
    ↓
[30 days + review]
    ↓
03-Zettels/Subconscious/ (promoted, status: subconscious)
    ↓
04-Synthesis/ (aggregated knowledge)
    ↓
06-Structure/MOCs/ (navigation)
```

---

## 🔗 Quick Links

- [[SYSTEM_README-SUMMARY]] — One-page vault reference
- [[08-Dashboards/00-COMMAND]] — Current priorities
- [[06-Structure/Templates/]] — All templates
- [[00-Inbox/Fleeting/]] — Processing queue

---

*Template Guide v2.1*  
*Last updated: 2026-02-23*  
*Total templates: 17 standardized*  
*Vault version: TheOptimizedBrain v4.1*
