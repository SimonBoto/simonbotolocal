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
- [2026-04-22] Schema updated: vault_path column added to agent_knowledge
- [2026-04-22] Schema updated: zettel_paths column added to pending_extractions
- [2026-04-22] add_knowledge() updated with vault_path parameter
- [2026-04-22] add_extraction() updated with zettel_paths parameter
- [2026-04-22] Test passed: Vault paths stored and retrievable ✅
- [2026-04-22] Database recreated with new schema (old data preserved in backup)

## Blockers
None

## Notes
Add `vault_path` column to agent_knowledge and pending_extractions tables.
