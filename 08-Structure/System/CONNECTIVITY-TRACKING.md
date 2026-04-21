---
uid: SYS-CONNECTIVITY-001
type: system
title: "Connectivity Tracking System"
date: 2026-04-21
tags: [system, connectivity, workflow, tracking]
status: active
---

# Connectivity Tracking System

> **Track the flow: Inbox → LitNotes → Zettels → Synthesis → Real Work**

---

## The Pipeline

```
┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐    ┌─────────┐
│  INBOX  │ →  │ LITNOTES│ →  │ ZETTELS │ →  │SYNTHESIS│ →  │REAL WORK│
│(Capture)│    │(Process)│    │(Atomic) │    │(Integrate)│   │(Output) │
└─────────┘    └─────────┘    └─────────┘    └─────────┘    └─────────┘
     │              │              │              │              │
     ▼              ▼              ▼              ▼              ▼
  Fleeting      Structured    Connected     Actionable    Published/
  Notes         Knowledge     Knowledge     Knowledge     Clinical/
                                              Applied       Social
```

---

## Stage 1: INBOX → LitNotes

### Tracking
| Metric | How | Target |
|--------|-----|--------|
| Inbox items | `ls 00-Inbox/Fleeting/ | wc -l` | <50 pending |
| Processing rate | Daily LitNotes created | 5-10/day |
| Backlog age | Oldest inbox file | <30 days |

### YAML Fields
```yaml
source-inbox: "[[INBOX-Article-XXX]]"
extraction-date: YYYY-MM-DD
status: processed|pending|archived
```

### MOC
[[MOC-Inbox-Processing]] — Track inbox → LitNote flow

---

## Stage 2: LitNotes → Zettels

### Tracking
| Metric | How | Target |
|--------|-----|--------|
| Zettels per LitNote | zettel-count field | 3-5 avg |
| Extraction rate | Zettels created/week | 50-100 |
| Phantom links | audit-reports/ | <1% |

### YAML Fields (LitNote)
```yaml
zettels-created:
  - [[Zettel_Title_Z-XXX-XXXX]]
  - [[Zettel_Title_Z-XXX-XXXX]]
status: extracted|partial|pending
```

### YAML Fields (Zettel)
```yaml
source-litnote: "[[LitNote_Title_L-XXX-XXXX]]"
extraction-date: YYYY-MM-DD
parent-moc: "[[MOC-Topic]]"
```

### Anchor System
All LitNotes have:
- **UP:** Source (Inbox)
- **DOWN:** Zettels extracted
- **SIDEWAYS:** References

---

## Stage 3: Zettels → Synthesis

### Tracking
| Metric | How | Target |
|--------|-----|--------|
| Synthesis coverage | Zettels in synthesis / Total | 20% |
| Synthesis freshness | Last updated | <30 days |
| Confidence | synthesis confidence field | medium+ |

### YAML Fields (Synthesis)
```yaml
source-zettels:
  - [[Zettel_Title_Z-XXX-XXXX]]
  - [[Zettel_Title_Z-XXX-XXXX]]
confidence: low|medium|high
status: draft|active|stable
updated: YYYY-MM-DD
```

### Bidirectional Links
- Zettel → "Related Syntheses" section
- Synthesis → "Evidence Base" section

---

## Stage 4: Synthesis → Real Work

### Real Work Types
| Type | Output | Tracking |
|------|--------|----------|
| **Clinical** | Patient protocols | 07-Projects/Clinic/ |
| **X Posts** | Social threads | 04-Synthesis/X_*.md |
| **PhD** | Papers, thesis | 07-Projects/PhD/ |
| **Newsletter** | Deep articles | (future) |
| **Video** | YouTube scripts | (future) |

### YAML Fields (Real Work)
```yaml
source-synthesis:
  - [[Synthesis_Title_S-XXX-XXXX]]
impact: clinical|social|academic
status: draft|published|applied
```

---

## Dashboard: CONNECTIVITY-METRICS.md

Auto-generated daily:

```markdown
# Connectivity Metrics — 2026-04-21

## Flow Rates
| Stage | Count | Rate | Health |
|-------|-------|------|--------|
| Inbox → LitNote | 45 pending | 5/day | 🟡 |
| LitNote → Zettel | 1,630 zettels | 50/week | 🟢 |
| Zettel → Synthesis | 32 syntheses | 2/week | 🟢 |
| Synthesis → Output | 6 projects | 1/week | 🟢 |

## Blockages
- 45 inbox items >30 days old
- 12 LitNotes with 0 zettels
- 3 syntheses stale >60 days

## Action Items
- [ ] Process old inbox (Issue-014)
- [ ] Extract zettels from zero-zettel LitNotes (Issue-015)
```

---

## Automation

### Daily (FORG)
- Scan connectivity gaps
- Update CONNECTIVITY-METRICS.md
- Flag blockages

### Weekly (RON)
- Review metrics
- Adjust priorities
- Update Issue statuses

---

## Visualization

### Obsidian Graph View
- Color by stage: Inbox (red) → LitNote (orange) → Zettel (yellow) → Synthesis (green) → Output (blue)
- Size by connectivity (more links = larger)

### MOC Hierarchy
```
MOC-Connectivity (this file)
├── MOC-Inbox-Processing
├── MOC-LitNote-Extraction
├── MOC-Zettel-Network
├── MOC-Synthesis-Integration
└── MOC-Real-Work-Output
```

---

## Success Metrics

| Metric | Target | Current |
|--------|--------|---------|
| Inbox zero | <10 pending | 45 🟡 |
| LitNote coverage | 100% with zettels | 95% 🟢 |
| Zettel synthesis | 20% in synthesis | 2% 🟡 |
| Synthesis applied | 50% → real work | 20% 🟡 |

---

*Track the flow. Clear the blockages. Compound the value.*
