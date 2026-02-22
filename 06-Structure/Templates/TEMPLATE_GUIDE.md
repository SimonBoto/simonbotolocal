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
├── 📚 Literature source
│   └── Use: Template_Reference_v2.0 → 66-Literature/Refs/
│
├── 🔬 Single biomarker (cutoffs, methods, associations)
│   └── Use: Template_Biomarker_v2.0 → 02-Atomic/
│
├── 📢 Single falsifiable claim
│   └── Use: Template_Claim_v2.0 → 02-Atomic/
│
├── ⚙️ Reproducible procedure/protocol
│   └── Use: Template_Method_v2.0 → 02-Atomic/
│
├── 📋 Study design or clinical trial
│   └── Use: Template_Protocol_v2.0 → 02-Atomic/
│
├── ❓ Research gap or limitation
│   └── Use: Template_Gap_v2.0 → 02-Atomic/
│
├── 💡 Theoretical concept or mechanism
│   └── Use: Template_Concept_v2.0 → 02-Atomic/
│
├── 👤 Person, lab, or institution
│   └── Use: Template_Entity_v2.0 → 02-Atomic/
│
├── 🗺️ Navigation hub or dashboard
│   └── Use: Template_Index_v2.0 → 22-Dashboards/ or 55-MOCs/
│
├── 📖 Clinic article extraction
│   └── Use: Template_ClinicExtraction_v2.0 → Process → 66-Literature/
│
├── 📄 Zotero import
│   └── Use: Template_ZoteroImport_v2.0 → 66-Literature/Zotero/
│
├── 📅 Daily journal/log
│   └── Use: Template_DailyNote_v2.0 → DAILY/ or 00-Inbox/
│
└── ⚡ Quick capture (mobile/raw)
    └── Use: Template_QuickCapture_v2.0 → 00-Inbox/
```

---

## 📚 Core Atomic Templates (Production-Ready)

| Template | Purpose | Output Location | Target Length |
|----------|---------|-----------------|---------------|
| **Template_Reference_v2.0** | Complete literature capture | `66-Literature/Refs/` | 300-600 words |
| **Template_Biomarker_v2.0** | Biomarker profiles | `02-Atomic/` | 400-700 words |
| **Template_Claim_v2.0** | Single falsifiable claims | `02-Atomic/` | 300-600 words |
| **Template_Method_v2.0** | Reproducible protocols | `02-Atomic/` | 400-800 words |
| **Template_Protocol_v2.0** | Study designs, trials | `02-Atomic/` | 500-1000 words |
| **Template_Gap_v2.0** | Research limitations | `02-Atomic/` | 200-400 words |
| **Template_Concept_v2.0** | Theoretical frameworks | `02-Atomic/` | 400-800 words |
| **Template_Entity_v2.0** | People, labs, orgs | `02-Atomic/` | 200-500 words |
| **Template_Index_v2.0** | Dashboards, MOCs | `22-Dashboards/` or `55-MOCs/` | 300-600 words |

## 🔄 Workflow Templates

| Template | Purpose | Output Location |
|----------|---------|-----------------|
| **Template_ClinicExtraction_v2.0** | Clinic article processing | `66-Literature/` |
| **Template_ZoteroImport_v2.0** | Zotero integration | `66-Literature/Zotero/` |

## 📝 Daily Operation Templates

| Template | Purpose | Output Location |
|----------|---------|-----------------|
| **Template_DailyNote_v2.0** | Daily journal, routine | `DAILY/` or `00-Inbox/` |
| **Template_QuickCapture_v2.0** | Mobile/raw capture | `00-Inbox/` |

---

## 🏷️ File Naming Convention

All atomic notes follow:
```
TIER_TOPIC_DETAIL_YYYYMMDD_XXX_000000.md
```

| Tier | Use For | Example |
|------|---------|---------|
| `REF_` | Reference notes | `REF_Hoban_Microbiota_20260216_001_000001.md` |
| `BIOMARKER_` | Biomarker profiles | `BIOMARKER_ADIPIC_CUTOFFS_20260215_027_000004.md` |
| `CLAIM_` | Falsifiable claims | `CLAIM_METS_EARLY_DETECT_20260219_001_000043.md` |
| `METHOD_` | Protocols | `METHOD_GC_MS_PROTOCOL_20260219_003_000120.md` |
| `PROTOCOL_` | Study designs | `PROTOCOL_UOC_STUDY_DESIGN_20260219_004_000168.md` |
| `GAP_` | Research gaps | `GAP_HOMA_HBA1C_EARLY_20260219_005_000070.md` |
| `CONCEPT_` | Theoretical frameworks | `CONCEPT_PLASMA_FFA_LIPOTOXICITY_20260219_006_000048.md` |
| `ENTITY_` | People, labs | `ENTITY_SUPERVISOR_TSATSAKIS_20260219_007_000060.md` |
| `INDEX_` | Dashboards | `INDEX_PHD_IR_MOC_20260215_008_000135.md` |
| `MOC_` | Navigation hubs | `MOC_BIOMARKERS_20260215_009_000136.md` |

### Key Rules
- **ALL CAPS** for tier
- **Underscore** separators
- **Datestamp** required: `YYYYMMDD`
- **Sequence**: `XXX` (001-999)
- **UID**: `000000` (6 digits)
- **No redundant prefixes** (e.g., no `ATOMIC_` in `02-Atomic/`)

---

## 🎨 Template Structure Standards

All templates include:

### YAML Frontmatter
```yaml
---
uid: {{date:YYYYMMDD}}{{time:HHmmSS}}
type: {reference | atomic | gap | concept | entity | index}
title: {{Full Title}}
aliases: [{{ShortSlug}}]
tags: [{{type}}, {{topic}}, phd]
parent-moc: [[55-MOCs/{{MOC}}]]
status: {{status}}
confidence: {{high | medium | low}}
extraction-date: {{YYYY-MM-DD}}
---
```

**Critical:** `parent-moc` and `extraction-date` use **kebab-case**

### Body Sections
1. **Title/Header**
2. **TL;DR** (3-5 bullets)
3. **Key Sections** (structured content)
4. **Quotes** (if applicable)
5. **Connections** (wikilinks)
6. **Tags/Metadata**

---

## 📊 Extraction Depth by Source

| Source Type | Expected Atomics | UID Range |
|-------------|------------------|-----------|
| Quote | 1 | 000001-099999 |
| Post | 2-3 | 100000-199999 |
| Paper | 10-20 | 200000-299999 |
| Book | Variable | 300000+ |

---

## 🔗 Quick Links

- [[Start_Here]] — Vault entry point
- [[Daily_Triage]] — Daily operations
- [[11-Templates/]] — All templates folder
- [[00-Inbox]] — Processing queue

---

*Template Guide v2.0*  
*Last updated: 2026-02-21*  
*Total templates: 13 standardized*
