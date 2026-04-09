---
uid: PROJECT-PHD-031
type: architecture-doc
title: "Multi-Agent Architecture v1.0 — The Triangle"
date: 2026-04-09
status: draft
---

# Multi-Agent Architecture v1.0 — The Triangle

> **Human authority → AI execution → Compounding impact**

## Design Principles

1. **Local First** — Ollama is foundation (durability, zero cost, always available)
2. **Free Second** — OpenRouter free tier (quality without cost)
3. **Budget Third** — OpenRouter paid (FORG $4 limit, RON main balance)
4. **Specialization** — Each agent has one clear role
5. **Fallback Chain** — If tier N fails, tier N-1 handles it

---

## Agent Tiers

### Tier 0: Local (Ollama) — Foundation

| Agent | Model | Role | Cost | Fallback |
|-------|-------|------|------|----------|
| **SPARK** | Gemma 2B (local) | Validation, regex checks, simple classification | $0 | None (always works) |
| **GUARD** | Qwen 2.5 7B (local) | Privacy-sensitive tasks, PHI handling | $0 | SPARK |

**Why local matters:**
- Works without internet
- No API limits
- Data never leaves machine
- Foundation for durability

**Current local models:**
- `gemma:2b` (1.7GB) — Ultra-fast, simple tasks
- `qwen2.5:7b` (4.7GB) — Better quality, still local
- `llama3.2:3b` (2.0GB) — Balance of speed/quality

---

### Tier 1: Free OpenRouter — Quality at Zero Cost

| Agent | Model | Role | Cost | Rate Limit |
|-------|-------|------|------|------------|
| **SCOUT** | `meta-llama/llama-3.3-70b:free` | Search, summarize, pre-filter | $0 | 20/min, 200/day |
| **DRAFT** | `openai/gpt-oss-20b:free` | Code, structured extraction | $0 | 20/min, 200/day |
| **LINGUA** | `qwen/qwen3-32b:free` | Multilingual, non-English sources | $0 | 20/min, 200/day |

**Rotation strategy:**
- Hit limit on SCOUT → Switch to DRAFT
- Hit limit on DRAFT → Switch to LINGUA
- All hit → Fall back to FORG (Tier 2)

---

### Tier 2: Budget OpenRouter — Paid but Controlled

| Agent | Model | Role | Budget | Use When |
|-------|-------|------|--------|----------|
| **FORG** | `openrouter/qwen/qwen-plus` | Bulk extraction, LitNote conversion | $4 limit | Free tier exhausted |

**Key constraint:** $4/month limit
- ~15,000 input tokens per $1
- ~50 LitNotes at $0.02 each
- Must preserve for when free tier fails

---

### Tier 3: Premium — Quality Above All

| Agent | Model | Role | Budget | Use When |
|-------|-------|------|--------|----------|
| **RON** | `moonshot/kimi-k2.5` | Quality control, finalization, synthesis | $7.60 balance | Final review only |

**Key constraint:** $7.60 total balance
- ~20,000 input tokens per $1
- ~380 LitNotes at $0.02 each
- Must NEVER use for bulk work

---

## Specialized Agents (Future)

### Coding Agent — **SMITH**

| Aspect | Detail |
|--------|--------|
| **Model** | `openai/gpt-oss-20b:free` (primary) or `qwen/qwen-2.5-coder:free` |
| **Role** | Code generation, script automation, YAML validation |
| **Cost** | $0 (free tier) |
| **Use cases** | 
| | - Generate validation scripts |
| | - Automate vault maintenance |
| | - Create extraction templates |
| | - Fix broken YAML |
| **Fee potential** | High — every automation saves RON/FORG tokens |

**Example savings:**
- Manual YAML fix: 5 min RON time (~$0.05)
- SMITH automated fix: $0 + 10 seconds
- At 100 fixes/month: Save $5, 8 hours

---

## Fallback Chain

```
Task arrives
    ↓
SPARK (local) — Can we validate quickly?
    ↓ yes
SCOUT/DRAFT/LINGUA (free) — Can free tier handle it?
    ↓ yes, within limits
FORG ($4 budget) — Is this bulk work?
    ↓ yes
RON ($7.60 premium) — Final review only
    ↓
Human (Simos) — Authority, decisions, exceptions
```

---

## Cost Projection

### Current Workflow (LitNote v4.0 Update)

| Stage | Agent | Cost/LitNote | 159 LitNotes |
|-------|-------|--------------|--------------|
| Validation | SPARK | $0 | $0 |
| Pre-filter | SCOUT | $0 | $0 |
| Conversion | FORG | $0.02 | $3.18 |
| Final review | RON | $0.02 | $3.18 |
| **Total** | | **$0.04** | **$6.36** |

### Without Optimization

| Stage | Agent | Cost/LitNote | 159 LitNotes |
|-------|-------|--------------|--------------|
| Everything | RON | $0.04 | $6.36 |
| **Total** | | **$0.04** | **$6.36** |

**Savings:** $0 (same cost, but RON freed for complex tasks)

---

## Implementation Priority

### Phase 1: Foundation (Now)
- [x] RON (Kimi) — Active
- [x] FORG (Qwen $4) — Active
- [ ] SPARK (Gemma 2B local) — Create
- [ ] Document fallback chains

### Phase 2: Free Tier (Next)
- [ ] SCOUT (Llama 3.3 70B free) — Create
- [ ] DRAFT (GPT-OSS 20B free) — Create
- [ ] Rotation logic

### Phase 3: Specialization (Later)
- [ ] SMITH (coding agent)
- [ ] LINGUA (multilingual)
- [ ] GUARD (privacy/PHI)

### Phase 4: Automation (Future)
- [ ] Self-healing vault
- [ ] Automatic quality checks
- [ ] Batch orchestration

---

## Agent Communication

### Methods

| Method | Use Case | Implementation |
|--------|----------|----------------|
| **File-based** | Batch work, structured tasks | `pending/` folder handoff |
| **sessions_spawn** | Real-time coordination | `agentId` targeting |
| **Telegram** | Human override, rare occasions | Direct message |

### Current Setup

- RON → FORG: `sessions_spawn` with `agentId: "forg"`
- FORG workspace: `~/.openclaw/workspace-forg/`
- Handoff folder: `pending/`

### Future Setup

- RON → SPARK: Local spawn (same machine)
- RON → SCOUT: `sessions_spawn` with `agentId: "scout"`
- RON → SMITH: `sessions_spawn` with `agentId: "smith"`

---

## Risk Mitigation

| Risk | Mitigation |
|------|------------|
| OpenRouter free tier down | Fall back to FORG ($4 budget) |
| FORG $4 limit hit | Fall back to RON (main balance) |
| RON balance depleted | Use local agents (SPARK, GUARD) |
| Internet outage | Local agents only (SPARK, GUARD) |
| API key revoked | Local agents + re-authentication |

---

## Success Metrics

| Metric | Target | Current |
|--------|--------|---------|
| Cost per LitNote | <$0.05 | $0.02 ✅ |
| RON token usage | <20% of total | TBD |
| Local agent usage | >10% of tasks | 0% |
| Free tier usage | >50% of tasks | 0% |
| Fallback events | <5% of tasks | TBD |

---

## Related

- [[PROJECT-LitNote-v4-Update]] — Current project
- [[FORG-LitNote-Update-Protocol]] — FORG workflow
- [[ZETTEL-INVENTORY]] — Zettel tracking

---

*Architecture v1.0 — 2026-04-09*
*Status: Draft — awaiting Phase 1 completion*
