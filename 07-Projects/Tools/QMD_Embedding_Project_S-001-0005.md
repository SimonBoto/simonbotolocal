---
uid: S-001-0005
type: synthesis
title: QMD Embedding Project
domain: 901
status: active
created: 2026-04-07
---

# QMD Embedding Project

## Status: 🔴 Blocked — Embeddings Incomplete

## Goal
Complete QMD embedding generation for the vault to enable semantic search and 90% token cost reduction on vault queries.

## Current State
- ✅ Collection "vault" created (2,590 files indexed)
- ✅ Index size: 106.5 MB
- ❌ **Vectors: 0 embedded** (2,580 pending)
- ❌ Embedding process interrupted

## Technical Details

| Component | Status |
|-----------|--------|
| BM25 index | ✅ Active |
| Vector embeddings | ❌ Not started |
| AST Chunking | ✅ Active |
| GPU (AMD Radeon Vega 8) | ✅ Available (3.5GB VRAM) |

## Models to Download
- **Embedding**: gemma-300M-Q8_0.gguf (~300MB)
- **Reranking**: qwen3-reranker-0.6b-q8_0.gguf (~600MB)
- **Query Expansion**: qmd-query-expansion-1.7B-q4_k_m.gguf (~1GB)

**Total: ~2GB** (one-time download)

## Blocker
Previous embedding process was interrupted. Need to restart:

```bash
qmd embed --collection vault
```

**Estimated time**: 2-4 hours for 2,580 files on current hardware

## Success Criteria
- [ ] All 2,590 files have embeddings
- [ ] `qmd query "adipic acid"` returns semantic results
- [ ] Token cost for vault queries reduced by 60-90%

## Next Steps
1. [ ] Restart embedding process
2. [ ] Monitor progress
3. [ ] Test semantic search
4. [ ] Integrate into RON workflow

## Impact
| Query Type | Before | After | Savings |
|------------|--------|-------|---------|
| Find zettel by content | Read 10 files (50KB) | QMD search (5KB) | 90% |
| Research question | Manual search | Semantic query | 60% |
| Daily context loading | Full MEMORY.md | Targeted retrieval | 70% |

## Related
- [[QMD_Activation_S-001-0002]]
- [[WORKER_Agent_Project_S-001-0004]]

---
parent-index: [[07 Projects Index]]
parent-moc: [[MOC-Tools-Infrastructure]]
