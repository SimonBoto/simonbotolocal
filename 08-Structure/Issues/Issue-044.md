---
id: ISSUE-044
title: Template v5.1 Rollout — LitNote source-origin Field
assignee: FORG
priority: P2
status: backlog
created: 2026-04-21
---

# Issue 044: Template v5.1 Rollout

## Background
Template_LitNote_v5.0.md requires `source-origin` field.

## Current State
- 222 LitNotes
- ~96 have source-origin (FORG added)
- ~126 missing source-origin

## Task
Add `source-origin` to all LitNotes missing it.

## Source Mapping
| If source is | source-origin value |
|--------------|---------------------|
| CGPT file | `[[CGPT_XXXX_Title_CGPT-XXXX]]` |
| INBOX article | `[[INBOX-Article-XX-Title]]` |
| Direct input | `direct` |
| Unknown | `unknown` |

## Batch Strategy
1. Identify LitNotes missing field
2. Parse existing `source:` or `source-litnote:`
3. Populate `source-origin` from that
4. If no source, mark `unknown`

## Safety
- Creation-only (add field, never modify)
- YAML validation after each edit
- Batch: 25 files at a time

## Success Criteria
- [ ] 100% LitNotes have source-origin
- [ ] All values valid
- [ ] No YAML corruption

---
