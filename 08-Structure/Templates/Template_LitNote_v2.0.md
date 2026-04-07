---
uid: TEMPLATE-LIT-002
type: template
title: Template — LitNote (Unified)
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
uid: {{L-XXX-XXXX}}
type: lit-note
title: Lit — {{Source Title}}
aliases:
  - "{{L-XXX-XXXX}}"
  - "{{Short-Title}}"
authors: "{{Author1, Author2}}"
year: "{{YYYY}}"
journal: "{{Journal}}"
doi: "{{DOI}}"
pmid: "{{PMID}}"
tier: "{{GOLD|SILVER|BRONZE}}"
relevance: "{{Why this matters}}"
status: extracting
parent-moc: "[[MOC-Example]]"  # ⚠️ VERIFY exists
extraction-date: "{{YYYY-MM-DD}}"
zettels-created: {{N}}
reference-count: {{N}}
extraction-quality: "{{GOLD|SILVER|BRONZE}}"
source-inbox: "[[Inbox_{{Title}}_{{YYYY-MM-DD}}]]"  # If applicable
tags:
  - lit-note
  - {{domain-tag}}
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

---

## EXAMPLE: X Post / Social Media Thread

### YAML for X Posts
```yaml
---
uid: L-001-0656
type: lit-note
title: Lit — KingOfVitamins_Pauling_Vitamin_C_2025
source-inbox: "[[INBOX-2026-04-04-002_Pauling_Vitamin_C_Thread]]"
authors: "Vitamin King (@KingOfVitamins)"
year: "2025"
source: "X thread"
url: "https://x.com/kingofvitamins/status/1998757396425093470"
tier: "GOLD"
status: extracting
parent-moc: "[[MOC-Vitamin-Mineral-Axis]]"
extraction-date: "2026-04-04"
---
```

### Source Section for X Posts
```markdown
## Source
- **Full citation:** Vitamin King (@KingOfVitamins) (2025). *Linus Pauling and Vitamin C* [X thread]. https://x.com/kingofvitamins/status/1998757396425093470
- **Engagement:** 1,481 likes, 2,118 bookmarks, 165.9K views
- **Inbox origin:** [[INBOX-2026-04-04-002_Pauling_Vitamin_C_Thread]]
- **Image:** [[2025-12-13_X_DrWilliamWallac_Vitamin_Functions.jpg]]
- **Reference note:** [[KingOfVitamins_2025_R-001-0656]]
```

### Zettel Extraction from Threads
| Thread Depth | Zettel Count | Example |
|--------------|--------------|---------|
| Single image + caption | 1 zettel | Mitochondrial functions diagram |
| 4-6 post thread | 4-8 zettels | Body regeneration timeline |
| 10+ post deep dive | 8-12 zettels | Pauling vitamin C thread |

### X Post Workflow
1. **Browser fetch** — Navigate to X post URL
2. **Image capture** — User sends screenshot (bypasses download limits)
3. **Save immediately** — Copy to `02-References/Assets/Images/`
4. **Create Inbox** — Raw thread content with engagement metrics
5. **Create LitNote** — This template with X-specific fields
6. **Extract zettels** — 1 per major claim/theme
7. **Connect to MOCs** — Link to relevant knowledge domains
