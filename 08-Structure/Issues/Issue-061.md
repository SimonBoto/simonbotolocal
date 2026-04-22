---
id: ISSUE-061
title: Agent Discoveries → Auto-Zettels — Compound Agent Knowledge
assignee: RON
energy: 4h / $2.00
priority: P2
status: backlog
created: 2026-04-22
parent: none
spawned: []
---

# Issue-061: Agent Discoveries → Auto-Zettels

## Success Criteria
- [ ] SCOUT discoveries auto-create zettels in 03-Zettels/Conscious/
- [ ] FORG extractions auto-create summary zettels
- [ ] RON reviews auto-created zettels in morning
- [ ] QMD indexes auto-zettels automatically

## Context
Agent knowledge lives in shared.sqlite but doesn't compound like human knowledge.
Solution: Every significant discovery becomes a zettel.

## Example
```
SCOUT discovers: "CGPT-0421 is high priority: adipic acid"
    ↓
Auto-creates: [[SCOUT-Discovery-Adipic-Acid-Priority_Z-SYS-001]]
    ↓
QMD indexes it
    ↓
RON reviews and links to existing zettels
```

## Progress Log
- [2026-04-22] Issue created from memory system audit

## Blockers
ISSUE-059 (auto-index) should be done first

## Notes
High impact — makes agent knowledge permanent and searchable.
