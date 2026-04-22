---
issue-id: ISSUE-084
status: open
priority: P4
agent: RON/FORG
created: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-084: Template v5.0 Rollout Incomplete

## Problem
Only 28 CGPT LitNotes use v5.0 template. 220 v4.0 LitNotes still need upgrade.

## Evidence
- v4.0 LitNotes: 220 files
- v5.0 LitNotes: 28 files (CGPT batch)
- v5.0 features: UP/DOWN/SIDEWAYS anchors, source-reference enforcement

## Impact
- Inconsistent YAML schema
- Missing source-reference links
- Graph view incomplete

## Action
Batch upgrade v4.0 → v5.0:
1. Add `source-reference` field to YAML
2. Add `[[Reference]]` link to body
3. Verify UP anchor (source of extraction)
4. Update template compliance

## Owner
FORG (batch), RON (QC)

## Acceptance Criteria
- [ ] All LitNotes v5.0 compliant
- [ ] source-reference in YAML + body
- [ ] UP/DOWN/SIDEWAYS anchors correct
- [ ] Template updated if gaps found
