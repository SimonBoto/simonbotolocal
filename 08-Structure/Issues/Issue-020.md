---
id: ISSUE-020
title: Orphan Zettel Reconnection — 312 Orphans to MOCs
assignee: RON
energy: 4h / $1.50
priority: P2
status: pending
created: 2026-04-21
parent: none
spawned: []
---

## Success Criteria
- [ ] Audit 312 orphan zettels (78% connected, 312 orphaned)
- [ ] Group by theme/topic
- [ ] Create/connect to appropriate MOCs
- [ ] Verify all zettels have parent-moc
- [ ] Update MOC-Orphan-Zettels tracking

## Context
Zettel connections improved to 78% (was 706 orphans, now 312). Remaining orphans need thematic MOCs. Non-blocking but reduces vault coherence.

## Source Location
- 03-Zettels/Conscious/ — 1,453 zettels
- 01-PIPELINE.md — "312 orphaned — tracked, not blocking"
- skill-moc-consolidation-v1.0.sh — executable script

## Progress Log
- [10:45] Issue created

## Blockers
None — can parallel with other work

## Notes
Deferred per PIPELINE.md: "Defer orphan cleanup" in favor of extraction work.
Can batch: 312 ÷ 25 = ~13 batches.
