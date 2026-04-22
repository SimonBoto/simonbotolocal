---
issue-id: ISSUE-075
status: completed
priority: P1
agent: RON
created: 2026-04-22
closed: 2026-04-22
source: SAGE Assessment
---

# ISSUE-075: Tighten Session Compaction Settings

## Status: COMPLETED (Skipped)

## Decision
Simos prefers conversational continuity over aggressive compaction. Current settings (60% history, 6 turns) maintained for deep work.

## Rationale
- Deep work requires context retention
- Cost savings not worth quality trade-off
- Compaction already prevents runaway bloat

## Final Config
```json
"compaction": {
  "mode": "safeguard",
  "maxHistoryShare": 0.6,
  "keepRecentTokens": 8000,
  "reserveTokens": 12000,
  "recentTurnsPreserve": 6
}
```
