---
issue-id: ISSUE-084
status: completed
priority: P4
agent: RON/FORG
created: 2026-04-22
closed: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-084: Template v5.0 Rollout Incomplete

## Status: COMPLETED (Deferred)

## Decision
P4 priority — not urgent. Current v4.0 LitNotes function correctly. Upgrade can happen incrementally as LitNotes are touched.

## Rationale
- 219 v4.0 LitNotes work fine
- v5.0 features (UP/DOWN/SIDEWAYS) are enhancements, not fixes
- FORG can upgrade on-demand when processing specific LitNotes
- Full batch upgrade is 7-11 hours — not worth the cost now

## When to Upgrade
- When a v4.0 LitNote is actively being processed
- During weekly consolidation (opportunistic)
- If graph view connectivity becomes critical

## Current State
- v4.0: 219 files (functional)
- v5.0: 28 files (CGPT batch)
- Both versions coexist without issues
