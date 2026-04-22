---
id: ISSUE-071
title: "Capture Clinic Prescribing Rules — Simos's Clinical Logic"
assignee: RON + Simos
energy: 2h / $1.00
priority: P2
status: backlog
created: 2026-04-22
parent: none
spawned: []
---

# Issue-071: Capture Clinic Prescribing Rules

## Success Criteria
- [ ] Document Simos's core prescribing philosophy
- [ ] Capture "always start with" rules
- [ ] Capture "never combine" rules
- [ ] Capture patient presentation → supplement mapping
- [ ] Capture dosing escalation logic
- [ ] Capture monitoring/red flags
- [ ] Create clinic protocol zettel(s)

## Context
Simos has implicit clinical knowledge — rules he follows instinctively when prescribing. This knowledge needs to be externalized so:
1. RON/FORG can optimize supplements correctly
2. Future clinicians can learn the system
3. Consistency is maintained across patient visits

## Topics to Capture

### Prescribing Philosophy
- What does "start low, go slow" mean in practice?
- When do you add vs replace supplements?
- How do you prioritize — symptom severity vs lab values vs patient preference?

### First-Line Rules
- What does EVERY patient get? (Magnesium? VitD? B-Complex?)
- What are the non-negotiables?
- When do you deviate from the standard stack?

### Contraindication Logic
- "Never combine" combinations
- Condition-specific exclusions
- Drug-supplement interaction hierarchy

### Patient Presentation Mapping
| Presentation | First Thought | Second Line | Adjunct |
|--------------|---------------|-------------|---------|
| Fatigue | ? | ? | ? |
| Insomnia | ? | ? | ? |
| Joint pain | ? | ? | ? |
| Brain fog | ? | ? | ? |
| Sugar cravings | ? | ? | ? |
| Anxiety | ? | ? | ? |

### Dosing Escalation
- When do you increase dose vs add new supplement?
- How long before you reassess?
- What labs trigger changes?

### Monitoring & Red Flags
- What do you track? (symptoms, labs, compliance)
- When do you stop a supplement?
- When do you refer out?

## Progress Log
- [2026-04-22] Issue created — concept approved, deferred
- [ ] Interview Simos (structured conversation)
- [ ] Document rules in zettel format
- [ ] Create clinic protocol zettel
- [ ] Link to supplement zettels
- [ ] Update MOC-Supplements

## Blockers
- Requires Simos's time and input
- ISSUE-069 should be complete first (supplements need clinical fields)

## Notes
**This is a LATER project — not blocking current work.**

**Approach:** When Simos is ready, we'll do a structured interview:
1. "Walk me through a typical patient visit"
2. "What do you prescribe for [condition]?"
3. "What would you NEVER do?"
4. "How do you decide between supplement A vs B?"

Output: Clinic protocol zettel(s) that capture the implicit knowledge.
