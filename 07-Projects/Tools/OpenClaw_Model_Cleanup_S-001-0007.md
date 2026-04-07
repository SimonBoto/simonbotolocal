---
uid: S-001-0007
type: synthesis
title: OpenClaw Model Cleanup Project
domain: 901
status: completed
created: 2026-04-07
completed: 2026-04-07
---

# OpenClaw Model Cleanup Project

## Status: ✅ COMPLETED

## Goal
Clean up OpenClaw model configuration to reduce complexity and costs.

## Changes Made

### Before
- 17+ models configured
- Multiple providers (Groq, Ollama, Moonshot, OpenRouter, xAI)
- Unused agent entries (scout, grok, minimax)
- Wrong OpenRouter API key (FREE tier)

### After
- **2 models active**:
  - `moonshot/kimi-k2.5` (alias: RON) — Primary
  - `openrouter/minimax/minimax-2.7` (alias: WORKER) — Bulk tasks
- **2 providers**: Moonshot, OpenRouter
- **1 agent**: main
- **PAID OpenRouter key**: $2/day cap

## Cost Impact

| Metric | Before | After | Savings |
|--------|--------|-------|---------|
| Daily cost | ~$30 | ~$5-10 | 70-80% |
| Model confusion | High | None | Clarity |
| Maintenance | Complex | Simple | Time |

## Files Modified
- `~/.openclaw/openclaw.json` — Cleaned config
- `~/.openclaw/.openrouter_key` — Updated to PAID key

## Backup
- `~/.openclaw/openclaw.json.backup.pre-cleanup.20260407-*`

## Verification
- [x] WORKER model functional (tested)
- [x] Kimi still primary
- [x] Gateway restarted successfully

## Related
- [[WORKER_Agent_Project_S-001-0004]]
- [[threekeys]] (API key reference)

---
parent-index: [[07-Projects-Index]]
parent-moc: [[MOC-Tools-Infrastructure]]
