---
uid: S-001-0016
type: synthesis
title: QMD Advanced Optimization Proposal — Research Synthesis
date: 2026-04-07
aliases: [QMD-Advanced, QMD-Research, QMD-Future]
tags: [synthesis, qmd, research, optimization, roadmap]
status: draft
parent-index: [[Tools-Index]]
parent-moc: [[MOC-RON-Development]]
---

# QMD Advanced Optimization Proposal

> **Research synthesis from 10+ X posts, GitHub README, and field best practices**

---

## Research Sources

### X Posts Analyzed (10+)

| Author | Date | Key Insight |
|--------|------|-------------|
| **tobi** (QMD creator) | Jan 19 | "QMD is foundation of all tools I build — local search for you and agents" |
| **tobi** | Mar 2 | "Grep Is Dead" — QMD loads full context before you type |
| **tobi** | Mar 9 | Auto-research with Karpathy's nanochat for query expansion |
| **tobi** | Mar 10 | QMD 2.0 — library interface, stable API, easier integration |
| **tobi** | Mar 25 | `index.yml` auto-update feature (under-documented) |
| **tobi** | Feb 4 | OpenClaw QMD memory plugin built-in |
| **Artem Zhutov** | Mar 2 | Claude Code + QMD skill = no more context amnesia |
| **WorldofAI** | Apr 2 | 3-layer Memory Stack: project DNA + notes + standards |
| **Dhairya** | Apr 2 | "Vectorless RAG" — BM25 + SQL + knowledge graphs |
| **Avi Chawla** | Apr 4 | Binary quantization = 32x memory efficiency |
| **Vaishnavi** | Apr 6 | 8 AI agents inside Obsidian through conversation |
| **Ksenia** | Apr 3 | Hermes Agent: layered memory stack + self-improvement |

### GitHub README Insights

From `tobi/qmd`:
- **Query expansion** — LLM-generated sub-queries (lexical + vector + hypothetical)
- **RRF ranking** — Reciprocal Rank Fusion combines multiple search types
- **Context trees** — Hierarchical context for better LLM decisions
- **MCP server** — Native tool integration for agents
- **AST chunking** — Code-aware splitting (TypeScript, Python, Go, Rust)

---

## Current State vs. Optimized Future

### Current (Baseline)
| Feature | Status |
|---------|--------|
| Collections | 5 split collections |
| Context | Rich descriptions added |
| Search mode | `query` (hybrid) |
| Integration | Shell commands |
| Updates | Manual `qmd update` |
| Chunking | Default markdown |

### Proposed (Advanced)
| Feature | Improvement | Impact |
|---------|-------------|--------|
| **Declarative config** | `index.yml` version control | Shareable, reproducible |
| **Auto-update** | Watch mode + git hooks | Always current |
| **Hierarchical context** | Tree-structured context | Better semantic relevance |
| **Query expansion** | LLM-generated sub-queries | Find hidden connections |
| **MCP integration** | Native OpenClaw tools | Seamless agent workflow |
| **AST chunking** | Code-aware for scripts | Better code search |
| **Binary quantization** | 32x memory reduction | Scale to 100K+ files |
| **Multi-agent context** | Per-agent collections | FORG vs RON views |

---

## Detailed Proposals

### 1. Declarative `index.yml` Configuration

**Current:** Imperative shell commands
**Proposed:** Version-controlled YAML

```yaml
# ~/.openclaw/qmd-index.yml
collections:
  zettels:
    path: ~/Workspaces/TheOptimizedBrain/03-Zettels
    mask: "**/*.md"
    context: "Atomic knowledge notes..."
    chunk_size: 512
    overlap: 128
    
  literature:
    path: ~/Workspaces/TheOptimizedBrain/01-Literature
    mask: "**/*.md"
    context: "Processed literature notes..."
    
  # Auto-sync with git hooks
  sync:
    on_git_commit: true
    on_file_change: false  # Too noisy
    schedule: "0 */6 * * *"  # Every 6 hours
```

**Benefit:** Share config across machines, team sync, reproducible setup

---

### 2. Hierarchical Context Trees

**Current:** Flat context per collection
**Proposed:** Tree-structured for semantic precision

```bash
# Root context
qmd context add qmd://zettels/ "Atomic knowledge notes on metabolomics..."

# Sub-collection context (inherits + specializes)
qmd context add qmd://zettels/biomarkers/ "Biomarker reference guides for clinical interpretation"
qmd context add qmd://zettels/supplements/ "Supplement mechanisms, dosing, interactions"
qmd context add qmd://zettels/conscious/ "Working zettels under review"
qmd context add qmd://zettels/subconscious/ "Permanent, validated knowledge"
```

**Benefit:** More precise semantic search, better relevance scoring

---

### 3. Query Expansion (QMD's Secret Weapon)

**How it works:**
1. User query: `"insulin resistance mechanisms"`
2. LLM generates sub-queries:
   - Lexical: `"insulin resistance pathway"`
   - Vector: `"glucose uptake impairment"`
   - Hypothetical: `"how cells become resistant to insulin"`
3. RRF combines results from all three
4. Reranker scores final output

