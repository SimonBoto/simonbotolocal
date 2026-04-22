---
issue-id: ISSUE-075
status: open
priority: P1
agent: RON
created: 2026-04-22
source: SAGE Assessment
---

# ISSUE-075: Tighten Session Compaction Settings

## Problem
Current compaction (60% history, 6 turns, 8000 tokens) lets sessions grow to 1.5MB in 6 hours. SAGE recommends more aggressive settings.

## Current Config
```json
"compaction": {
  "mode": "safeguard",
  "maxHistoryShare": 0.6,
  "keepRecentTokens": 8000,
  "reserveTokens": 12000,
  "recentTurnsPreserve": 6
}
```

## Proposed Config
```json
"compaction": {
  "mode": "safeguard",
  "maxHistoryShare": 0.4,
  "keepRecentTokens": 4000,
  "reserveTokens": 8000,
  "recentTurnsPreserve": 4
}
```

## Trade-off
More aggressive compaction = smaller sessions but less conversational continuity. Need Simos approval for deep-work sessions.

## Cost Impact
$5-15/day savings

## Owner
RON (pending Simos approval)

## Acceptance Criteria
- [ ] Simos approves tighter compaction
- [ ] Config updated
- [ ] Test: session stays <500KB for 24h
