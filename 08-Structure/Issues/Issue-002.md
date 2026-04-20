---
id: ISSUE-002
title: Create Issues/Agents/Skills system adapted from Multica
assignee: RON
energy: 60m / $0.40
priority: P0
status: completed
created: 2026-04-20
parent: ISSUE-001
spawned: [ISSUE-003]
---

## Success Criteria
- [x] Create Issues/ folder with backlog/active/completed system
- [x] Create Agents/ folder with RON/FORG/SCOUT profiles
- [x] Create Skills/ folder with index and templates
- [x] Design issue lifecycle (backlog → active → completed)
- [x] Define agent assignment rules
- [x] Create skill evolution framework

## Progress Log
- [18:22] Analyzed Multica repository structure
- [18:25] Planned adaptation for vault context
- [18:28] Created folder structure
- [18:30] Wrote all dashboard files (00-BACKLOG, 01-ACTIVE, 02-COMPLETED)
- [18:35] Wrote all agent profiles (RON, FORG, SCOUT)
- [18:38] Wrote Skills index and template
- [18:40] Created folder indexes

## Blockers
None

## Notes
Multica's issue-based workflow translates well to vault. Key adaptation: file-based instead of web dashboard. Daemon architecture replaced with session-based spawning.

## Outcome
Full Issues/Agents/Skills system operational. 13 new files created across 3 folders.
