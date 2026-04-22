---
id: ISSUE-059
title: Auto-Index Agent Work — FORG Zettels Searchable After Night Shift
assignee: RON
energy: 1h / $0.50
priority: P1
status: active
created: 2026-04-22
parent: none
spawned: []
---

# Issue-059: Auto-Index Agent Work

## Success Criteria
- [ ] Add `qmd index` to FORG completion routine
- [ ] Verify new zettels appear in QMD search within 1 hour of creation
- [ ] Test: Create zettel → search → find it
- [ ] Document indexing schedule in FORG program

## Context
FORG creates zettels at night but QMD doesn't auto-index them.
Result: Morning search doesn't find new work.

## Progress Log
- [2026-04-22] Issue created from memory system audit
- [2026-04-22] FORG program updated with auto-index instructions
- [2026-04-22] auto_index.py script created for FORG workspace
- [2026-04-22] Tested: qmd update works, 2,702 files indexed
- [2026-04-22] **Verified:** Search "aconitase cancer metabolism" → finds new zettels ✅
- [ ] Integrate into FORG night shift routine

## Blockers
None

## Notes
Could use git post-commit hook or FORG's completion script.
