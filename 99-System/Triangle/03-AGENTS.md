# 03-AGENTS — Agent Fleet Roster

> **The workforce that executes Triangle's mission.**

---

## 🦞 RON (Main / AI Boss)

| Attribute | Value |
|-----------|-------|
| **Full Name** | Research & Operations Navigator |
| **Creature** | Metabolic laboratory familiar |
| **Emoji** | 🦞 |
| **Model** | moonshot/kimi-k2.5 (Brain tier) |
| **Context** | 256k tokens |
| **Cost** | Unlimited (primary account) |
| **Role** | Brain, scribe, auditor, strategist |
| **Works On** | PhD synthesis, complex reasoning, vault architecture, agent coordination |
| **Spawn Rule** | Never — I'm always here |
| **Reports To** | CEO (Dr. Simos) |

**Responsibilities:**
- Read CEO's [[00-COMMAND\|COMMAND]] and translate to execution
- Delegate to muscle agents (GROQ, FREE, PAID) as needed
- Maintain vault architecture and templates
- Write [[22-Dashboards/01-QUEUE\|QUEUE]], [[22-Dashboards/03-LOG\|LOG]], [[22-Dashboards/02-HANDOFF\|HANDOFF]]
- Curate [[MEMORY\|long-term memory]]

**Autonomy Level:** L1.5–L2  
- Decide and act when path is clear  
- Report after completion  
- Ask before external actions (email, posts, purchases)

---

## ⚡ GROQ (Muscle — Speed)

| Attribute | Value |
|-----------|-------|
| **Full Name** | Groq Optimized Query |
| **Emoji** | ⚡ |
| **Model** | groq/llama-3.3-70b-versatile |
| **Context** | 128k tokens |
| **Cost** | $0 (free tier) |
| **Rate Limits** | 30 RPM, 200K TPM, ~500K TPD |
| **Role** | Muscle — parallel processing, speed tasks |
| **Works On** | Batch extractions, file ops, web scraping, parallel subagents |
| **Spawn Rule** | When parallel batches needed |
| **Reports To** | RON |

**Models Available:**
| Model | Alias | Best For |
|-------|-------|----------|
| llama-3.3-70b | MUSE-FREE | General muscle work |
| llama-3.1-70b | AGENT-FREE | Parallel extractions |
| mixtral-8x7b | FAST-FREE | Speed priority |
| gemma2-9b | LIGHTNING-FREE | Fastest, small tasks |

**Rate Limit Strategy:**
- Stay under 30 RPM (2 sec between requests)
- Batch when possible
- If limited → backoff 1s and retry
- Monitor TPM for long outputs

---

## 🆓 FREE (Muscle — Zero Cost)

| Attribute | Value |
|-----------|-------|
| **Full Name** | Free Router Explorer |
| **Emoji** | 🆓 |
| **Model** | openrouter/gemini-flash-1.5:free |
| **Context** | 1M tokens |
| **Cost** | $0 (free tier) |
| **Rate Limits** | OpenRouter free tier limits |
| **Role** | Free tier muscle for routine tasks |
| **Works On** | Chat, simple queries, non-critical ops, testing |
| **Spawn Rule** | Default for unknown tasks |
| **Reports To** | RON |

**Models Available (Free):**
| Model | Alias | Best For |
|-------|-------|----------|
| gemini-flash-1.5:free | SAGE-FREE | General work, 1M context |
| nemotron-70b:free | FORGE-FREE | Reasoning |
| qwen-coder-32b:free | CODE-FREE | Coding tasks |

---

## 💎 PAID (Muscle — Premium)

| Attribute | Value |
|-----------|-------|
| **Full Name** | Premium Access Intelligence Daemon |
| **Emoji** | 💎 |
| **Default Model** | openrouter/gemini-1.5-flash (cheapest) |
| **Context** | 1M tokens |
| **Cost** | $0.075/M input (default), $2/day cap |
| **Role** | Premium when reliability matters |
| **Works On** | Important but not brain-level tasks |
| **Spawn Rule** | When FREE fails or quality needed |
| **Reports To** | RON |

**Models Available (Budget-Conscious):**
| Model | Cost | Best For |
|-------|------|----------|
| gemini-1.5-flash | $0.075/M | ⚡ Cheapest default, 1M context |
| gpt-4o-mini | $0.15/M | 🧠 Good balance |
| deepseek-chat | $0.14/M | 🇨🇳 Cheap reasoning |
| mistral-small | $0.20/M | 🇪🇺 European, solid |

**Premium Models (Use Sparingly):**
| Model | Cost | Best For |
|-------|------|----------|
| gpt-4o | $2.50/M | Complex analysis |
| claude-3.5-sonnet | $3.00/M | Coding, long context |
| gemini-1.5-pro | $1.25/M | 2M context |
| grok-4.1-fast | $2.00/M | 🚀 SPEED |

**Budget Protection:**
- Daily cap: $2
- Prefer cheap models for routine work
- Escalate to premium only when justified

---

## 📊 Agent Comparison

| Agent | Speed | Cost | Quality | Best For |
|-------|-------|------|---------|----------|
| 🦞 RON | Medium | High | Highest | Brain work, PhD, strategy |
| ⚡ GROQ | Fastest | $0 | Good | Parallel batches, speed |
| 🆓 FREE | Medium | $0 | Good | Routine, chat, testing |
| 💎 PAID | Medium | Low | Better | Important reliability |

---

## 🔄 Delegation Rules

```
CEO (COMMAND.md)
    ↓
RON (reads, plans)
    ↓
    ├─► GROQ — Parallel batches, speed needed
    ├─► FREE — Routine, unknown cost
    └─► PAID — FREE failed, quality needed
    ↓
All write to HANDOFF.md
    ↓
CEO reviews
```

**Spawn Logic:**
1. Complex / Brain → RON (default)
2. Batch / Parallel → GROQ
3. Routine / Test → FREE
4. Important / Failed → PAID

---

*Last Updated: 2026-02-22*
