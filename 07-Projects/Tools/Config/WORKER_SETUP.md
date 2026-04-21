---
uid: WORKER-SETUP-2026-04-06
type: documentation
title: "Worker Agent Setup — RON's Employee"
date: 2026-04-06
status: active
---

# Worker Agent Setup

> **RON's employee — cheaper model for bulk work via subagent spawning**

---

## Architecture

```
You → RON (Kimi k2.5) → sessions_spawn(model="minimax/minimax-2.7") → Worker Subagent → Result → RON → You
         $0.04/1K tok                              $0.002/1K tok                    (20x cheaper)
```

**Key insight:** `sessions_spawn` accepts a `model` parameter that overrides the default!

---

## How RON Spawns Worker

```javascript
sessions_spawn({
  task: "Research adipic acid biomarkers, draft 3 zettels",
  model: "minimax/minimax-2.7",  // ← Cheaper model!
  runTimeoutSeconds: 300,
  mode: "run"
})
```

**Result:** Worker runs on Minimax 2.7, returns results to RON (Kimi k2.5).

---

## Config Needed

**In `~/.openclaw/openclaw.json`:**

```json
{
  "models": {
    "minimax/minimax-2.7": {
      "alias": "WORKER",
      "provider": "openrouter",
      "apiKey": "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"
    }
  }
}
```

**No separate agent needed!** Worker is a subagent with different model.

---

## When RON Uses Worker

| Task Type | RON (Kimi) | Worker (Minimax) |
|-----------|------------|------------------|
| Strategy, decisions | ✅ | ❌ |
| Complex synthesis | ✅ | ❌ |
| Research, data gathering | ❌ | ✅ |
| Drafting zettels (bulk) | ❌ | ✅ |
| Verification, fact-checking | ❌ | ✅ |
| Web searches | ❌ | ✅ |
| Template filling | ❌ | ✅ |

---

## Delegation Protocol

**RON decides → Spawns worker with specific task → Worker executes → Returns to RON → RON reviews → Reports to you**

**Example workflow:**

1. You: "Extract 10 zettels from this CGPT conversation"
2. RON: Plans extraction, identifies 10 concepts
3. RON: Spawns 2-3 worker subagents (parallel) with model="WORKER"
4. Workers: Draft zettels on Minimax (cheap)
5. RON: Reviews, fixes, integrates
6. RON: Commits git, reports to you

---

## Cost Savings

| Model | Input | Output | Use For |
|-------|-------|--------|---------|
| RON (Kimi k2.5) | $0.04/1K | $0.04/1K | Strategy, complex tasks, final review |
| Worker (Minimax 2.7) | $0.001/1K | $0.002/1K | Research, drafting, verification |

**Estimated savings:** 80-95% on bulk work

---

## Safety & Limits

- Worker subagent **cannot spawn children** (maxSpawnDepth: 1 default)
- Worker **inherits RON's tools** (read, write, web_search, etc.)
- Worker **no session tools** (can't spawn, list sessions, etc.)
- RON **reviews all outputs** before committing
- Timeout: 5-15 minutes per task

---

## Implementation

### 1. Add Worker Model to Config

```bash
# Add to ~/.openclaw/openclaw.json models section:
"minimax/minimax-2.7": {
  "alias": "WORKER",
  "provider": "openrouter",
  "apiKey": "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"
}
```

### 2. Restart Gateway

```bash
openclaw gateway restart
```

### 3. RON Uses Worker

I (RON) will automatically spawn worker subagents when appropriate.

---

## Files Created

- `WORKER_SETUP.md` — This documentation

**No separate agent files needed!** Worker is spawned dynamically with `sessions_spawn(model="WORKER")`.

---

*Worker = RON's cheap hands, RON = your brain*
