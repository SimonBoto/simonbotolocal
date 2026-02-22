# INTAKE QUEUE — Unprocessed Inputs

> **Unified entry point for all Triangle Company inputs.**
> 
> *Sources: Telegram | Inbox | Web UI | Dashboard*

**Last Updated:** 2026-02-22 16:05:00  
**Total Pending:** 0  
**Classification Engine:** Hybrid (Keywords + Source)

---

## 🔴 URGENT (Process Immediately)

*Inputs with "URGENT:" prefix or manual flag.*

| Time | Source | Input | Classification | Status | Assigned |
|------|--------|-------|----------------|--------|----------|
| *None pending* | | | | | |

---

## 📥 NEW ARRIVALS (Last 24h)

*Recent inputs awaiting classification or processing.*

| Time | Source | Input | Classification | Status | Assigned |
|------|--------|-------|----------------|--------|----------|
| *None pending* | | | | | |

---

## 🔄 IN PROCESS

*Currently being handled by agents.*

| Time | Source | Input | Assigned | Started | ETA |
|------|--------|-------|----------|---------|-----|
| *None active* | | | | | |

---

## ✅ COMPLETED (Last 24h)

*Recently finished items.*

| Time | Source | Input | Result | Output |
|------|--------|-------|--------|--------|
| *None completed* | | | | |

---

## 📊 INTAKE METRICS

| Metric | Today | This Week |
|--------|-------|-----------|
| **Total Inputs** | 0 | 0 |
| **By Source:** | | |
| ├─ Telegram | 0 | 0 |
| ├─ Inbox | 0 | 0 |
| ├─ Web UI | 0 | 0 |
| └─ Dashboard | 0 | 0 |
| **By Classification:** | | |
| ├─ URGENT | 0 | 0 |
| ├─ P0 Command | 0 | 0 |
| ├─ P1 Command | 0 | 0 |
| ├─ P2 Command | 0 | 0 |
| ├─ Question | 0 | 0 |
| ├─ Extraction | 0 | 0 |
| └─ Draft | 0 | 0 |
| **Avg Processing Time** | — | — |

---

## 🎯 CLASSIFICATION RULES

### Keyword Detection (Highest Priority)

| Keyword | Classification | Route To |
|---------|----------------|----------|
| `URGENT:` or `🛑` | URGENT | Immediate RON attention |
| `P0:` | P0 Command | 00-COMMAND.md P0 section |
| `P1:` | P1 Command | 00-COMMAND.md P1 section |
| `P2:` | P2 Command | 00-COMMAND.md P2 section |
| `QUESTION:` | Question | 02-HANDOFF.md |
| `EXTRACT:` or `EXTRACT PMID` | Extraction | GROQ queue |
| `DRAFT:` | Draft | RON drafting queue |

### Source Defaults (If No Keywords)

| Source | Default Classification | Default Route |
|--------|------------------------|---------------|
| **Telegram** | CHAT | Conversation unless keywords |
| **Inbox (file drop)** | EXTRACTION | Auto-queue for extraction |
| **Dashboard Form** | COMMAND | Structured P0/P1/P2 |
| **Web UI** | CONVERSATION | Direct chat with RON |

### Manual Override

CEO can reclassify any input by editing this file:
- Change `classification:` field
- Add `override: true` flag
- Add `reason: "..."` note

---

## 📝 INTAKE TEMPLATES

### Template A: Telegram Input

```markdown
---
created: YYYY-MM-DD HH:MM:SS
source: telegram
classification: {{auto-detected}}
status: pending
---

## Source Information
- **Origin:** Telegram
- **Received:** {{timestamp}}
- **Sender:** {{user}}
- **Detected Keywords:** {{list}}

## Raw Input
> {{original message}}

## Classification
- **Priority:** {{URGENT|P0|P1|P2|none}}
- **Type:** {{Command|Question|Extraction|Draft|Chat}}
- **Assigned To:** {{RON|GROQ|FREE|PAID}}
- **Estimated Effort:** {{small|medium|large}}

## Processing
- **Started:** {{timestamp or empty}}
- **Approach:** {{plan or empty}}
- **Blockers:** {{none or list}}

## Result
- **Completed:** {{timestamp or empty}}
- **Output:** {{link or empty}}
- **Status:** {{pending|processing|blocked|completed|failed}}
```

