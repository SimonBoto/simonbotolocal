---
aliases: [Template-Index, Template-Guide, Which-Template-When]
tags: [template, index, meta, reference]
version: 2.0
---

# Template Index v2.0

**Which template to use when.**

Last updated: 2026-02-20

---

## Quick Decision Tree

```
What are you creating?
│
├── 📚 Literature source
│   └── Use: Reference Note v2.0 → 66-Literature/Refs/
│
├── 🔬 Single biomarker (cutoffs, methods, associations)
│   └── Use: Biomarker Atomic v2.0 → 02-Atomic/
│
├── 📢 Single falsifiable claim
│   └── Use: Claim Atomic v2.0 → 02-Atomic/
│
├── ⚙️ Reproducible procedure/protocol
│   └── Use: Method Atomic v2.0 → 02-Atomic/
│
├── 📋 Study design or clinical trial
│   └── Use: Protocol Atomic v2.0 → 02-Atomic/
│
├── ❓ Research gap or limitation
│   └── Use: Gap Note v2.0 → 02-Atomic/
│
├── 💡 Theoretical concept or mechanism
│   └── Use: Concept Note v2.0 → 02-Atomic/
│
├── 👤 Person, lab, or institution
│   └── Use: Entity Note v2.0 → 02-Atomic/
│
└── 🗺️ Navigation hub or dashboard
    └── Use: Index Note v2.0 → 22-Dashboards/ or 55-MOCs/
```

---

## Template Library

### 🥇 Core Atomic Templates (Production-Ready)

| Template | Purpose | Output Location | Target Length |
|----------|---------|-----------------|---------------|
| **Reference Note v2.0** | Complete literature capture | `66-Literature/Refs/` | 300-600 words |
| **Biomarker Atomic v2.0** | Biomarker profiles | `02-Atomic/` | 400-700 words |
| **Claim Atomic v2.0** | Single falsifiable claims | `02-Atomic/` | 300-600 words |
| **Method Atomic v2.0** | Reproducible protocols | `02-Atomic/` | 400-800 words |
| **Protocol Atomic v2.0** | Study designs, trials | `02-Atomic/` | 500-1000 words |
| **Gap Note v2.0** | Research limitations | `02-Atomic/` | 200-400 words |
| **Concept Note v2.0** | Theoretical frameworks | `02-Atomic/` | 400-800 words |
| **Entity Note v2.0** | People, labs, orgs | `02-Atomic/` | 200-500 words |
| **Index Note v2.0** | Dashboards, MOCs | `22-Dashboards/` or `55-MOCs/` | 300-600 words |

### 📁 File Naming Convention

All templates follow:
```
TIER_TOPIC_DETAIL_YYYYMMDD_XXX_000000.md
```

| Tier | Example |
|------|---------|
| `REF` | Reference notes |
| `BIOMARKER` | Biomarker profiles |
| `CLAIM` | Falsifiable claims |
| `METHOD` | Protocols, procedures |
| `PROTOCOL` | Study designs |
| `GAP` | Research gaps |
| `CONCEPT` | Theoretical frameworks |
| `ENTITY` | People, labs |
| `INDEX` / `MOC` | Navigation hubs |

---

## YAML Field Standard

All v2.0 templates use **consistent YAML**:

```yaml
---
uid: {{YYYYMMDD}}{{HHMMSS}}
type: {{reference | atomic | gap | concept | entity | index}}
title: {{Full Title}}
aliases: [{{ShortSlug}}]
tags: [{{type}}, {{topic}}, phd]
parent-moc: [[55-MOCs/{{MOC}}]]
status: {{status}}
confidence: {{high | medium | low}}
source: [[{{Source}}]]
extraction-date: {{YYYY-MM-DD}}
---
```

**Critical consistency:**
- `parent-moc` (kebab-case, not `parent_moc` or `parentMOC`)
- `extraction-date` (kebab-case)
- `YYYY-MM-DD` format for dates

---

## Deprecated Templates (Archived)

The following have been moved to `77-Archive/Templates/`:

| Old Template | Replaced By | Reason |
|--------------|-------------|--------|
| `atomic-note-template.md` | All v2.0 atomics | Too minimal |
| `Template_Biomarker_20260215_110.md` | Biomarker v2.0 | Superseded |
| `Template_PhD_Note_116/120.md` | Reference v2.0 | Duplicates, minimal |
| `Template_Zettel_117.md` | Claim v2.0 | Superseded |
| `Template_Naming_115.md` | NAMING_BASE_RON_v4 | Consolidated |
| `Template_MOC_114.md` | Index v2.0 | Superseded |
| `Template_Lit_Note_113.md` | Reference v2.0 | Superseded |
| `Template_Atomic_ClinicLit` | Reference v2.0 | Too minimal |

---

## Migration Guide

### From Old Notes to v2.0

1. **Check current template** against this index
2. **Copy v2.0 YAML** frontmatter
3. **Map old fields** to new standard (parent-moc, extraction-date)
4. **Add missing sections** per v2.0 structure
5. **Update RON Ledger**
6. **Validate** links still work

### Batch Migration Priority

1. **Refs** (66-Literature/Refs/) → Reference v2.0
2. **Atomics** (02-Atomic/) → appropriate v2.0 by content type
3. **MOCs** (55-MOCs/) → Index v2.0

---

## Quality Gates

Before marking any note as "complete":

- [ ] YAML complete and valid
- [ ] Filename follows convention
- [ ] All required sections present
- [ ] Links validated (no orphans)
- [ ] RON Ledger filled
- [ ] Confidence level justified

---

## RON Ledger (This Index)

- **Templates archived:** 13
- **Templates created:** 5 (Reference, Gap, Concept, Entity, Index)
- **Templates finalized:** 9 (4 existing + 5 new)
- **Time to complete:** 45 minutes
- **Next:** Apply Reference v2.0 to 66-Literature/Refs/ extraction

---

*Template Index v2.0 | The single source of template truth*
