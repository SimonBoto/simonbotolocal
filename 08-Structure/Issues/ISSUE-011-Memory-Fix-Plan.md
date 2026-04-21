---
uid: ISSUE-011
title: Fix Memory Search — Activate Full Semantic Search
status: planned
priority: P1
created: 2026-04-20
---

# ISSUE-011: Fix Memory Search — Activate Full Semantic Search

## Problem

Memory search is **partially working** but not "truly activated":
- ✅ FTS (keyword) search works
- ✅ 68 files indexed
- ❌ **No embedding provider** → no semantic search
- ❌ **Vector: unknown** → can't do similarity search
- ❌ **Provider: none** → no AI-powered recall

## Root Cause

Missing `memory.embedding` configuration in OpenClaw config.

Current state from `openclaw memory status`:
```
Provider: none (requested: auto)
Vector: unknown
```

## Solution Options

| Option | Provider | Cost | Quality | Speed | Status |
|--------|----------|------|---------|-------|--------|
| A | OpenAI `text-embedding-3-small` | $0.02/1M tokens | ⭐⭐⭐ Best | Fast | ⚠️ Requires config research |
| B | Ollama (local) | Free | ⭐⭐ Good | Slow | ✅ Available |
| C | **memory-lancedb plugin** | Free (local) | ⭐⭐⭐ Best | Fast | ✅ **RECOMMENDED** |
| D | OpenRouter (if available) | Free tier | ⭐⭐ Good | Medium | ❌ Not available |

## Recommended: Option C (memory-lancedb plugin)

**Why:** Native OpenClaw plugin, local vector DB, no API costs, matches Grok document's "LanceDB" mention.

**What it provides:**
- LanceDB-backed vector storage
- Auto-recall/capture
- Local-first (no cloud dependency)
- Integrates with existing memory-core

## Implementation: Option C (memory-lancedb)

**Why:** Best quality, reasonable cost, instant activation.

**Cost estimate:**
- 68 files × ~500 tokens avg = 34k tokens
- Initial index: ~$0.0007
- Monthly updates: ~$0.0001
- **Essentially free**

## Implementation Plan (Revised)

### Phase 1: Install & Configure memory-lancedb Plugin (10 min)

**Step 1.1:** Install the plugin
```bash
openclaw plugin install @openclaw/memory-lancedb
```

**Step 1.2:** Add to config
```json
{
  "plugins": {
    "entries": {
      "memory-lancedb": {
        "enabled": true,
        "config": {
          "path": "~/.openclaw/memory/lancedb",
          "embedding": {
            "provider": "ollama",
            "model": "nomic-embed-text"
          }
        }
      }
    }
  }
}
```

**Step 1.3:** Switch memory backend
```json
{
  "memory": {
    "backend": "lancedb"
  }
}
```

### Alternative: Option A (OpenAI Embeddings) - If LanceDB fails

**Phase 1A: Configure OpenAI Embeddings (5 min)**

Add to `~/.openclaw/openclaw.json`:

```json
{
  "memory": {
    "embedding": {
      "provider": "openai",
      "model": "text-embedding-3-small",
      "dimensions": 1536,
      "batchSize": 100
    }
  }
}
```

Add auth profile:
```json
{
  "auth": {
    "profiles": {
      "openai:default": {
        "provider": "openai",
        "mode": "api_key"
      }
    }
  }
}
```

### Phase 2: Add OpenAI Provider (5 min)

```json
{
  "models": {
    "providers": {
      "openai": {
        "baseUrl": "https://api.openai.com/v1",
        "api": "openai-completions",
        "models": [
          {
            "id": "text-embedding-3-small",
            "name": "OpenAI Embedding 3 Small",
            "contextWindow": 8192
          }
        ]
      }
    }
  }
}
```

### Phase 3: Reindex with Embeddings (10 min)

```bash
openclaw memory index --force
```

Expected output:
```
Indexed: 68/68 files · 286 chunks
Provider: openai/text-embedding-3-small
Vector: ready (1536d)
```

### Phase 4: Test Semantic Search (5 min)

```bash
openclaw memory search "insulin resistance mechanisms"
```

Should return semantically relevant results, not just keyword matches.

### Phase 5: Enable Deep Dreaming (Optional)

In `memory-core` plugin config:
```json
{
  "phases": {
    "deep": {
      "enabled": true,
      "limit": 5,
      "minScore": 0.85
    }
  }
}
```

## Success Criteria

- [ ] `openclaw memory status` shows `Provider: openai/text-embedding-3-small`
- [ ] `Vector: ready (1536d)`
- [ ] Semantic search returns relevant results for concept queries
- [ ] Deep dreaming can be enabled (optional)

## Risks

| Risk | Mitigation |
|------|------------|
| OpenAI API key needed | Use existing OpenRouter key if possible, or add OpenAI key |
| Cost concerns | $0.001/month is negligible |
| Privacy | Embeddings are anonymous vectors, not stored text |

## Alternative: Option B (Ollama Local)

If you prefer no cloud dependency:

```bash
# Install Ollama
curl -fsSL https://ollama.com/install.sh | sh

# Pull embedding model
ollama pull nomic-embed-text

# Configure OpenClaw
{
  "memory": {
    "embedding": {
      "provider": "ollama",
      "model": "nomic-embed-text",
      "dimensions": 768
    }
  }
}
```

**Trade-off:** Free but slower, requires local GPU/CPU.

## Implementation Status

| Phase | Status | Notes |
|-------|--------|-------|
| 1.1 | ✅ | memory-lancedb plugin configured |
| 1.2 | ⚠️ | nomic-embed-text download interrupted (35%) |
| 1.3 | ⏳ | Pending model download |
| 1.4 | ⏳ | Pending |
| 1.5 | ⏳ | Pending |

## Current State

**Config updated:** `~/.openclaw/openclaw.json` now includes:
```json
"memory-lancedb": {
  "enabled": true,
  "config": {
    "dbPath": "~/.openclaw/memory/lancedb",
    "embedding": {
      "apiKey": "ollama",
      "baseUrl": "http://localhost:11434/v1",
      "model": "nomic-embed-text",
      "dimensions": 768
    },
    "autoCapture": true,
    "autoRecall": true
  }
}
```

**Missing:** nomic-embed-text model (download interrupted)

## Next Steps

1. **Complete download:** `ollama pull nomic-embed-text` (takes ~5 min)
2. **Switch backend:** Add `"memory": { "backend": "lancedb" }` to config
3. **Reindex:** `openclaw memory index --force`
4. **Test:** `openclaw memory search "your query"`

## Decision

**Resume tomorrow?** It's 23:17, the download takes time, and we've had a productive day.

**Or continue now?** I can retry the download if you want to complete tonight.
