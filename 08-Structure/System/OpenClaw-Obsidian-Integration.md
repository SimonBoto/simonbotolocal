---
uid: SYS-INTEGRATION-001
type: system-doc
title: OpenClaw ↔ Obsidian Integration Guide
version: 1.0
date: 2026-04-21
status: active
---

# OpenClaw ↔ Obsidian Integration Guide

> **Quick Reference:** Workspace = Runtime HQ | Vault = Knowledge Base | QMD = Search Bridge

## Architecture Overview

```
┌─────────────────┐     ┌──────────────────────┐
│   OPENCLAW      │◄───►│      OBSIDIAN        │
│                 │     │                      │
│ • RON Agent     │     │ • TheOptimizedBrain  │
│ • FORG Agent    │     │ • .obsidian/ config  │
│ • SCOUT Agent   │     │ • 10 plugins         │
│ • QMD Search    │     │ • Git integration    │
└────────┬────────┘     └──────────┬───────────┘
         │                         │
         │    ┌────────────────────┘
         │    │
         ▼    ▼
┌─────────────────────────┐
│   QMD (Local Search)    │
│   • 2,626 files indexed │
│   • 40,295+ vectors     │
│   • Semantic + keyword  │
└─────────────────────────┘
```

## Workspace vs. Vault Separation

| Location | Purpose | Files | Access |
|----------|---------|-------|--------|
| `~/.openclaw/workspace/` | **RON Runtime HQ** | 12 core files | OpenClaw only |
| `~/.openclaw/workspace-forg/` | **FORG Runtime** | 20+ files | FORG agent |
| `~/.openclaw/workspace-scout/` | **SCOUT Runtime** | 12 files | SCOUT agent |
| `~/Workspaces/TheOptimizedBrain/` | **Knowledge Vault** | 2,600+ files | Obsidian + OpenClaw |

### Core Workspace Files (12)

| File | Purpose | load-priority |
|------|---------|---------------|
| `README.md` | Entry point | 0 |
| `SOUL.md` | Agent identity | 1 |
| `BOOTSTRAP.md` | Recovery protocol | 1 |
| `AGENTS.md` | Session startup | 2 |
| `HEARTBEAT.md` | Ritual schedule | 2 |
| `MEMORY.md` | Session context | 3 |
| `USER.md` | User profile | — |
| `TOOLS.md` | Vault workflows | — |
| `AUTONOMY.md` | Safety protocol | — |
| `DREAMS.md` | Background consolidation | 2 |
| `IDENTITY.md` | Identity template | — |
| `MEMORY-CLI.md` | Memory commands | 4 |

## Integration Points

### 1. QMD Search (Working ✅)

**What:** Local semantic search across vault
**How:** QMD indexes 5 collections:
- `zettels` (1,564 files)
- `literature` (220 files)
- `synthesis` (20 files)
- `projects` (66 files)
- `inbox` (756 files)

**Usage:**
```bash
# Search from terminal
qmd query "insulin resistance mechanisms"

# Search from OpenClaw
memory_search "your query"
```

**Status:** ✅ Fully operational

### 2. Git Sync (Working ✅)

**What:** Version control for vault + workspace
**Repos:**
- Vault: `git@github.com:SimonBoto/simonbotolocal.git`
- Workspace: Local git (separate)

**Auto-commit:**
- Vault: Manual (obsidian-git available)
- Workspace: Manual

**Status:** ✅ Functional, could be automated

### 3. Obsidian Plugins (Working ✅)

**Installed (10):**
| Plugin | Purpose |
|--------|---------|
| obsidian-git | Git integration |
| dataview | Dynamic queries |
| calendar | Daily notes |
| obsidian-kanban | Project boards |
| excalibrain | Visual graph |
| obsidian-excalidraw-plugin | Drawings |
| obsidian-zotero-desktop-connector | References |
| supercharged-links-obsidian | Link styling |
| obsidian-local-rest-api | API access |

**Status:** ✅ All functional

### 4. Memory Backend (Working ✅)

**Config:** `~/.openclaw/openclaw.json`
```json
"memory": {
  "backend": "qmd"
}
```

**How it works:**
- OpenClaw `memory_search` tool → QMD backend
- QMD queries local index
- Returns results to agent

**Status:** ✅ QMD-based, no LanceDB

## What's NOT Working (Yet)

| Feature | Status | Blocker |
|---------|--------|---------|
| Real-time sync | ❌ | No webhook/pipeline |
| Obsidian → OpenClaw triggers | ❌ | No plugin |
| Auto-commit | 🟡 | Manual setup needed |
| Cross-link validation | ❌ | No automated checker |

## Setup Instructions

### For New Machine

1. **Install OpenClaw**
   ```bash
   npm install -g openclaw
   ```

2. **Clone Vault**
   ```bash
   git clone git@github.com:SimonBoto/simonbotolocal.git
   cd simonbotolocal
   ```

3. **Configure OpenClaw**
   ```bash
   openclaw config set memory.backend qmd
   openclaw config set agents.defaults.workspace ~/.openclaw/workspace
   ```

4. **Setup QMD**
   ```bash
   qmd collection add zettels ~/Workspaces/TheOptimizedBrain/03-Zettels
   qmd embed
   ```

5. **Open in Obsidian**
   - Open folder as vault
   - Enable community plugins
   - Install obsidian-git

### For Daily Use

**Morning:**
1. Pull vault: `git pull`
2. Check HANDOFF: `08-Structure/Dashboards/02-HANDOFF.md`
3. Start OpenClaw session

**During work:**
- Edit in Obsidian
- Commit periodically: `git commit -am "message"`

**Evening:**
1. Final commit
2. Push: `git push`
3. Update HANDOFF

## Troubleshooting

| Issue | Solution |
|-------|----------|
| QMD not finding files | Run `qmd update --pull` |
| OpenClaw can't find vault | Check `memory.backend` config |
| Git conflicts | Resolve in Obsidian, then commit |
| Agent workspace missing files | Check `~/.openclaw/workspace/` exists |

## Future Improvements

See `ISSUE-024: Workspace-Vault Auto-Sync` for planned enhancements.

---

*Last updated: 2026-04-21*
*Maintainer: RON*
