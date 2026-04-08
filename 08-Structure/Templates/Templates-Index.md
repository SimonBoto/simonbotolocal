---
uid: IDX-TEMPLATES
type: index
title: Templates Index
date: 2026-04-08
tags:
  - index
  - templates
  - standards
parent-moc: [[08-Structure-Index]]
parent-index: [[08-Structure-Index]]
---

# Templates Index

> **Standardized note templates — one canonical template per note type**

---

## Core Workflow Templates (Canonical)

| Template | Use | Version |
|----------|-----|---------|
| **Template_Inbox.md** | **Adaptive inbox — size determines path** | **v3.0** |
| Template_Inbox_Fleeting_v1.0.md | Quick capture (Luhmann-style, 48h rule) | v1.0 |
| **Template_LitNote.md** | **Processed sources (canonical)** | **v4.0** |
| **Template_Zettel.md** | **Atomic knowledge (canonical)** | **v4.0** |
| **Template_Daily.md** | **Date-stamped daily logs** | **v2.0** |

## Reference Template (Canonical)

| Template | Use | When to Use |
|----------|-----|-------------|
| **Template_Reference.md** | **Canonical bibliographic record** | **All formal references with complete identifiers** |

## Supporting Templates

| Template | Use | Version |
|----------|-----|---------|
| Template_MOC.md | Maps of Content | v2.0 |
| Template_Synthesis.md | Living documents | v2.0 |

## Domain-Specific Templates

| Template | Use | Version |
|----------|-----|---------|
| Template_Biomarker_Deep_Dive_v1.0.md | Lab interpretation | v1.0 |
| Template_Supplement_v1.0.md | Product catalog | v1.0 |

## Template Consolidation History

- **v1.0–v3.0 variants** — Consolidated into canonical versions (2026-04-08)
- **Canonical system** — One template per note type, no version numbers in filenames

**Archive folder:** `08-Structure/Templates/Archive/` — Previous versions preserved for reference

---

## Workflow Decision Tree

```
Input
  ├── Single atomic idea → Template_Zettel.md (direct)
  ├── Quick capture → Template_Inbox_Fleeting_v1.0.md
  └── Source material → Template_Inbox.md
       ├── Article/Review → Template_LitNote.md
       ├── Book/Chapter → Template_LitNote.md (split per chapter)
       └── Conversation → Template_Zettel.md (direct)
```

---

## Connection to Vault

- Up: [[08-Structure-Index]]
- Related: [[Protocols-Index]], [[03-Zettels-Conscious]]

---

*Templates — the mold that shapes the vault.*
