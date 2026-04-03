---
uid: TEMPLATE-LIT-002
type: template
title: "Template — LitNote (Unified)"
description: "Single LitNote template for all source types"
version: "2.0"
---

<!--
PRE-FLIGHT CHECKLIST:
- [ ] parent-moc exists: ls 08-Structure/MOCs/MOC-*.md
- [ ] source-inbox linked (if applicable)
- [ ] All [[links]] have closing ]]
- [ ] No bare UIDs: [[Z-001-0001]] → [[Title_Z-001-0001]]
-->

---
uid: "{{L-XXX-XXXX}}"
type: lit-note
title: "Lit — {{Source Title}}"
source-inbox: "[[Inbox_{{Title}}_{{YYYY-MM-DD}}]]"  # If applicable
authors: "{{Author1, Author2}}"
year: "{{YYYY}}"
journal: "{{Journal}}"
doi: "{{DOI}}"
pmid: "{{PMID}}"
tier: "{{GOLD|SILVER|BRONZE}}"
status: extracting
parent-moc: "[[MOC-Example]]"  # ⚠️ VERIFY exists
extraction-date: "{{YYYY-MM-DD}}"
---

# Lit: {{Source Title}}

## Source
- **Full citation:** {{Author}} ({{Year}}). *{{Title}}*. {{Journal}}. {{DOI}}
- **Inbox origin:** [[Inbox_{{Title}}_{{YYYY-MM-DD}}]] (if applicable)
- **Reference note:** [[{{Author}}_{{Year}}_R-XXX-XXXX]]

## Core Claim
{{One sentence — what does this source establish?}}

---

## Zettels Extracted

### 1. {{Zettel Title}}
- **Claim:** {{Atomic statement}}
- **Evidence:** {{Quote from source}}
- **Reference:** [[{{Author}}_{{Year}}_R-XXX-XXXX]] — cited as ({{Author, Year}})
- **Zettel:** [[{{Zettel_Title}}_{{Z-XXX-XXXX}}]]

### 2. {{Zettel Title}}
- **Claim:** {{Atomic statement}}
- **Evidence:** {{Quote from source}}
- **Reference:** [[{{Author}}_{{Year}}_R-XXX-XXXX]] — cited as ({{Author, Year}})
- **Zettel:** [[{{Zettel_Title}}_{{Z-XXX-XXXX}}]]

### 3. {{Zettel Title}}
- **Claim:** {{Atomic statement}}
- **Evidence:** {{Quote from source}}
- **Reference:** [[{{Author}}_{{Year}}_R-XXX-XXXX]] — cited as ({{Author, Year}})
- **Zettel:** [[{{Zettel_Title}}_{{Z-XXX-XXXX}}]]

---

## References Used

| Reference | Zettels | Times Cited |
|-----------|---------|-------------|
| `{{Author}}_{{Year}}_R-XXX-XXXX` | Zettel 1, Zettel 2 | 2 |

---

## Snowball References (New Inputs)

| Reference | Why Follow Up | Priority | Status |
|-----------|---------------|----------|--------|
| [[{{Ref1_Author}}_{{Year}}_R-XXX-XXXX]] | {{Promise}} | {{P0|P1|P2}} | {{pending|inbox|processing}} |

---

## Structural Links
- **Up:** [[MOC-Example]] — Thematic domain (⚠️ VERIFY exists)
- **Inbox:** [[Inbox_{{Title}}_{{YYYY-MM-DD}}]] — Raw origin (if applicable)
- **Index:** [[01-Literature]] — Container

---

## Status
- [ ] All zettels created
- [ ] All reference notes created
- [ ] In-text citations verified
- [ ] Reference-zettel links functional
- [ ] Snowball references queued

---
*L-XXX-XXXX | Created: {{YYYY-MM-DD}} | Tier: {{GOLD/SILVER/BRONZE}}*
