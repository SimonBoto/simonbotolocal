# 🤖 AIB AGENT CONFIGURATION
> API keys, models, and routing rules for agent swarm  
> **Status:** Setup phase  
> **Last updated:** 2026-02-22

---

## AGENT ROSTER

| Agent | Role | Default Model | Provider | Use Case |
|-------|------|---------------|----------|----------|
| **RON** 🦞 | Main/Scribe/Auditor | moonshot/kimi-k2.5 | Moonshot | Complex reasoning, PhD work |
| **MUSE** 🎨 | Creative/Content | llama-3.1-70b/llama-3.3-70b | Groq | Fast creative generation |
| **SAGE** 📚 | Research/Deep Dive | deepseek-r1 | OpenRouter (paid) | Deep research, analysis |
| **FORGE** ⚡ | Execution/Tools | qwen-2.5-coder-32b | OpenRouter (free) | Code, tools, execution |
| **ECHO** 🔮 | Memory/Continuity | gemma-2-27b | Ollama (local) | Private memory, continuity |

---

## API CONFIGURATION

### 1. GROQ (MUSE - High Speed)
**Status:** 🔴 Needs API key  
**Models:**
- `llama-3.3-70b-versatile` (default for MUSE)
- `llama-3.1-70b-versatile` (fallback)
- `mixtral-8x7b-32768` (fast/cheap)

**Rate limits:**
- 30 requests/minute (free tier)
- 6,000 tokens/minute

**Get key:** https://console.groq.com  
**Add to:** `~/.openclaw/openclaw.json` → `auth.profiles.groq`

### 2. OPENROUTER (SAGE + FORGE)
**Status:** 🔴 Needs API key  
**Paid tier (SAGE):**
- `deepseek/deepseek-r1` - Deep reasoning
- `anthropic/claude-3.5-sonnet` - Analysis
- `openai/gpt-4o` - General purpose

**Free tier (FORGE):**
- `qwen/qwen-2.5-coder-32b-instruct` - Code/tools
- `nvidia/llama-3.1-nemotron-70b-instruct` - General
- `google/gemini-flash-1.5` - Fast tasks

**Rate limits:**
- Free: 20 requests/minute
- Paid: Varies by model

**Get key:** https://openrouter.ai  
**Add to:** `~/.openclaw/openclaw.json` → `auth.profiles.openrouter`

### 3. OLLAMA LOCAL (ECHO - Privacy)
**Status:** 🔴 Needs setup  
**Models to pull:**
```bash
ollama pull gemma2:27b        # ECHO default
ollama pull llama3.2:3b       # Fast fallback
ollama pull nomic-embed-text  # Embeddings
```

**Requirements:**
- 16GB+ RAM recommended
- GPU optional but helpful
- Ollama server running on :11434

**Start server:**
```bash
ollama serve
```

**Add to:** `~/.openclaw/openclaw.json` → models.providers.ollama

### 4. MOONSHOT (RON - Main)
**Status:** 🟢 Already configured  
**Model:** `kimi-k2.5`  
**Key:** Already in `auth.profiles.moonshot:default`

---

## SPAWN RULES

### When to Spawn Which Agent

| Task Type | Primary Agent | Model | Why |
|-----------|---------------|-------|-----|
| Literature extraction | RON | kimi-k2.5 | Complex synthesis |
| X post draft | MUSE | llama-3.3-70b | Creative, fast |
| Deep research | SAGE | deepseek-r1 | Thorough analysis |
| Code/tool use | FORGE | qwen-2.5-coder | Code specialist |
| Memory query | ECHO | gemma2:27b | Privacy, local |
| Parallel batch (10 refs) | All 4 | Each model | Speed via parallel |

### Spawn Command Pattern

```javascript
// Example spawn for MUSE
sessions_spawn({
  task: "Draft 3 X posts about adipic acid biomarker",
  agentId: "muse",
  model: "groq/llama-3.3-70b-versatile",
  timeoutSeconds: 120
})
```

---

## ROUTING LOGIC

### Automatic Selection (Default)

```
Input → Classify → Route
    ├── Creative/Content → MUSE (Groq)
    ├── Research/Analysis → SAGE (OpenRouter paid)
    ├── Code/Tools → FORGE (OpenRouter free)
    ├── Memory/Private → ECHO (Ollama local)
    └── Complex/PhD → RON (Moonshot)
```

### Manual Override

You can force any agent:
> "RON, spawn MUSE for this creative task"  
> "Use SAGE for deep research on miR-21"

### Fallback Chain

If primary fails:
1. Try same provider, different model
2. Try different provider, similar tier
3. Fall back to RON (Moonshot)
4. Log failure in SYSTEM.md

---

## COST OPTIMIZATION

| Tier | Cost | Use For |
|------|------|---------|
| **Free** (OpenRouter free, Ollama) | $0 | FORGE, ECHO, testing |
| **Low** (Groq free) | ~$0.001/1K tokens | MUSE, high-volume |
| **Medium** (OpenRouter paid) | ~$0.01/1K tokens | SAGE, important research |
| **High** (Moonshot) | ~$0.05/1K tokens | RON, critical PhD work |

**Monthly budget suggestion:**
- Testing/development: $0 (free tiers)
- Light usage: $10-20
- Heavy PhD work: $50-100

---

## SECURITY NOTES

1. **Never commit API keys** — Use env vars or config only
2. **Rotate monthly** — Set calendar reminder
3. **Monitor usage** — Check dashboards weekly
4. **Local first** — ECHO (Ollama) for sensitive data
5. **Free tier testing** — Always test with free tiers first

---

## SETUP CHECKLIST

### Phase 1: Groq (MUSE) — 5 min
- [ ] Sign up at console.groq.com
- [ ] Generate API key
- [ ] Add to `~/.openclaw/openclaw.json`
- [ ] Test: `sessions_spawn task="hello" agentId="muse"`

### Phase 2: OpenRouter — 5 min
- [ ] Sign up at openrouter.ai
- [ ] Generate API key
- [ ] Add free tier credit (optional)
- [ ] Add to config
- [ ] Test both SAGE and FORGE

### Phase 3: Ollama (ECHO) — 15 min
- [ ] Install Ollama: `curl -fsSL https://ollama.com/install.sh | sh`
- [ ] Pull models: `ollama pull gemma2:27b`
- [ ] Start server: `ollama serve`
- [ ] Add to config
- [ ] Test ECHO spawn

### Phase 4: Integration — 10 min
- [ ] Test parallel spawn (all 4 agents)
- [ ] Verify routing logic
- [ ] Document in SYSTEM.md
- [ ] Update START_HERE.md

---

## CONFIG TEMPLATE

Add to `~/.openclaw/openclaw.json`:

```json
{
  "auth": {
    "profiles": {
      "groq:default": {
        "provider": "groq",
        "apiKey": "gsk_..."
      },
      "openrouter:default": {
        "provider": "openrouter",
        "apiKey": "sk-or-v1-..."
      }
    }
  },
  "models": {
    "providers": {
      "groq": {
        "baseUrl": "https://api.groq.com/openai/v1",
        "api": "openai-completions"
      },
      "openrouter": {
        "baseUrl": "https://openrouter.ai/api/v1",
        "api": "openai-completions"
      },
      "ollama": {
        "baseUrl": "http://localhost:11434/v1",
        "api": "openai-completions"
      }
    }
  }
}
```

---

*Next: Create agent profile pages with Van Gogh-inspired visuals*  
*Then: Set up actual API keys (awaiting your go)*
