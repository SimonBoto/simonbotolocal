---
issue-id: ISSUE-079
status: open
priority: P2
agent: RON
created: 2026-04-22
source: SAGE Assessment
---

# ISSUE-079: Implement SAGE Circuit Breaker

## Problem
SAGE costs 75-125x more than RON. No gating mechanism — any request could accidentally trigger $100+ run.

## Requirements
Before spawning SAGE, RON must verify:
1. Explicit user phrase: "use SAGE" or "deep reasoning"
2. Estimated task value > $5 (justify against cost)
3. Max runtime: 10 minutes
4. Output budget: 50k tokens

## Implementation
Add to RON's OPERATING-MANUAL.md:
```
SAGE Gate:
- Check for explicit keyword
- Estimate cost vs value
- Log approval decision
- Set timeout and token limits
```

## Owner
RON

## Acceptance Criteria
- [ ] SAGE gate documented in OPERATING-MANUAL.md
- [ ] Test: request without keyword → redirected to RON
- [ ] Test: request with keyword → SAGE spawned with limits
