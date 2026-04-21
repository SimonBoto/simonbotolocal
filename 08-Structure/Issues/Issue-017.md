---
id: ISSUE-017
title: AutoResearch Pilot — Design program-RON.md Architecture
assignee: RON
energy: 3h / $1.00
priority: P1
status: backlog
created: 2026-04-21
parent: none
spawned: []
---

## Success Criteria
- [ ] Design `program-RON.md` template (extraction constraints, quality criteria)
- [ ] Define `prepare-RON.py` requirements (QMD integration, validation)
- [ ] Specify SCOUT integration points (CGPT selection strategy)
- [ ] Create 10-conversation pilot protocol
- [ ] Document success metrics and risk mitigation

## Context
AutoResearch project proposed in PROJECT-AutoResearch-Knowledge.md. Inspired by Karpathy's autoresearch + CORAL multi-agent insights. Goal: autonomous CGPT extraction overnight with morning RON review. 673 conversations pending.

## Source Location
- 07-Projects/PhD/PROJECT-AutoResearch-Knowledge.md — full architecture
- 01-PIPELINE.md — "CGPT reservoir high-pressure"
- CORAL paper (arXiv:2604.01658) — multi-agent insights

## Progress Log
- [10:45] Issue created

## Blockers
None — design phase, no dependencies

## Notes
Depends on: LitNote v4.0 (✅), FORG pipeline (✅)
Enables: Processing 671 pending CGPT conversations autonomously

3-agent architecture: SCOUT (explore) → FORG (execute) → RON (validate)
