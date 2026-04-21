---
uid: S-001-0002
type: synthesis
title: "QMD Activation — Hybrid Search for Vault"
domain: 001
domain-name: System
tags: [synthesis, qmd, search, memory, tool]
parent-moc: [[MOC-CGPT-Archive]]
parent-index: [[Tools-Index]]
status: conscious
created: 2026-04-06
updated: 2026-04-06
---

# QMD Activation — Hybrid Search for Vault

> **Activate QMD skill for 60-90% context reduction on vault queries**

---

## The Problem

Current vault search methods:
- `grep` — Fast but dumb (keywords only)
- Obsidian REST API — Good for exact matches
- File reads — Load entire notes into context

**Result:** Too many tokens, cache bloat, compaction issues.

---

## The Solution: QMD

**QMD (Query Markdown Documents)** — Hybrid search engine:
- **BM25** — Keyword relevance
- **Vector** — Semantic similarity  
- **Combined** — Best of both

**Result:** Pull only relevant *slices* of notes, not entire files.

---

## Current Status

| Component | Status |
|-----------|--------|
| QMD CLI | ✅ Installed at `~/.openclaw/workspace/skills/qmd-cli/` |
| Index | ⚠️ Needs building |
| Integration | ⚠️ Not yet active |

---

## Activation Steps

### Step 1: Build QMD Index

```bash
cd ~/Workspaces/TheOptimizedBrain
qmd index --path . --output ~/.openclaw/qmd-index
```

**What it does:**
- Indexes all `.md` files
- Creates BM25 + vector embeddings
- Stores in `~/.openclaw/qmd-index/`

### Step 2: Test Queries

```bash
# Keyword search
qmd search "adipic acid IR" --index ~/.openclaw/qmd-index

# Semantic search
qmd search "early insulin resistance biomarkers" --semantic --index ~/.openclaw/qmd-index

# Hybrid (default)
qmd search "mitochondrial dysfunction cancer" --index ~/.openclaw/qmd-index
```

### Step 3: RON Integration

**When to use QMD vs other methods:**

| Task | Method | Why |
|------|--------|-----|
| Exact file read | `read` tool | Direct, fast |
| Find specific note | Obsidian REST API | Fuzzy filename match |
| **Research across vault** | **QMD** | **Relevant slices only** |
| Check if topic exists | QMD | Semantic match |
| Find connections | QMD + REST API | Cross-reference results |

**Example workflow:**
```
User: "What do we know about B12 and methylation?"

RON: 
1. QMD search: "B12 methylation one-carbon"
2. Get top 5 relevant note slices
3. Read full notes only if needed
4. Synthesize answer
5. Report with sources
```

---

## Expected Benefits

| Metric | Before | After | Improvement |
|--------|--------|-------|-------------|
| Context per vault query | 50-200KB | 5-20KB | **60-90% reduction** |
| Relevance | Medium | High | Better results |
| Speed | Fast | Fast | Similar |
| Token cost | High | Low | **Major savings** |

---

## Maintenance

**Rebuild index weekly:**
```bash
qmd index --path ~/Workspaces/TheOptimizedBrain --output ~/.openclaw/qmd-index --force
```

**Or after major vault changes:**
- Batch extraction (50+ zettels)
- Template updates
- Folder restructuring

---

## Next Actions

1. [ ] Build initial QMD index
2. [ ] Test 3-5 searches
3. [ ] Document common queries in TOOLS.md
4. [ ] Set weekly cron for index rebuild

---

## Connection to ZettelForge

QMD enables ZettelForge's "Auto-Linking" feature:
- Draft zettel created
- QMD search for related topics
- Suggest 3-5 relevant existing zettels
- RON verifies and adds links

---

*QMD — Search smart, not hard.*
