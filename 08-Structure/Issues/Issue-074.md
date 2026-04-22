---
issue-id: ISSUE-074
status: open
priority: P0
agent: RON
created: 2026-04-22
source: SAGE Assessment
---

# ISSUE-074: Verify Main Agent Actually Runs on Grok (Not Kimi)

## Problem
Config shows `primary: grok-4.1-fast`, but LESSON-001 shows Kimi k2.6 was being billed. Either config drifted or `/status` reports wrong model.

## Evidence
- Config: `agents.defaults.model.primary = "openrouter/x-ai/grok-4.1-fast"`
- LESSON-001: Subagents inherited Kimi k2.6
- SAGE finding: "Config says Grok, LESSON says Kimi billed"

## Action
Run `/status` and verify actual billing model matches config.

## Cost Impact
$3-10/day if still on Kimi

## Owner
RON

## Acceptance Criteria
- [ ] `/status` shows Grok 4.1 Fast
- [ ] Test message bills to OpenRouter (not Moonshot)
- [ ] Document verification in this issue
