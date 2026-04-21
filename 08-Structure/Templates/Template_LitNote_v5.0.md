---
uid: L-XXX-XXXX
type: litnote
title: "Lit - [Title]"
aliases:
  - L-XXX-XXXX
source-origin: [chatgpt-archive|academic-course|unknown]
authors: "[Author et al.]"
year: "YYYY"
journal: "[Journal Name]"
doi: "[DOI or N/A]"
pmid: "[PMID or N/A]"
pmcid: "[PMCID or N/A]"
tier: [GOLD|SILVER|BRONZE]
relevance: "[High/Medium/Low - brief context]"
status: [complete|draft|pending]
parent-moc: [[MOC-Topic]]
parent-index: [[01-Literature-Index]]
extraction-date: "YYYY-MM-DD"

# ANCHOR SYSTEM v5.0 — Connection Tracking
anchors:
  # UP — Source Connection
  up:
    source-inbox: "[[INBOX-Source-Name]] #source"
    source-litnote: "[[CGPT_XXXX_Topic_CGPT-XXXX]] #source-lit"
  
  # DOWN — Zettel Extractions
  down:
    zettels:
      - "[[Z-XXX-XXXX_Zettel_Title]] #zettel-1"
      - "[[Z-XXX-XXXX_Zettel_Title]] #zettel-2"
    count: 0
  
  # SIDEWAYS — Reference Citations
  sideways:
    references:
      - "[[Author_Year_Title_R-XXX-XXXX]] #ref-1"
    count: 0

zettel-count: 0
reference-count: 0
tags:
  - litnote
  - [topic-tag]
---

# Lit: [Full Title]

## 🔼 Source Anchor
> **Origin:** [[INBOX-Source-Name]] #source  
> **Conversation:** [[CGPT_XXXX_Topic_CGPT-XXXX]] #source-lit  
> **Date:** [Extraction Date]

---

## Core Claim
> [One-sentence synthesis of the source's main contribution]

---

## Core Concepts Extracted

### 1. [Concept Title]

**Category:** [Category]

**Key Process:**
```
[Process description]
```

**Mechanism/Steps:**
1. [Step 1]
2. [Step 2]
3. [Step 3]

**Purpose/Significance:** [Why this matters]

**Zettel:** [[Z-XXX-XXXX_Zettel_Title]] #zettel-1

---

### 2. [Concept Title]

[Same structure...]

**Zettel:** [[Z-XXX-XXXX_Zettel_Title]] #zettel-2

---

## 🔽 Zettels Extracted

| Zettel | Title | Anchor |
|--------|-------|--------|
| [[Z-XXX-XXXX]] | [Zettel Title] | #zettel-1 |
| [[Z-XXX-XXXX]] | [Zettel Title] | #zettel-2 |

**Total zettels:** [N] | **Anchor tag:** #zettels-down

---

## ↔️ References

| Reference | Citation | Anchor |
|-----------|----------|--------|
| [[R-XXX-XXXX]] | [Author Year] | #ref-1 |

**Total references:** [N] | **Anchor tag:** #references-side

---

## Connections
- **MOC:** [[MOC-Topic]] — Thematic domain
- **Index:** [[01-Literature-Index]] — Container
- **Related:** [[Related_LitNote_L-XXX-XXXX]] — Similar topic

---

## Status Checklist

- [x] Source read completely — ## Source section with content?
- [x] YAML standardized — uid, type, title, tags, parent-moc present?
- [x] Anchors configured — UP, DOWN, SIDEWAYS links established?
- [x] Core claim articulated — One-sentence core claim exists?
- [x] Core concepts numbered — Concepts numbered 1, 2, 3...?
- [x] Zettel anchors linked — Each concept has #zettel-N?
- [x] Reference anchors linked — Each citation has #ref-N?
- [x] QMD duplicate check completed — In vault
- [ ] RON review pending — ALWAYS leave unchecked

---

*L-XXX-XXXX | Created: YYYY-MM-DD | Tier: [GOLD/SILVER/BRONZE] | Anchors: UP ✓ DOWN ✓ SIDEWAYS ✓*
