---
uid: INBOX-2026-04-09-KARPATHY-KB
type: inbox-item
source: x-post/gist
author: Andrej Karpathy
date: 2026-04-09
title: "LLM Knowledge Bases — Karpathy's Personal System"
aliases:
  - Karpathy-Knowledge-Base
  - LLM-Wiki
  - Auto-Wiki
status: unread
priority: P0
tags:
  - inbox
  - karpathy
  - knowledge-base
  - obsidian
  - llm-wiki
  - validation
---

# Karpathy's LLM Knowledge Base System

> **"In this era of LLM agents, there is less of a point/need of sharing the specific code/app, you just share the idea, then the other person's agent customizes & builds it for your specific needs."**

## The Core Idea

Using LLMs to build **personal knowledge bases** for research topics:
- Raw data ingestion → LLM compilation → Markdown wiki
- LLM maintains all wiki data (human rarely touches directly)
- Q&A against the wiki (no fancy RAG needed at small scale)
- Outputs rendered as markdown, slides, visualizations

## Architecture

### 1. Data Ingest
- **Source:** Articles, papers, repos, datasets, images → `raw/` directory
- **Tool:** Obsidian Web Clipper for web articles
- **Process:** Download images locally for LLM reference

### 2. Compilation (The Wiki)
> "I use an LLM to incrementally 'compile' a wiki"

- Output: Collection of `.md` files in directory structure
- Includes:
  - Summaries of all `raw/` data
  - Backlinks
  - Categorization into concepts
  - Articles for concepts
  - Cross-linking

### 3. IDE: Obsidian
- View raw data, compiled wiki, visualizations
- **Critical:** LLM writes/maintains wiki, human rarely edits directly
- Plugins: Marp for slides, others for rendering

### 4. Q&A
> "Once your wiki is big enough (~100 articles, ~400K words), you can ask your LLM agent all kinds of complex questions"

- **No fancy RAG needed** at this scale
- LLM auto-maintains index files and brief summaries
- Reads all important related data easily

### 5. Output Formats
- Markdown files
- Slide shows (Marp format)
- Matplotlib images
- Viewed in Obsidian
- **Filing back:** Outputs enhance wiki for further queries

### 6. Linting (Health Checks)
LLM runs checks to:
- Find inconsistent data
- Impute missing data (with web search)
- Find interesting connections for new articles
- Suggest further questions

### 7. Extra Tools
- Vibe-coded search engine over wiki
- Web UI for direct use
- CLI tool for LLM agent handoff

### 8. Future: Synthetic Data + Fine-tuning
> "Have your LLM 'know' the data in its weights instead of just context windows"

## TL;DR

```
raw data from sources
    ↓
LLM compiles → .md wiki
    ↓
CLIs operate on wiki (Q&A, enhancement)
    ↓
View everything in Obsidian
    ↓
Rarely write/edit wiki manually (LLM's domain)
```

## Validation: We're Building This!

| Karpathy's System | Our System | Status |
|-------------------|------------|--------|
| `raw/` directory | `00-Inbox/`, `02-References/` | ✅ |
| LLM compilation | FORG extraction → LitNotes | ✅ |
| Markdown wiki | `03-Zettels/`, `04-Synthesis/` | ✅ |
| Obsidian IDE | Obsidian vault | ✅ |
| Q&A without RAG | QMD search + Kimi context | ✅ |
| Auto-maintained | YAML v4.0, MOCs, bidirectional links | ✅ |
| Linting/health checks | `vault-validate.sh`, zettel-forge | ✅ |
| Search engine | QMD indexing | ✅ |
| Synthetic data + FT | Future: AutoAgent for knowledge weights | 🔄 |

## Key Differences

| Aspect | Karpathy | Us |
|--------|----------|-----|
| **Scale** | ~100 articles, ~400K words | 1,453 zettels, 227 LitNotes |
| **Agents** | Single LLM | Multi-agent (FORG, RON, SCOUT) |
| **Process** | Interactive, incremental | Batch + autonomous (AutoResearch) |
| **Source** | General research | CGPT + academic + clinical focus |

## Insights for Our System

### 1. "No Fancy RAG Needed at Small Scale"
> "I thought I had to reach for fancy RAG, but the LLM has been pretty good about auto-maintaining index files"

**Validation:** Our QMD + context window approach is correct. No need for vector DB at our scale.

### 2. "Rarely Ever Write or Edit the Wiki Manually"
> "It's the domain of the LLM"

**Validation:** Our FORG-first approach is correct. RON reviews, doesn't rewrite.

### 3. "Outputs File Back Into the Wiki"
> "My own explorations and queries always 'add up' in the knowledge base"

**Gap to address:** Our synthesis outputs should auto-file back into vault.

### 4. "Room for an Incredible New Product"
> "Instead of a hacky collection of scripts"

**Opportunity:** Package our system (The Triangle + FORG + QMD) as a product?

## Action Items
- [ ] Compare our workflow to Karpathy's gist in detail
- [ ] Identify gaps (output filing, synthetic data)
- [ ] Consider: Productize our system?
- [ ] Read full gist: gist.github.com/karpathy/442a6…

## Relation to Our Projects

| Project | Karpathy Parallel |
|---------|-------------------|
| **LitNote v4.0** | Wiki compilation standard |
| **AutoResearch** | Autonomous LLM maintaining wiki |
| **QMD** | Search engine + indexing |
| **SCOUT** (proposed) | Auto-maintained index files |

**Karpathy validates our entire architecture.** We're ahead of the curve.

---

**Source:** X post + Gist (gist.github.com/karpathy/442a6…)  
**Captured:** 2026-04-09  
**Priority:** P0 — Complete validation of our approach
