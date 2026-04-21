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

### Karpathy — "Human-in-the-Loop" (Apr 3, 2026)

> *"Atm it's not a fully autonomous process, I add every source manually, one by one and I am in the loop, especially in early stages. After a while, the LLMs 'gets' the pattern and the marginal document is a lot easier, I just say 'file this new doc to our wiki: (path)'."*

**Key Insight:** Start manual, then progressively automate as patterns emerge.

### Karpathy — "LLM = CPU, Agent = OS Kernel" (Mar 31, 2026)

> *"LLM = CPU (data: tokens not bytes, dynamics: statistical and vague not deterministic and precise) Agent = operating system kernel"*

**Key Insight:** Think of agents as system orchestrators, not just chat interfaces.

### Karpathy — "Farzapedia & Explicit Memory" (Apr 5, 2026)

On Farza's personal Wikipedia (2,500 entries → 400 articles):
> *"I really like this approach to personalization in a number of ways, compared to 'status quo' of an AI that allegedly gets better the more you use it or something: 1. Explicit. The memory artifact"*

**Key Principles:**
1. **Explicit** — Memory artifact is tangible, inspectable
2. **Structured** — Not just chat history, but organized knowledge
3. **Composable** — Articles link, form higher-order structures
4. **Human-verified** — Quality control at each step

---

## Synthesis: RON/FORG Memory Architecture

### Implementation Status

| Phase | Component | Status | Commit |
|-------|-----------|--------|--------|
| **P0** | Named agents (RON + FORG) | ✅ Complete | — |
| **P0** | SOUL files | ✅ Complete | — |
| **P0** | Raw data (00-Inbox) | ✅ Complete | — |
| **P0** | Compiled wiki (vault) | ✅ Complete | — |
| **P0** | Obsidian IDE | ✅ Complete | — |
| **P0** | QMD search integration | ✅ Complete | 5701f48e |
| **P1** | Auto-compilation (FORG) | 🔄 Ready to activate | — |
| **P1** | Linting/health checks | ✅ Periodic audit active | — |
| **P2** | Relevance scoring | ⏳ Planned | — |
| **P2** | Human-in-the-loop protocol | 🔄 Defined | — |

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
| **Auto-compilation** | ⚠️ Training | ✅ LLM-driven | 🔄 **FORG ready** |
| **Q&A against KB** | ⚠️ Search | ✅ LLM queries | ✅ **QMD complete** |
| **Linting/health** | ⚠️ Manual | ✅ LLM checks | ✅ Periodic audit |
| **Human-in-loop** | ⚠️ Manual | ✅ Early stages manual | ✅ **FORG→RON defined** |
| **Explicit artifact** | ⚠️ Implicit | ✅ Required | ✅ **Vault commits** |

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

Based on Karpathy's principles:

### Phase 1: Human-in-the-Loop (Current)
> *"I add every source manually, one by one and I am in the loop, especially in early stages."* — Karpathy

| Step | Action | Agent | Human |
|------|--------|-------|-------|
| 1 | Select CGPT anchor | — | **You** |
| 2 | QMD search for duplicates | FORG | — |
| 3 | Draft LitNote + zettels | FORG | — |
| 4 | Review and validate | — | **RON** |
| 5 | Edit/approve | — | **You** |
| 6 | Commit to vault | RON | — |

### Phase 2: Progressive Automation (After Pattern Established)
> *"After a while, the LLMs 'gets' the pattern and the marginal document is a lot easier."* — Karpathy

| Step | Action | Agent | Human |
|------|--------|-------|-------|
| 1 | Batch select anchors | FORG suggests | **You approve** |
| 2 | Auto-draft | FORG | — |
| 3 | Spot-check review | — | **You sample** |
| 4 | Auto-commit low-risk | RON | — |
| 5 | Flag uncertain for review | FORG | **You decide** |

### Phase 3: Autonomous Operation (Future)
> *"I just say 'file this new doc to our wiki: (path)'"* — Karpathy

- FORG monitors inbox automatically
- Drafts new LitNotes
- RON validates
- You review summaries, not every draft

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

### Roemmele
- Roemmele, B. (2026, Apr 3). *Memory Forgetting Strategy for Autonomous Agents*. X/Twitter.
- Roemmele, B. *Love Equation Alignment for AI SAFE²*. Cyber Strategy Institute.

### Karpathy
- Karpathy, A. (2026, Apr 2). *LLM Knowledge Bases*. X/Twitter. https://x.com/karpathy/status/2039805659525644595
- Karpathy, A. (2026, Apr 3). *Human-in-the-Loop Workflow*. X/Twitter. https://x.com/karpathy/status/2039812403962253744
- Karpathy, A. (2026, Apr 5). *Farzapedia & Explicit Memory*. X/Twitter. https://x.com/karpathy/status/2040572272944324650
- Karpathy, A. (2026, Mar 31). *LLM = CPU, Agent = OS Kernel*. X/Twitter. https://x.com/karpathy/status/2039054981719089202

---

*Synthesis: RON Memory Architecture | S-001-0014 | 2026-04-07*
