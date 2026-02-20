---
uid: 20260220194000
type: index
title: RON Tools & MCP Dashboard
aliases: [Tools_Dashboard, MCP_Status, Tool_Control]
tags: [dashboard, tools, mcp, mcporter, status]
parent-moc: [[22-Dashboards/RON_Mission_Control_Calendar]]
status: active
update-frequency: daily
last-updated: 2026-02-20
---

# 🔧 RON Tools & MCP Dashboard

**Real-time status of all connected tools and services.**

Last updated: 2026-02-20 19:40

---

## 🎯 Quick Actions

| Action | Command | Status |
|--------|---------|--------|
| Start Zotero MCP | `mcporter start zotero` | 🔴 Offline |
| List all servers | `mcporter list` | 🟢 Ready |
| Check web search | Web search tool | 🟢 Active |
| Verify vault access | File I/O | 🟢 Active |

---

## 🔌 MCP Servers (mcporter)

### Zotero Integration
| Property | Value |
|----------|-------|
| **Server Name** | zotero |
| **Type** | stdio (npx) |
| **Status** | 🔴 **OFFLINE** |
| **User ID** | SymeonXen |
| **Last Error** | Unable to reach server (2.7s timeout) |

**Capabilities when online:**
- [ ] List Zotero libraries
- [ ] Search references
- [ ] Add citations to notes
- [ ] Sync bibliography
- [ ] Extract PDF annotations

**Troubleshooting:**
1. Check API key validity: `ZOTERO_API_KEY=2MGhXzo9h1v0ydEVFHm7xna1`
2. Restart server: `mcporter start zotero`
3. Verify network connectivity
4. Check Zotero desktop app is running (if required)

**Priority:** 🟡 Medium — useful for literature sync, not blocking

---

## 🛠️ Native Tools

### Web Search (Brave API)
| Property | Value |
|----------|-------|
| **Status** | 🟢 **ONLINE** |
| **Provider** | Brave Search API |
| **Rate Limit** | 2000 queries/month (Free tier) |
| **Current Usage** | ~200 queries |

**Capabilities:**
- [x] PubMed searches
- [x] Google Scholar (via query)
- [x] Journal site queries
- [x] General web context
- [x] Date-filtered results

**Green Zones (no ask):**
- PubMed, Google Scholar, journal sites
- Clinical guidelines
- Metabolomics databases

**Yellow Zones (proceed, log):**
- General web search
- News articles
- Social media

**Red Zones (ask first):**
- Paywall circumvention
- Bulk downloads
- Personal data searches

---

### File I/O (Vault Access)
| Property | Value |
|----------|-------|
| **Status** | 🟢 **ONLINE** |
| **Vault Path** | `/home/simon/openclaw/RonVault/Obsidian/TheOptimizedBrain/` |
| **Git Status** | ✅ Tracked |
| **Last Commit** | `692ab4d` (Mission Control + Templates) |

**Capabilities:**
- [x] Read/write atomic notes
- [x] Template generation
- [x] Batch file operations
- [x] Git commits
- [x] Directory listing

**Safety Boundaries:**
- GREEN: Read-only, staging, reversible edits
- YELLOW: Larger batches, structural changes (report)
- RED: Destructive/mass changes (arming phrase required)

---

### Browser Control
| Property | Value |
|----------|-------|
| **Status** | 🟡 **STANDBY** |
| **Profile** | chrome (extension relay) |
| **Issue** | No tab connected |

**To activate:**
1. Open Chrome browser
2. Click OpenClaw extension icon
3. Badge should show "ON"
4. RON can then control browser

**Capabilities when active:**
- [ ] Navigate to URLs
- [ ] Take screenshots
- [ ] Extract page content
- [ ] Click/type/interact
- [ ] PDF generation

**Priority:** 🟢 Low — web search covers most needs

---

## 📡 External Services

### Dashboard (:3333)
| Property | Value |
|----------|-------|
| **URL** | http://localhost:3333 |
| **Status** | ⚠️ **NOT VERIFIED** |
| **Last Check** | 2026-02-20 |

**Note:** Dashboard may be running but browser control unavailable. Check manually.

---

### Email (Proton.me - Planned)
| Property | Value |
|----------|-------|
| **Status** | 📋 **PLANNED** |
| **Provider** | ProtonMail Bridge or AgentMail.to |
| **Priority** | Low — not urgent |

---

## 🔧 Tool Wishlist / Future MCPs

| Tool | Use Case | Priority | Status |
|------|----------|----------|--------|
| **Obsidian API** | Direct vault queries, Dataview | High | Researching |
| **Zotero (fix)** | Citation sync | Medium | 🔴 Broken |
| **GitHub MCP** | Repo management, issues | Medium | Not configured |
| **Calendar MCP** | Schedule integration | Low | Future |
| **Telegram Bot** | Mobile notifications | Low | Future |

---

## 📝 MCP Configuration

**Config file:** `~/.openclaw/workspace/config/mcporter.json`

```json
{
  "mcpServers": {
    "zotero": {
      "command": "npx -y zotero-mcp",
      "env": {
        "ZOTERO_API_KEY": "***",
        "ZOTERO_USER_ID": "SymeonXen"
      }
    }
  }
}
```

**To add new MCP:**
```bash
mcporter add <name> --stdio "<command>" --env KEY=value
```

---

## 🚀 Quick Start Guide

### For Literature Work
```bash
# Start Zotero (when fixed)
mcporter start zotero

# Search your library
mcporter call zotero.search query="insulin resistance"

# Get citation
mcporter call zotero.cite itemKey="ABC123"
```

### For Web Research
```bash
# Already active — use web search tool
# PubMed, Scholar, journals — no setup needed
```

### For Vault Operations
```bash
# Already active — direct file I/O
# Git tracked, batch-safe
```

---

## 📊 Tool Health Check

Run daily via heartbeat:
- [ ] mcporter list (servers healthy?)
- [ ] Web search (rate limit ok?)
- [ ] Vault access (git clean?)
- [ ] Browser (if needed)

**If Zotero stays offline:**
→ Degrade gracefully: Use web search + manual Zotero
→ Not blocking: All core RON functions work

---

## RON Ledger

- **Created:** 2026-02-20 19:40
- **Purpose:** Central tool status dashboard
- **Update cycle:** Daily heartbeat
- **Next MCP to fix:** Zotero integration

---

*🔧 Tools Dashboard — Know your capabilities, work within constraints*
