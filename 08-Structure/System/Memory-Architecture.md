---
uid: SYS-MEMORY-001
type: system
title: "Memory Systems Architecture — Dual-Layer Design"
date: 2026-04-21
tags: [system, memory, architecture, qmd, sqlite, markdown]
---

# Memory Systems Architecture

> **Two complementary memory systems: Human-readable (Markdown) + Machine-searchable (SQLite)**

---

## Layer 1: Human-Readable Memory (Markdown)

### Purpose
For humans and agents to read, write, and understand context.

### Location
| Path | Content |
|------|---------|
| `~/.openclaw/workspace/memory/YYYY-MM-DD.md` | Daily session logs |
| `~/.openclaw/workspace/MEMORY.md` | Curated long-term memory |
| `~/.openclaw/workspace/DREAMS.md` | Background processing logs |
| `~/.openclaw/workspace-forg/MEMORY.md` | FORG agent context |
| `~/.openclaw/workspace-scout/MEMORY.md` | SCOUT agent context |

### Format
```markdown
---
date: 2026-04-21
---

## Session Flush — 2026-04-21 19:08

### Major Achievements Today
- 220 LitNotes anchored
- 354 phantom links fixed
...
```

### Naming Convention
| Pattern | Use |
|---------|-----|
| `YYYY-MM-DD.md` | Standard daily notes |
| `YYYY-MM-DD-descriptive-suffix.md` | Special events (optional) |

---

## Layer 2: Machine-Searchable Memory (SQLite)

### Purpose
For semantic search, vector embeddings, and fast retrieval.

### Location
| Path | Content |
|------|---------|
| `~/.openclaw/memory/main.sqlite` | RON's vector memory (QMD) |
| `~/.openclaw/memory/forg.sqlite` | FORG's vector memory |
| `~/.openclaw/memory/scout.sqlite` | SCOUT's vector memory |

### Technology
- **Backend:** QMD (Queryable Markdown Database)
- **Vectors:** Embedded content for semantic search
- **CLI:** `ron-cli.py` for queries

### How It Works
```
Markdown files → QMD indexing → SQLite + Vectors
     ↑                                    ↓
   Human reads                    Machine searches
```

---

## Sync Between Layers

| Direction | Trigger | Action |
|-----------|---------|--------|
| Markdown → SQLite | `qmd index` | Daily notes get embedded |
| SQLite → Markdown | Manual | Query results written to MEMORY.md |

### Commands
```bash
# Index new content
qmd embed

# Search memory
ron-cli.py search "phantom links"

# Force reindex
qmd index --force
```

---

## Workspace Memory Locations

| Agent | Markdown | SQLite |
|-------|----------|--------|
| **RON (main)** | `~/.openclaw/workspace/memory/` | `~/.openclaw/memory/main.sqlite` |
| **FORG** | `~/.openclaw/workspace-forg/MEMORY.md` | `~/.openclaw/memory/forg.sqlite` |
| **SCOUT** | `~/.openclaw/workspace-scout/MEMORY.md` | `~/.openclaw/memory/scout.sqlite` |

---

## Key Distinction

| Aspect | Markdown Layer | SQLite Layer |
|--------|----------------|--------------|
| **Readable by** | Humans, agents | Machines (QMD CLI) |
| **Format** | Plain text | Binary (SQLite) |
| **Search** | Text grep | Semantic vector search |
| **Persistence** | Git-tracked | Local only (regenerable) |
| **Purpose** | Context, continuity | Fast retrieval, similarity |

---

## Best Practices

1. **Write to Markdown** — Always write memories to `.md` files
2. **Let QMD index** — Don't manually edit SQLite
3. **Git commit** — Markdown is source of truth
4. **Regenerate if needed** — SQLite can be rebuilt from Markdown

---

## Related

- [[TOOLS.md]] — Vault structure
- [[AGENTS.md]] — Agent configuration
- [[08-Structure/System/QMD-Guide]] — QMD usage

---
*Created: 2026-04-21*
*Purpose: Clarify dual memory architecture*
