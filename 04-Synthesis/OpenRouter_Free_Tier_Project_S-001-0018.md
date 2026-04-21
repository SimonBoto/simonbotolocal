---
uid: S-001-0018
type: synthesis
title: OpenRouter Free Tier Project
date: 2026-04-08
status: active
domain: 901
tags: [project, agent, openrouter, free-models, cost-optimization]
parent-index: "[[07-Projects-Index]]"
parent-moc: "[[MOC-Agents]]"
---

# OpenRouter Free Tier Project

## Purpose
Dedicated API key for OpenRouter's free model tier — isolate free vs paid usage.

## Why Separate Key?
| Concern | Solution |
|---------|----------|
| **Cost control** | Free key cannot accidentally use paid models |
| **Rate limits** | Free tier has limits; paid key unaffected |
| **Testing safety** | Experiment without spending |
| **Budget tracking** | Clear separation of free vs paid usage |

## Free Models Available
| Model | Provider | Context | Best For |
|-------|----------|---------|----------|
| `nvidia/llama-3.1-nemotron-70b-instruct:free` | NVIDIA | 128K | General tasks, reasoning |
| `google/gemini-flash-1.5:free` | Google | 1M | Long context, fast |
| `qwen/qwen-2.5-coder-32b-instruct:free` | Alibaba | 32K | Code, structured output |
| `meta-llama/llama-3.3-70b-instruct:free` | Meta | 128K | General tasks |

## Configuration
```json
{
  "auth": {
    "profiles": {
      "openrouter:free": {
        "provider": "openrouter",
        "mode": "api_key"
      }
    }
  },
  "models": {
    "providers": {
      "openrouter": {
        "models": [
          {
            "id": "nvidia/llama-3.1-nemotron-70b-instruct:free",
            "name": "Nemotron 70B (FREE)",
            "cost": { "input": 0, "output": 0 }
          },
          {
            "id": "google/gemini-flash-1.5:free",
            "name": "Gemini Flash (FREE)",
            "cost": { "input": 0, "output": 0 }
          }
        ]
      }
    }
  }
}
```

## Limitations
- **Rate limits:** ~10-20 requests/minute (varies by model)
- **Availability:** Not guaranteed (donated compute)
- **No fallback:** If free tier down, request fails
- **Quality:** Varies; test before relying on

## Use Cases
1. **Quick tests** — Validate prompts before paid run
2. **Low-priority tasks** — Drafts, summaries, formatting
3. **Bulk operations** — When rate limits acceptable
4. **Cost-zero experimentation** — Try new approaches

## API Key Location
- **Profile:** `openrouter:free`
- **Storage:** `~/.openclaw/agents/<agentId>/agent/auth-profiles.json`
- **Get key:** https://openrouter.ai/keys (create separate key)

## Status
- [ ] Create separate OpenRouter API key
- [ ] Add `openrouter:free` auth profile
- [ ] Configure free models in OpenClaw
- [ ] Test rate limits
- [ ] Document which models work best

---

*Created: 2026-04-08*
