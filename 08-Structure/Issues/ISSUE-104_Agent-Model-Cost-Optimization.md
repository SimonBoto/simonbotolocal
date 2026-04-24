---
id: ISSUE-104
title: Agent Model and Cost Optimization - Twin Grok + Kimi Sage
assignee: RON
energy: 2h / $1.00  # Config + tests (Grok primary)
priority: P0
status: active
created: 2026-04-24
parent: none
spawned: []
---

## Success Criteria
- [ ] RON/main: Grok 4.1 Fast primary ($4 OpenRouter cap) — verified `session_status`
- [ ] FORG: Grok 4.1 Fast primary ($2 OpenRouter cap key from Untitled.md) — spawn test (50-file batch <$0.50)
- [ ] SCOUT: Nemotron free — unchanged
- [ ] Sage/Advisor: Kimi k2.6 primary — spawn test (1 PhD opt <$1, ISSUE-087 aware)
- [ ] Config applied (`config.patch` → restart), Telegram bots active
- [ ] Night cron: FORG isolated Grok 00:00-08:00
- [ ] Cost sim: <$2/day total
- [ ] Git: Reversible commit, QMD indexed

## Context
User directive (2026-04-24 21:20): RON leader Grok($4), FORG Grok twin($2), Scout free, Advisor Kimi. ISSUE-087 cache crisis fixed. Keys: Untitled.md (Forg OR key sk-or-v1-4a77... $2cap).

## Progress Log
- [21:25] ISSUE-104 created (RON)
- [21:22] FORG model patch started (CLI for auth + model)

## Blockers
Brave redaction in config — use CLI exec.

## Notes
- Add auth profile `openrouter:forg` with Forg key if needed.
- Model `openrouter/x-ai/grok-4.1-fast` for RON/FORG.
- Test: `sessions_spawn agentId="forg" model="openrouter/x-ai/grok-4.1-fast"`

