---
uid: ISSUE-093
status: Closed
priority: P0
created: 2026-04-24
tags: [agents, config, cost, kimi]
related: [ISSUE-092, SOUL.md#truth-22]

---

# ISSUE-093: Kimi Token Burn — $0.5/msg from Heavy Context Loads

## Summary
**Problem:** Kimi k2.6 sessions burn ~$0.5/msg (last 2-3 days). Context: 56k/131k (43%) per turn. Cache hit: 1%. Total: $15+/day unsustainable.

**Status:** RON (Grok) cheap ($0.20/M), FORG (Kimi) isolated. But main session hits limits.

**Impact:** Kimi unusable at scale. Need $2/day max.

## Reproduction
1. Long session (>50 msgs).
2. VAULT mode triggers: SOUL/MEMORY/USER/AGENTS/TOOLS auto-load (~25k tokens).
3. Dynamic injection: Dailies/HEARTBEAT/modified files (+20k).
4. History compaction: 158 msgs → heavy summaries (+10k).
5. Kimi pricing: $0.38/M in + $1.72/M out → $0.5/130k turn.

**session_status:** Tokens: 55k in / 1.5k out · Context: 56k/131k (43%) · Cache: 1%.

## Root Cause
- **AGENTS.md VAULT Mode:** Auto-loads full context on "vault work" keywords → always heavy.
- **No lightContext:** Full bootstrap every turn.
- **Compaction Inefficient:** Summaries bloat (e.g., "Context contained 158 messages").
- **Model Fallbacks:** Kimi primary → hits quota fast.
- **No Auto-Compact:** No cron /compact after N turns.

GitHub: No Kimi bugs (#70491 UI cache %, no "kimi expensive").

## Success Criteria
- [ ] Main session: <$0.05/msg (Grok primary).
- [ ] FORG Kimi: <$0.10/extraction (lightContext + subagent).
- [ ] Cache hit: >50%.
- [ ] Context: <20k/turn default.
- [ ] Daily total: <$2 (tracked in MEMORY.md).

## Proposed Solutions

### 1. lightContext Default (Immediate, 5m)
**Fix:** `config.patch agents.list.0.lightContext true` (RON skips VAULT bootstrap).
**CLI:** `openclaw config patch agents.list.0.lightContext true && openclaw gateway restart`
**Est:** $0, instant 70% reduction.

### 2. MINIMAL Mode Strict (10m)
**Fix:** AGENTS.md: MINIMAL default. VAULT only on explicit `/vault` or keywords: "zettel", "extraction", "PhD".
**Change:** Edit AGENTS.md → "Trigger: vault keywords only".
**Impact:** 90% sessions light.

### 3. Auto-Compact Cron (15m)
**Fix:** Cron every 10 turns: `sessions_compact` or `sessions_yield`.
**Cron:** `cron add schedule={kind:"every",everyMs:3600000} payload={kind:"systemEvent",text:"/compact"}`
**Est:** Keeps context <20k.

### 4. Thinking Off Lock (5m)
**Fix:** Config `agents.defaults.thinking "off"`. No reasoning bloat.
**CLI:** `config.patch agents.defaults.thinking "off"`

### 5. History Prune Aggressive (10m)
**Fix:** `sessions_list limit=20` + manual prune old sessions.
**Automation:** Cron weekly: `sessions_list activeMinutes=1440 | xargs sessions_prune`.

### 6. OpenRouter Top-Up + Fallback Chain (20m)
**Fix:** Top-up free tier. Config fallbacks: Grok → Nemotron (free) → Kimi.
**CLI:** OpenRouter dashboard → add $5. Config: `agents.list.0.fallbacks=["openrouter/nvidia/nemotron-3-super-120b-a12b:free"]`

### 7. Update OpenClaw (30m)
**Fix:** `gateway action=update.run note="Token opt v1"`
**Why:** Cache improvements (#70592), thinking defaults.

**Total Est:** 1.5h setup, $2/day ongoing.

## Risks
- lightContext: Miss VAULT context → subagent handoff.
- Prune: Lose history → memory flush ritual covers.

**Next:** Execute #1-4 now? User confirm.

---

_Last updated: 2026-04-24_
