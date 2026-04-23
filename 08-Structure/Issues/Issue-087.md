---
uid: ISSUE-087
type: issue
title: "Cost Guardian — Fix $20/day Kimi Cache Burn"
status: open
priority: P0
created: 2026-04-23
parent-moc: "[[MOC-Operations]]"
parent-index: "[[08-Structure/Issues/Issues-Index]]"
tags: [issue, cost, cache, kimi, moonshot, routing, p0]
---

# ISSUE-087: Cost Guardian — Fix $20/day Kimi Cache Burn

## Problem
Kimi context caching burned ~$20 in 24 hours (Apr 22-23). Root cause: Moonshot auto-cache with ¥6.50/M cache miss penalty.

## Impact
- Kimi balance: $6.91 → $0.28 (preserved by switching to Grok)
- Daily burn rate: ~$20/day if unchecked
- Risk: Unpredictable costs make budgeting impossible

## Root Causes (Ranked by $ Impact)

| Rank | Cause | $ Impact | % of Burn |
|------|-------|----------|-----------|
| 1 | Kimi cache misses (¥6.50/M) | ~$8-10 | 40-50% |
| 2 | daily-dreaming cron (Kimi k2.5) | ~$4-6 | 20-30% |
| 3 | Session context bloat (60k+) | ~$3-4 | 15-20% |
| 4 | Tool call loops (vault reads) | ~$2-3 | 10-15% |
| 5 | Compaction overhead | ~$1-2 | 5-10% |

## Proposed Fixes (Ranked by Benefit/Risk)

### MAXIMUM BENEFIT (Do First)

| Fix | Benefit | Risk to Potential | Effort |
|-----|---------|-------------------|--------|
| **1. Hybrid routing** (Grok primary, Kimi escalation-only) | 70-95% cost cut | LOW — Kimi still available for complex tasks | 10 min |
| **2. Ultra-light heartbeat** (once daily, 1 suggestion) | 50-70% token reduction | LOW — you can still ask for full briefs | 5 min |
| **3. Session auto-reset** (60k threshold) | 30-50% context reduction | LOW — preserves persistent memory | 5 min |

### MEDIUM BENEFIT (Do Next)

| Fix | Benefit | Risk to Potential | Effort |
|-----|---------|-------------------|--------|
| **4. Vault summarization** (RAG instead of full injection) | 80-90% token reduction on vault tasks | MEDIUM — may miss nuances in full notes | 1 hour |
| **5. Hard daily limits** (1.5M tokens, auto-pause) | Prevents runaway burns | LOW — just a safety net | 10 min |
| **6. COST_GUARDIAN.md** (persistent rules) | Prevents regression | NONE — documentation only | 15 min |

### RESEARCH (Do When Time)

| Fix | Benefit | Risk to Potential | Effort |
|-----|---------|-------------------|--------|
| **7. Moonshot cache headers** (disable cache) | Could restore Kimi as primary | HIGH — may not work, needs testing | 2+ hours |
| **8. OpenRouter auto-router** | Automatic cost optimization | MEDIUM — less control over model choice | 30 min |

## Trade-off Analysis

### What DECREASES Potential

| Fix | Potential Impact | Mitigation |
|-----|------------------|------------|
| Grok as primary | Slightly lower quality on complex reasoning | Escalation to Kimi on approval |
| Vault summarization | May miss connections in full notes | Keep full notes accessible, summarize on demand |
| Session auto-reset | Loses recent context | Persistent memory (MEMORY.md) preserves key info |

### What INCREASES Potential

| Fix | Potential Gain |
|-----|----------------|
| Predictable costs | Can scale without fear |
| Faster Grok | Quicker responses for routine tasks |
| Hard limits | Forces efficiency, better prompts |
| COST_GUARDIAN.md | Systematic cost awareness |

## Community Validation

> "Kimi is great but too unpredictable with cache — route everything cheap by default." — OpenClaw community

> "$250 to $27 via tiered routing + light heartbeats." — Reddit user

## Decision Needed

**Which fixes to implement?**

- [ ] ALL (maximum safety)
- [ ] Phase 1 only (routing + heartbeat + reset)
- [ ] Phase 1 + 2 (full optimization)
- [ ] Custom (specify)

## Related

- ISSUE-074: Verify Kimi billing
- ISSUE-076: Set OpenRouter $5 limit
- COST-MONITORING.md

---
*ISSUE-087 | Created: 2026-04-23 | Status: open | Priority: P0*
