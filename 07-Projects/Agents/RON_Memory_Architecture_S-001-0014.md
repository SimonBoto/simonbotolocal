---
uid: S-001-0014
type: synthesis
title: RON Memory Architecture — Inspired by Roemmele & Karpathy
date: 2026-04-07
aliases: [RON-Memory-Design, Agent-Memory-Architecture]
tags: [synthesis, memory, architecture, roemmele, karpathy, ron, forg]
status: active
parent-index: [[Agents-Index]]
parent-moc: [[MOC-RON-Development]]
---

# RON Memory Architecture — Inspired by Roemmele & Karpathy

> **How Brian Roemmele and Andrej Karpathy organize agent memory without overload**

---

## Quick Reference

| Source | Core Insight | Our Application |
|--------|--------------|-----------------|
| **Roemmele** | Memory forgetting: relevance scoring + intelligent pruning | Add relevance to MEMORY.md (future) |
| **Karpathy** | LLM Knowledge Bases: raw→compiled flow, Obsidian IDE | FORG drafts → RON validates |

**Cost Savings:** 95% FORG ($0.26/M) + 5% RON ($40/M) = **~98% reduction**

**Status:** Research complete → Implementation pending

---

> **How Brian Roemmele and Andrej Karpathy organize agent memory without overload**

---

## Key Insights from Research

### Brian Roemmele — "Memory Forgetting Strategy" (Apr 3, 2026)

> *"Novel Memory Forgetting Strategy Lets Autonomous Agents Run Forever Without Exploding Memory or Losing Focus"*

**Roemmele's Principles:**
1. **Relevance scoring** — Not all memories are equal
2. **Intelligent forgetting** — Prune low-value memories
3. **Preserve long-term task performance** — Keep what matters
4. **Named agents with SOUL files** — Distinct identities (PicoClaw, etc.)
5. **Love Equation Alignment** — Mathematical safety bands (Green/Yellow/Red)

**Application to RON/FORG:**
- ✅ SOUL.md + SOUL-FORG.md — Distinct agent identities
- ✅ MEMORY.md — Curated, not exhaustive (relevance scoring)
- ✅ Weekly consolidation ritual — Intelligent forgetting
- ⚠️ **TODO:** Add relevance scoring to memory entries

---

### Andrej Karpathy — "LLM Knowledge Bases" (Apr 2, 2026)

> *"Using LLMs to build personal knowledge bases for various topics of research interest. A large fraction of my recent token throughput is going less into manipulating code, and more into manipulating knowledge (stored as markdown and images)."*

**Karpathy's Architecture:**

```
raw/                    ← Source documents (articles, papers, repos)
  ↓ LLM compilation
wiki/                   ← Compiled .md files (summaries, backlinks, concepts)
  ↓ Obsidian IDE
Q&A + Visualizations    ← Queries render markdown/slides/images
  ↓ Filing
Enhanced wiki           ← Outputs add back to knowledge base
```

**Key Principles:**
1. **Data ingest** → Index sources into `raw/`
2. **LLM compilation** → Auto-generate wiki (NOT manual)
3. **Obsidian as IDE** — View raw + compiled + visualizations
4. **Q&A against wiki** — LLM researches answers, renders outputs
5. **Linting/health checks** — Find inconsistencies, impute missing data
6. **Explicit memory artifact** — Not "allegedly gets better with use"

**Karpathy's Tools:**
- Obsidian Web Clipper for articles
- Local image downloads for LLM reference
- Marp for slide rendering
- Matplotlib for visual outputs
- Custom search engine CLI tool

---

## Synthesis: RON/FORG Memory Architecture

### Current Alignment

| Component | Roemmele | Karpathy | RON/FORG Status |
|-----------|----------|----------|-----------------|
| **Named agents** | ✅ PicoClaw | ⚠️ Generic | ✅ RON + FORG |
| **SOUL files** | ✅ Core identity | ❌ None | ✅ SOUL.md + SOUL-FORG.md |
| **Relevance scoring** | ✅ Explicit | ⚠️ Implicit | ⚠️ **NEEDS WORK** |
| **Forgetting strategy** | ✅ Intelligent prune | ⚠️ Manual | ✅ Weekly ritual |
| **Raw data** | ⚠️ Audio/video | ✅ Documents | ✅ 00-Inbox/ |
| **Compiled wiki** | ⚠️ HyperCard | ✅ Markdown | ✅ Vault structure |
| **Obsidian IDE** | ⚠️ Stacks | ✅ Modern | ✅ Active |
| **Auto-compilation** | ⚠️ Training | ✅ LLM-driven | ⚠️ FORG pending |
| **Q&A against KB** | ⚠️ Search | ✅ LLM queries | ⚠️ QMD in progress |
| **Linting/health** | ⚠️ Manual | ✅ LLM checks | ✅ Periodic audit |

---

## Recommended Improvements

### 1. Add Relevance Scoring to MEMORY.md

```yaml
---
entry: "2026-04-07: FORG operational"
relevance: 9  # 1-10 scale
ttl: permanent  # or "30 days", "until project complete"
last-accessed: 2026-04-07
access-count: 3
---
```

### 2. Implement Karpathy-Style "Raw → Compiled" Flow

```
00-Inbox/ChatGPT/       ← raw/ (source conversations)
  ↓ FORG extraction
01-Literature/          ← compiled LitNotes
  ↓ RON review
03-Zettels/             ← atomic zettels
  ↓ synthesis
04-Synthesis/           ← compiled knowledge
```

### 3. Add Memory Health Checks

Monthly linting:
- Find orphaned zettels (no backlinks)
- Identify duplicate concepts
- Suggest merge candidates
- Flag stale entries (>90 days unused)

### 4. Explicit Memory Artifact (Karpathy Principle)

> *"The memory artifact is explicit. The LLM doesn't 'allegedly get better the more you use it.'"*

**Current:** MEMORY.md is curated manual
**Future:** Hybrid — manual curation + automated relevance scoring

---

## FORG Activation Plan

Based on Karpathy's "LLM maintains the wiki" principle:

| Phase | Task | Model |
|-------|------|-------|
| 1 | Draft LitNotes from CGPT anchors | FORG (Qwen Plus) |
| 2 | Review and validate | RON (Kimi k2.5) |
| 3 | Commit to vault | RON |
| 4 | Update MEMORY.md | RON |
| 5 | Weekly consolidation | RON + manual |

**Cost structure:** 95% FORG ($0.26/M), 5% RON ($40/M) = ~98% savings

---

## Anti-Patterns Avoided

| Anti-Pattern | Why Bad | How We Avoid |
|--------------|---------|--------------|
| **Memory explosion** | Unbounded growth | Weekly consolidation + relevance TTL |
| **Shadow notes** | Polluted graph | No bracketed template vars in actual notes |
| **Manual wiki maintenance** | Human bottleneck | FORG drafts, RON validates |
| **Implicit memory** | "It just learns" | Explicit MEMORY.md curation |
| **Generic agents** | No identity | Named RON + FORG with SOUL files |

---

## References

- Roemmele, B. (2026, Apr 3). *Memory Forgetting Strategy for Autonomous Agents*. X/Twitter.
- Karpathy, A. (2026, Apr 2). *LLM Knowledge Bases*. X/Twitter.
- Roemmele, B. *Love Equation Alignment for AI SAFE²*. Cyber Strategy Institute.

---

*Synthesis: RON Memory Architecture | S-001-0014 | 2026-04-07*