### Template B: Inbox File Drop

```markdown
---
created: YYYY-MM-DD HH:MM:SS
source: inbox
classification: extraction
status: pending
---

## Source Information
- **Origin:** 00-Inbox/ folder
- **File:** {{filename}}
- **Type:** {{pdf|md|txt|other}}
- **Size:** {{filesize}}
- **Detected:** {{timestamp}}

## File Metadata
- **Name Pattern:** {{PMID|DOI|Title|Other}}
- **Auto-extract eligible:** {{yes|no}}
- **Confidence:** {{high|medium|low}}

## Classification
- **Priority:** {{P0|P1|P2}}
- **Type:** EXTRACTION
- **Assigned To:** GROQ (batch)
- **Template:** {{Reference|Biomarker|Claim|etc}}

## Processing
- **Queued:** {{timestamp or empty}}
- **Batch ID:** {{batch number or empty}}
- **Agent:** {{GROQ|RON|empty}}

## Result
- **Extracted:** {{timestamp or empty}}
- **Atomics Created:** {{count or empty}}
- **Staging Location:** {{path or empty}}
- **Status:** {{pending|queued|processing|completed|failed}}
```

### Template C: Dashboard Form

```markdown
---
created: YYYY-MM-DD HH:MM:SS
source: dashboard
classification: command
status: pending
---

## Source Information
- **Origin:** Dashboard Command Form
- **Submitted:** {{timestamp}}
- **Form Fields:**
  - Priority: {{P0|P1|P2}}
  - Type: {{Extraction|Draft|Analysis|Other}}
  - Deadline: {{date or none}}

## Command Content
**Objective:** {{title}}

**Context:**
{{description}}

**Acceptance Criteria:**
- {{criterion 1}}
- {{criterion 2}}

## Classification
- **Priority:** {{P0|P1|P2}}
- **Type:** COMMAND
- **Assigned To:** {{RON|GROQ|FREE|PAID}}
- **Deadline:** {{date or none}}

## Processing
- **Added to COMMAND.md:** {{timestamp or empty}}
- **Queued in:** {{QUEUE section or empty}}
- **Started:** {{timestamp or empty}}

## Result
- **Completed:** {{timestamp or empty}}
- **Deliverable:** {{link to HANDOFF or file}}
- **Review Status:** {{pending|approved|changes-requested}}
```

---

## 🔄 WORKFLOW

```
INPUT ARRIVES (any source)
         │
         ▼
┌──────────────────────┐
│  1. DETECT KEYWORDS  │
│  (urgent, p0, etc)   │
└──────────┬───────────┘
           │
    ┌──────┴──────┐
    ▼             ▼
 Keyword?     No Keyword
    │             │
    ▼             ▼
 Use it      Use Source
    │          Default
    └──────┬──────┘
           │
           ▼
┌──────────────────────┐
│  2. WRITE TO INTAKE  │
│  (this file)         │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│  3. NOTIFY RON       │
│  (if URGENT or P0)   │
└──────────┬───────────┘
           │
           ▼
┌──────────────────────┐
│  4. RON TRIAGES      │
│  (every 15min or     │
│   immediate if URG)  │
└──────────┬───────────┘
           │
    ┌──────┴──────┐
    ▼             ▼
 URGENT/P0    P1/P2/Other
    │             │
    ▼             ▼
 Immediate    Queue for
 Action       Next Slot
    │             │
    └──────┬──────┘
           │
           ▼
┌──────────────────────┐
│  5. ROUTE TO         │
│  APPROPRIATE QUEUE   │
│  (COMMAND/HANDOFF/   │
│   AGENT SPAWN)       │
└──────────────────────┘
```

---

## 📋 DASHBOARD INTEGRATION

**URL:** http://localhost:4444/forge.html

**Widget:** Intake panel shows:
- 🔴 URGENT count
- 📥 New arrivals count
- 🔄 In process count
- ✅ Completed today

**Refresh:** Every 30 seconds (polls this file)

---

*🔄 Intake Queue — Living document, updated continuously*
