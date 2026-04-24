---
uid: ISSUE-094
status: Open
priority: P0
created: 2026-04-24
tags: [forg, kimi, cost, monitor]
related: [ISSUE-093]

---

# ISSUE-094: FORG Cost Predictor + Real-Time Kimi Balance Monitor

## Summary
**Problem:** Kimi balance burns fast ($5 → $3.7). No real-time tracker. Spawn cost predictions need 95% accuracy.

**Goal:** Predict spawn cost pre-run. Track balance live. Alert < $1.

## Success Criteria
- [ ] Predict spawn cost ±10% accuracy
- [ ] Live Kimi balance via Moonshot API (if available) or token estimate
- [ ] Alert RON when < $1 remaining
- [ ] FORG spawns capped at $0.05/task

## Proposed Solutions (FORG Optimize)
1. **Cost Predictor:** Formula + historical data (tokens in/out → $)
2. **Balance Monitor:** Cron query Moonshot API or token-to-$ ratio
3. **Alert:** Cron daily check → message if low
4. **Cap:** Pre-spawn validation

**FORG Task:** Optimize solutions. Predict your own spawn cost for this task.

---

_Last updated: 2026-04-24_
