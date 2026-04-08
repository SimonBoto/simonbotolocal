---
uid: TEMPLATE-DAILY-005
type: template
title: Template — Daily Note
description: "Date-stamped daily operational note for continuity, learning, and signal preservation."
version: "2.0"
status: active
updated: 2026-04-08
---

# Template — Daily Note

## An Address to RON

RON,

A Daily Note is an **episodic continuity artifact**.

Not a dashboard. Not doctrine. Not vague journaling.

Its role is to preserve:
- what happened
- what mattered
- what changed
- what blocked progress
- what the next session inherits

Capture **signal**, not noise.

---

## Canonical YAML

```yaml
---
uid: DAILY-YYYY-MM-DD
type: daily-note
date: YYYY-MM-DD
day: Monday
tags: [daily]
parent-moc: "[[MOC-Daily-Operations]]"
parent-index: "[[Daily-Index]]"
status: active
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Pattern: `DAILY-YYYY-MM-DD` |
| **type** | Always `daily-note` |
| **date** | ISO date |
| **day** | Day of week |
| **parent-moc** | Thematic home: `[[MOC-Daily-Operations]]` |
| **parent-index** | Always `[[Daily-Index]]` |
| **status** | `active` or `archived` |
| **created** | Date note created |
| **updated** | Date last modified |

---

## Daily Structure

### Today's Focus
Primary objective: [One sentence]

If only one thing moves today: [The one thing]

---

### Completed

#### Major Achievements
- [x] [Achievement with impact]
- [x] [Achievement with impact]

#### Quick Wins
- [Quick win 1]
- [Quick win 2]

---

### Friction & Blockers
What blocked progress? [Be specific]
What created confusion? [Be specific]
What remains unresolved? [Flag for follow-up]

---

### Insights
What I learned: [Key learning]
What changed: [State shift]
What became clearer: [New clarity]

---

### Key Files
- [[Filename]] — [Why it mattered]
- [[Filename]] — [Why it mattered]

---

### Carry Forward
What the next session must inherit: [Specific handoff]

---

### Tomorrow
From [[00-COMMAND]] — Do Now:
1. [Next priority]
2. [Next priority]
3. [Next priority]

---

## Navigation
- **Index:** [[Daily-Index]] — All daily notes
- **Yesterday:** [[DAILY-YYYY-MM-DD]]
- **Tomorrow:** [[DAILY-YYYY-MM-DD]]

---

*Daily — Signal preserved. Continuity protected.*