**FORG Integration:**
```bash
# QMD automatically expands queries
qmd query "adipic acid" -c zettels --json
# Returns results for: adipic acid + ω-oxidation + dicarboxylic + mitochondrial dysfunction
```

**Benefit:** Find connections user didn't explicitly search for

---

### 4. MCP Server Activation

**Current:** Shell command integration
**Proposed:** Native OpenClaw tools

```bash
# Start MCP server
qmd mcp

# OpenClaw config (automatic tool discovery)
# Tools exposed:
# - qmd_search (BM25)
# - qmd_vsearch (vector)
# - qmd_query (hybrid + reranking)
# - qmd_get (document retrieval)
# - qmd_multi_get (batch retrieval)
# - qmd_status (health check)
```

**FORG can then call directly:**
```
[Tool call: qmd_query]
query: "mitochondrial dysfunction in insulin resistance"
collection: zettels
min_score: 0.7
```

**Benefit:** No shell escaping, structured I/O, faster execution

---

### 5. AST Chunking for Code Files

**Current:** Markdown-only chunking
**Proposed:** Language-aware for scripts

```bash
# QMD already supports:
# - typescript, tsx
# - javascript
# - python
# - go
# - rust

# Add collection for workspace scripts
qmd collection add ~/.openclaw/workspace/scripts --name scripts --mask "*.{sh,py,js}"
```

**Benefit:** Better search in automation scripts, validation tools

---

### 6. Per-Agent Collection Views

**Concept:** Different collections for FORG vs RON

```yaml
# FORG view (extraction-focused)
collections:
  - zettels  # Check for duplicates
  - literature  # Verify source novelty
  - inbox  # Find raw material

# RON view (synthesis-focused)
collections:
  - zettels  # Review and connect
  - synthesis  # Update projects
  - projects  # Track progress
```

**Benefit:** Optimized search scope per agent role

---

### 7. Auto-Update Strategies

**Option A: Git Hooks**
```bash
# .git/hooks/post-commit
qmd update --collection zettels
qmd update --collection literature
```

**Option B: File Watching (careful)**
```bash
# Only for high-activity periods
qmd watch --collection inbox  # New CGPT anchors
```

**Option C: Scheduled (recommended)**
```bash
# Cron: Every 6 hours
0 */6 * * * qmd update
```

---

### 8. Future: Binary Quantization

**From Avi Chawla's research:**
- 32x memory efficiency
- Perplexity, Azure, HubSpot use it
- GGUF models already support it

**QMD potential:**
```bash
# Hypothetical future flag
qmd embed --quantization binary  # 32x smaller index
```

**Benefit:** Scale to 100K+ files on same hardware

---

## Implementation Status

| Phase | Feature | Status | Commit |
|-------|---------|--------|--------|
| **P0** | `index.yml` config | 🔄 IN PROGRESS | — |
| **P0** | Git hook auto-update | 🔄 IN PROGRESS | — |
| **P1** | Hierarchical context | 🔄 IN PROGRESS | — |
| **P1** | MCP server activation | 🔄 IN PROGRESS | — |
| **P2** | Per-agent collections | ⏳ Planned | — |
| **P2** | AST chunking for scripts | ⏳ Planned | — |
| **P3** | Binary quantization | ⏳ Wait for QMD | Future |

## Implementation Roadmap

| Phase | Feature | Effort | Priority |
|-------|---------|--------|----------|
| **P0** | `index.yml` config | 30 min | High |
| **P0** | Git hook auto-update | 15 min | High |
| **P1** | Hierarchical context | 1 hour | Medium |
| **P1** | MCP server activation | 30 min | Medium |
| **P2** | Per-agent collections | 1 hour | Low |
| **P2** | AST chunking for scripts | 30 min | Low |
| **P3** | Binary quantization | Wait for QMD | Future |

---

## Immediate Next Steps

1. **Create `index.yml`** — Version-controlled QMD config
2. **Add git hook** — Auto-update on commit
3. **Test MCP server** — Native OpenClaw integration
4. **Document query expansion** — Train FORG to leverage it

---

## Key Insights from Research

> *"QMD will find the right thing and the clankers are good at getting it in whatever format is right."* — tobi

> *"Every conversation with Claude Code starts from zero. Here's how I fixed that with a local search engine."* — Artem Zhutov

> *"RAG = vectors is outdated. Vectorless RAG uses BM25 + SQL + knowledge graphs."* — Dhairya

> *"8 AI agents that run inside Obsidian and handle everything through conversation."* — Vaishnavi

---

## Summary

| Aspect | Current | Optimized |
|--------|---------|-----------|
| Config | Shell commands | `index.yml` (versioned) |
| Updates | Manual | Git hooks |
| Context | Flat | Hierarchical trees |
| Search | Single query | Expanded sub-queries |
| Integration | Shell | MCP native |
| Scale | ~3K files | 100K+ (with quantization) |

**The QMD ecosystem is evolving rapidly. Our setup is solid; these optimizations make it exceptional.**

---

*QMD Advanced Optimization Proposal | S-001-0016 | 2026-04-07*
