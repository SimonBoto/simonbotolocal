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
source-reference: "[[Author_Year_Title_R-XXX-XXXX]]"  # REQUIRED: Link to canonical Reference note
tier: [GOLD|SILVER|BRONZE]
relevance: "[High/Medium/Low - brief context]"
status: [complete|draft|pending]
parent-moc: [[MOC-Topic]]
parent-index: [[01-Literature-Index]]
extraction-date: "YYYY-MM-DD"

# ANCHOR SYSTEM v5.0 — Connection Tracking
anchors:
  # UP — Source of Extraction (where this LitNote came FROM)
  up:
    source-inbox: "[[INBOX-Source-Name]] #source"
    source-litnote: "[[CGPT_XXXX_Topic_CGPT-XXXX]] #source-lit"
    # NOTE: For CGPT-origin LitNotes, the CGPT is the UP source
    # The academic reference mentioned IN the CGPT goes to SIDEWAYS
  
  # DOWN — Zettel Extractions (what this LitNote produces)
  down:
    zettels:
      - "[[Z-XXX-XXXX_Zettel_Title]] #zettel-1"
      - "[[Z-XXX-XXXX_Zettel_Title]] #zettel-2"
    count: 0
  
  # SIDEWAYS — Supporting References (papers cited WITHIN the source)
  sideways:
    references:
      - "[[Author_Year_Title_R-XXX-XXXX]] #ref-1"
    count: 0
    # NOTE: These are references MENTIONED in the source, not the source itself
    # They provide epistemic force for claims made in the LitNote

zettel-count: 0
reference-count: 0
tags:
  - litnote
  - [topic-tag]
---

# Lit: [Full Title]

## 🔼 Source Anchor (UP — Origin of Extraction)
> **Origin:** [[INBOX-Source-Name]] #source  
> **Conversation:** [[CGPT_XXXX_Topic_CGPT-XXXX]] #source-lit  
> **Date:** [Extraction Date]
>
> *This LitNote was extracted FROM the above source. The reference below is cited WITHIN that source.*

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

## ↔️ Supporting References (SIDEWAYS — Epistemic Force)

These references were **cited within the source material** (above). They provide academic grounding for claims made in this LitNote, but they are NOT the source of extraction.

| Reference | Citation | Claim Supported | Anchor |
|-----------|----------|-----------------|--------|
| [[R-XXX-XXXX]] | [Author Year] | [What this reference supports] | #ref-1 |

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
- [x] Source-reference in YAML — Links to canonical Reference note?
- [x] Source-reference in BODY — Obsidian graph connection exists?
- [x] QMD duplicate check completed — In vault
- [ ] RON review pending — ALWAYS leave unchecked

---

*L-XXX-XXXX | Created: YYYY-MM-DD | Tier: [GOLD/SILVER/BRONZE] | Anchors: UP ✓ DOWN ✓ SIDEWAYS ✓*
