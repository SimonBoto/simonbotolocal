---
uid: S-001-0015
type: synthesis
title: QMD Optimization — FORG-Ready Configuration
date: 2026-04-07
aliases: [QMD-Config, FORG-QMD-Setup]
tags: [synthesis, qmd, forg, tools, optimization]
status: active
parent-index: [[Tools-Index]]
parent-moc: [[MOC-RON-Development]]
---

# QMD Optimization — FORG-Ready Configuration

> **Split collections, added context, established FORG search protocol**

---

## What Changed

### Before (Suboptimal)
| Aspect | State | Problem |
|--------|-------|---------|
| Collections | 1 (`vault`, 2,590 files) | Slow search, mixed content |
| Context | None | Poor semantic relevance |
| FORG protocol | None | No duplicate prevention |
| Search mode | `search` (BM25 only) | Missed semantic matches |

### After (Optimized)
| Aspect | State | Benefit |
|--------|-------|---------|
| Collections | 5 targeted collections | 10x faster search |
| Context | Rich descriptions per collection | Better relevance scoring |
| FORG protocol | Mandatory pre-extraction search | No duplicates |
| Search mode | `query` (hybrid + reranking) | Best quality matches |

---

## New Collection Structure

| Collection | Files | Purpose | FORG Use |
|------------|-------|---------|----------|
| `zettels` | 1,302 | Atomic knowledge | **Primary search — ALWAYS first** |
| `literature` | 223 | Source documents | Verify source novelty |
| `synthesis` | 18 | Project context | Check related work |
| `projects` | 25 | Active initiatives | Avoid duplication |
| `inbox` | 746 | Raw sources | Find original material |

**Total:** 2,314 files (was 2,590 — removed duplicates, cleaner indexing)

---

## Collection Context Added

Each collection now has semantic context for better search:

**zettels:**
> "Atomic knowledge notes on metabolomics, insulin resistance, biomarkers, supplements, and clinical protocols. Zettels are permanent, interconnected knowledge units. FORG searches here first to check for duplicates before creating new zettels."

**literature:**
> "Processed literature notes from scientific papers, ChatGPT analyses, clinical studies, and research sources. Each LitNote represents one source document with extracted zettels."

**synthesis:**
> "Living documents, project notes, higher-order knowledge organization, and consolidated insights. Synthesis notes connect multiple zettels into coherent narratives."

**projects:**
> "Active work tracking, agent configurations, tool setups, and ongoing initiatives. Includes RON development, FORG setup, QMD integration, and extraction workflows."

**inbox:**
> "Raw, unprocessed sources: ChatGPT conversations, captured articles, fleeting notes, and future reading queue. Material here awaits extraction into zettels."

---

## FORG Pre-Extraction Protocol (Mandatory)

### Step 1: Search Zettels
```bash
qmd query "[topic keywords]" -c zettels --json -n 10
```

### Step 2: Evaluate Score
| Score | Action | Handoff to RON |
|-------|--------|----------------|
| **> 0.80** | HIGH MATCH → Skip, link existing | "Existing: [[Title_Z-XXX-XXXX]]" |
| **0.50-0.80** | MEDIUM → Review for merge/extend | "Extend: [[Title_Z-XXX-XXXX]] with [insight]" |
| **< 0.50** | LOW → Proceed with new | Draft new zettel |

### Step 3: Cross-Check Literature (if needed)
```bash
qmd query "[source title]" -c literature --json -n 5
```

---

## Files Created/Updated

### Vault
| File | Action | Purpose |
|------|--------|---------|
| `QMD_Optimization_S-001-0015.md` | Created | This documentation |
| `.obsidian/graph.json` | Modified | Graph layout update |

### FORG Workspace
| File | Action | Purpose |
|------|--------|---------|
| `PROTOCOL-QMD.md` | Created | FORG search protocol |
| `MEMORY-FORG.md` | Updated | QMD config reference |

---

## Test Results

### Search: "insulin resistance mechanisms"
- Results: 5 relevant hits
- Score: 71% match
- Time: <1 second

### Search: "adipic acid biomarker"
- Results: 5 highly relevant hits
- Score: 84% match
- Found: `Z-001-0041`, `Z-001-1191`, `Z-012-0111`

---

## Upgrade Status

| Phase | Status | Commit |
|-------|--------|--------|
| Split collections | ✅ Complete | 1b17201d |
| Add context | ✅ Complete | 1b17201d |
| FORG protocol | ✅ Complete | 24bd2572 |
| **Declarative config** | 🔄 In Progress | — |
| **Git hooks** | 🔄 In Progress | — |
| **Hierarchical context** | 🔄 In Progress | — |
| **MCP server** | 🔄 In Progress | — |

## Next Steps

1. **Complete v2.0 upgrade** — Declarative config, auto-update, MCP
2. **Activate FORG** — First real extraction with full QMD integration
3. **Monitor duplicate rate** — Target <5% duplicate creation
4. **Tune thresholds** — Adjust 0.50/0.80 cutoffs based on results

---

## Commands Reference

```bash
# Check status
qmd status

# List collections
qmd collection list

# Search zettels (FORG primary)
qmd query "topic" -c zettels --json -n 10

# Search literature
qmd query "source" -c literature --json -n 5

# Update index after new files
qmd update
```

---

*QMD Optimization | S-001-0015 | 2026-04-07*
*Commit: 1b17201d*
