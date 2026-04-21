---
id: ISSUE-021
title: Fix Bootstrap Truncation — Split Core Files to READMEs
assignee: RON
energy: 45m / $1.00
priority: P0
status: completed
created: 2026-04-21
parent: none
spawned: []
---

## Success Criteria
- [ ] Audit AGENTS.md — identify core vs. extended content
- [ ] Create AGENTS-REFERENCE.md with extended content
- [ ] Trim AGENTS.md to core only (<12,000 chars)
- [ ] Audit TOOLS.md — identify core vs. extended content
- [ ] Create TOOLS-REFERENCE.md with extended content
- [ ] Trim TOOLS.md to core only (<12,000 chars)
- [ ] Audit SOUL.md — identify core vs. extended content
- [ ] Create SOUL-REFERENCE.md with extended content
- [ ] Trim SOUL.md to core only (<12,000 chars)
- [ ] Update main files to link to READMEs
- [ ] Verify bootstrap loads fully (no truncation warnings)
- [ ] Git commit all changes

## Context
Bootstrap files exceed limits:
- AGENTS.md: 17,798 chars (39% truncated)
- TOOLS.md: 16,897 chars (35% truncated)
- SOUL.md: 10,328 chars (86% of limit)

This causes context loss — missing safety rules, protocols, examples.

## Progress Log
- [12:03] Issue created
- [12:04] AGENTS.md audit complete — split to AGENTS-REFERENCE.md
- [12:08] TOOLS.md audit complete — split to TOOLS-REFERENCE.md
- [12:12] SOUL.md audit complete — split to SOUL-REFERENCE.md
- [12:15] All core files under 12,000 char limit
- [12:16] Git commit pending

## Blockers
None

## Notes
Core = Essential for operation (Quick Ref, safety rules, critical protocols)
Extended = Documentation, examples, detailed workflows (move to README)
