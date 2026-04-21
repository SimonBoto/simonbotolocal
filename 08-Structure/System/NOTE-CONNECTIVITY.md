---
uid: SYS-NOTE-CONN-001
type: system
title: "Note Connectivity — Granular Relationship Tracking"
date: 2026-04-21
---

# Note Connectivity — GitHub-Style Relationship Tracking

> **Every note shows its full lineage: parents, children, siblings**

---

## Example: Complete Note Lineage

```
INBOX-Article-45-Modifiable.md
│
├── creates ──► Five_Pillars_Metabolic_Health_L-001-0584_v4.0.md
│   │
│   ├── extracts ──► Metabolic_Health_Pillar_Stress_Z-001-0584D.md
│   │   ├── relates ──► Cortisol_Regulation_Z-001-XXXX.md
│   │   └── relates ──► Mitochondrial_Stress_Z-001-XXXX.md
│   │
│   ├── extracts ──► Metabolic_Health_Pillar_Sleep_Z-001-0584C.md
│   │   └── relates ──► Circadian_Rhythm_Z-001-XXXX.md
│   │
│   ├── extracts ──► Metabolic_Health_Pillar_Nutrition_Z-001-0584A.md
│   │
│   ├── references ──► Steffen_2023_Artificial_Sweeteners_R-002-0041.md
│   │
│   └── synthesizes ──► Stress_Metabolic_Impact_Synthesis_S-001-0020.md
│       │
│       ├── derives ──► X_Post_First_Synthesis_S-001-0021.md
│       └── derives ──► Clinical_Protocol_Stress_Management.md
│
└── also_creates ──► Another_LitNote_L-001-XXXX.md
```

---

## Relationship Types

| Relationship | Direction | Meaning |
|--------------|-----------|---------|
| `creates` | Inbox → LitNote | Inbox item processed into LitNote |
| `extracts` | LitNote → Zettel | Zettels created from LitNote |
| `references` | Any → Reference | Cites external source |
| `synthesizes` | Zettels → Synthesis | Multiple zettels integrated |
| `derives` | Synthesis → Output | Real work product created |
| `relates` | Peer → Peer | Connected concepts |
| `parent_of` | MOC → Note | Navigation hierarchy |

---

## YAML Implementation

### Inbox Item
```yaml
---
uid: INBOX-045
type: inbox-item
title: "Modifiable Risk Factors Article"
creates:
  - [[Five_Pillars_Metabolic_Health_L-001-0584_v4.0]]
status: processed
---
```

### LitNote
```yaml
---
uid: L-001-0584
type: litnote
title: "Five Pillars of Metabolic Health"
source-inbox: [[INBOX-Article-45-Modifiable]]
extracts:
  - [[Metabolic_Health_Pillar_Stress_Z-001-0584D]]
  - [[Metabolic_Health_Pillar_Sleep_Z-001-0584C]]
  - [[Metabolic_Health_Pillar_Nutrition_Z-001-0584A]]
references:
  - [[Steffen_2023_Artificial_Sweeteners_R-002-0041]]
synthesizes:
  - [[Stress_Metabolic_Impact_Synthesis_S-001-0020]]
---
```

### Zettel
```yaml
---
uid: Z-001-0584D
type: zettel
title: "Metabolic Health Pillar: Stress"
source-litnote: [[Five_Pillars_Metabolic_Health_L-001-0584_v4.0]]
relates:
  - [[Cortisol_Regulation_Z-001-XXXX]]
  - [[Mitochondrial_Stress_Z-001-XXXX]]
part_of_synthesis:
  - [[Stress_Metabolic_Impact_Synthesis_S-001-0020]]
---
```

### Synthesis
```yaml
---
uid: S-001-0020
type: synthesis
title: "Stress-Metabolic Impact Synthesis"
source-zettels:
  - [[Metabolic_Health_Pillar_Stress_Z-001-0584D]]
  - [[Cortisol_Mechanism_Z-001-XXXX]]
  - [[Mitochondrial_Dysfunction_Z-001-XXXX]]
derives:
  - [[X_Post_First_Synthesis_S-001-0021]]
  - [[Clinical_Protocol_Stress_Management]]
---
```

### Output (X Post)
```yaml
---
uid: X-001-0021
type: x-post
title: "X Post: Hidden Metabolic Pillar"
source-synthesis: [[Stress_Metabolic_Impact_Synthesis_S-001-0020]]
platform: X
status: published
---
```

---

## Visual Graph Representation

### In Obsidian
Use `dataview` or custom CSS to show:

```
┌─────────────────────────────────────┐
│ THIS NOTE: Z-001-0584D              │
│ "Metabolic Health Pillar: Stress"   │
├─────────────────────────────────────┤
│ PARENT:                             │
│   └─ L-001-0584 (LitNote)           │
├─────────────────────────────────────┤
│ CHILDREN:                           │
│   (none — atomic zettel)            │
├─────────────────────────────────────┤
│ SIBLINGS:                           │
│   ├─ Z-001-0584C (Sleep)            │
│   ├─ Z-001-0584A (Nutrition)        │
│   └─ Z-001-0584B (Exercise)         │
├─────────────────────────────────────┤
│ SYNTHESIS:                          │
│   └─ S-001-0020 (Stress-Metabolic)  │
└─────────────────────────────────────┘
```

---

## Query Examples

### "Show me everything from INBOX-045"
```dataview
TABLE type, title
FROM [[INBOX-Article-45-Modifiable]]
OR source-inbox = [[INBOX-Article-45-Modifiable]]
SORT type
```

### "What syntheses use this zettel?"
```dataview
TABLE title, confidence
FROM [[Z-001-0584D]]
WHERE type = synthesis
```

### "What outputs came from this LitNote?"
```dataview
TABLE title, platform, status
FROM [[L-001-0584]]
WHERE type = x-post OR type = clinical-protocol
```

---

## Backwards Compatibility

Existing notes without connectivity YAML:
- Still functional
- Gradually add relationships during review
- Priority: Active projects > Archive

---

*Every note knows its family tree.*
