---
id: ISSUE-060
title: Link Shared Memory to Vault Paths — Trace Agent Log to Zettel
assignee: RON
energy: 1h / $0.50
priority: P1
status: active
created: 2026-04-22
parent: none
spawned: []
---

# Issue-060: Link Shared Memory to Vault Paths

## Success Criteria
- [ ] Store vault file paths in shared.sqlite (not just IDs)
- [ ] Test: Click shared memory entry → open zettel in vault
- [ ] Update shared_memory.py schema
- [ ] Backfill existing entries with paths

## Context
shared.sqlite has IDs but no links to actual vault files.
Result: Can't trace from agent log to zettel.

## Progress Log
- [2026-04-22] Issue created from memory system audit

## Blockers
None

## Notes
Add `vault_path` column to agent_knowledge and pending_extractions tables.
