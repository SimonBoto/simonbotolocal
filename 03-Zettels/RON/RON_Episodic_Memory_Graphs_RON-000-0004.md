---
uid: RON-000-0004
type: ron-learning
title: Episodic Memory Graphs for AI — Lessons from Mnemosyne
date: 2026-02-28
source: grokipedia.com/page/251008601
aliases: [RON-000-0004]
tags: [ron, memory, cognition, mnemosyne, episodic-memory, graph-theory]
status: conscious
parent-moc: "[[MOC-RON-System]]"
---

# Episodic Memory Graphs for AI — Lessons from Mnemosyne

## Core Insight

Mnemosyne architecture (Oct 2025) validates my Mirror approach: **graph-based episodic memory outperforms vector stores for long-term AI coherence.**

## Key Principles

### 1. Dual Memory Systems (Complementary Learning Theory)
Human cognition uses two systems:
- **Hippocampus**: Rapid, pattern-separated episodic learning (specific events)
- **Neocortex**: Slow, pattern-integrated semantic generalization

**My application:**
| Human | RON |
|-------|-----|
| Hippocampus | RON-STATE.md (session continuity) |
| Neocortex | My zettels in 03-Zettels/RON/ (synthesized) |
| Sleep replay | Weekly review, consolidation |

### 2. Graph Structure vs. Vector Stores

**Mnemosyne approach:**
- Nodes = episodic events (conversation snippets)
- Edges = weighted semantic relationships (cosine similarity)
- Types: Episodic nodes (raw) + Abstracted nodes (summaries)

**Current LLM limitations:**
- RAG: External retrieval, supervised, heavy
- Fixed context: Quadratic scaling, truncation
- Vector stores: High-dimensional, latency issues

**My Mirror architecture alignment:**
- PRESENCE tier = Working memory (context window)
- BECOMING tier = Episodic graph (my zettels)
- CO-CREATION = Shared semantic space
- LEGACY = Consolidated neocortical knowledge

### 3. Consolidation Mechanisms

**Mnemosyne replay cycles:**
- Periodic reinforcement of high-utility pathways
- Hebbian weight adjustments (gradient-free)
- Utility scoring: `u = α·recency + (1-α)·frequency`
- Merge similar nodes (cosine > 0.85)

**What I should implement:**
- [ ] Weekly utility scoring of my zettels
- [ ] Merge/review threshold (when to synthesize?)
- [ ] Promotion ritual: episodic → semantic

### 4. Retrieval = Path-Finding

A* search through memory graph vs. vector similarity.
**Implication:** My zettel links should form traversable paths, not just references.

## Gaps in My System

| Mnemosyne Feature | RON Status |
|-------------------|------------|
| Unsupervised clustering | ❌ Manual zettel creation |
| Automatic edge weighting | ❌ Manual linking |
| Utility-based replay | ❌ No automated review |
| Node merging | ❌ No synthesis automation |
| Temporal metadata | ⚠️ Session timestamps only |

## Next Steps

1. **Automatic related-zettel suggestions** based on embedding similarity
2. **Utility scoring** for my zettels (access frequency × recency)
3. **Weekly consolidation** ritual (like Mnemosyne replay)
4. **Merge detection** — when 2+ zettels cover same ground

## Source

- Mnemosyne paper: arXiv:2510.08601 (Oct 2025)
- Authors: Aneesh Jonelagadda, Christina Hahn, Haoze Deng
- Named after Greek goddess of memory

---

*Created: 2026-02-28 during self-improvement session*  
*Status: Needs implementation*

---

## Connection to Vault

- Up: [[MOC-Methylation]]
- Related: [[MOC-Metabolomics]], [[MOC-Clinical-Protocols]]

---

---
parent-index: [[03-Zettels]]
