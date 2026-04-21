---
id: ISSUE-018
title: Memory Semantic Search — OpenRouter Embedding Configuration
assignee: RON
energy: 30m / $0.10
priority: P2
status: completed
created: 2026-04-21
parent: none
spawned: []
---

## Success Criteria
- [ ] Configure OpenRouter API key for text-embedding-3-small
- [ ] Verify LanceDB semantic search activation
- [ ] Test vector search with insulin resistance query
- [ ] Confirm context injection in conversations
- [ ] Document configuration

## Context
LanceDB memory active, FTS working. Semantic search pending embedding provider. OpenRouter offers text-embedding-3-small via existing FORG API key. Optional but valuable for zettel recall.

## Source Location
- ~/.openclaw/openclaw.json — memory-lancedb plugin config
- ISSUE-011 — LanceDB activation (completed)
- ISSUE-012 — Active Memory subagent (completed)

## Progress Log
- [10:45] Issue created
- [10:47] Issue activated
- [10:48] Updated openclaw.json — switched from Ollama to OpenRouter embeddings
- [10:49] Gateway restarted for configuration changes
- [10:50] FTS search verified working (insulin resistance vitamin D query)
- [10:51] LanceDB directory pending first auto-capture event

## Blockers
None — optional enhancement

## Notes
Cost: ~$0.0007/month (negligible). Can use existing OpenRouter key.
Current status: FTS (keyword) ✅ | Semantic (vector) ⏸️
