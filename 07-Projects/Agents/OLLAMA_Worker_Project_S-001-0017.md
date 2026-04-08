---
uid: S-001-0017
type: synthesis
title: OLLAMA Worker Project
date: 2026-04-08
status: active
domain: 901
tags: [project, agent, ollama, local-llm, gemma]
parent-index: "[[07-Projects-Index]]"
parent-moc: "[[MOC-Agents]]"
---

# OLLAMA Worker Project

## Purpose
Local, private, zero-cost LLM worker for bulk tasks and standby operations.

## Model
- **Name:** Google Gemma 2B
- **Size:** ~1.7GB
- **Hardware:** CPU-only (no GPU required)
- **RAM:** ~2GB at runtime
- **Speed:** Fast (no network latency)

## Use Cases
1. **Standby worker** — When FORG/Qwen Plus unavailable
2. **Privacy-sensitive tasks** — Local processing, no data leaves machine
3. **Bulk text operations** — Summarization, formatting, simple extraction
4. **Testing/development** — Zero API cost experimentation

## Cost
- **API:** $0 (local inference)
- **Hardware:** Existing machine
- **Electricity:** Minimal (2B model, CPU-only)

## Configuration
```json
{
  "models": {
    "providers": {
      "ollama": {
        "api": "openai-completions",
        "baseUrl": "http://127.0.0.1:11434/v1",
        "models": [{
          "id": "gemma:2b",
          "name": "Gemma 2B (OLLAMA)",
          "contextWindow": 8192,
          "cost": { "input": 0, "output": 0 }
        }]
      }
    }
  }
}
```

## Limitations
- **Smarter models:** Gemma 2B < Qwen Plus < Kimi k2.5
- **Context:** 8K tokens (vs 1M for Qwen Plus)
- **No vision:** Text-only
- **No tool use:** Simple completion only

## Status
- [x] Ollama installed (v0.15.5)
- [ ] Gemma 2B downloaded
- [ ] OpenClaw plugin configured
- [ ] Test inference
- [ ] Document performance benchmarks

---

*Created: 2026-04-08*
