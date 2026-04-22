---
id: ISSUE-057
title: Auto-Index Git Hook — Real-Time QMD Sync
assignee: RON
energy: 30m / $0.10
priority: P2
status: backlog
created: 2026-04-22
parent: none
spawned: []
---

# Issue-057: Auto-Index Git Hook

## Success Criteria
- [ ] Create git post-commit hook for `qmd index`
- [ ] Test: Commit file → immediately searchable
- [ ] Verify no performance impact on commits
- [ ] Document hook installation for new clones
- [ ] Fallback: Manual index if hook fails

## Context
Current workflow: Edit → Commit → Manual `qmd index` → Searchable. Gap: New files not searchable until manually indexed. Auto-hook would make memory system real-time.

## Progress Log
- [13:57] Issue created from memory system review

## Blockers
None

## Notes
Simple infrastructure improvement. High ROI for daily workflow.
