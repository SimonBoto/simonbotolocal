# PATHS.md — Canonical Vault Paths (TheOptimizedBrain)

**Vault Root**: `/home/simon/openclaw/RonVault/Obsidian/TheOptimizedBrain` (pwd/git-tracked | 2026-02-18)

## Core Files (Source of Truth)
| File | Rel Path | Purpose | Status |
|------|----------|---------|--------|
| SOUL.md | `./SOUL.md` | RON persona, directives | 🟢 Active |
| IDENTITY.md | `./IDENTITY.md` | Roles, risks, capabilities | 🟢 Kimi-k2.5 |
| USER.md | `./USER.md` | Simos context, preferences | 🟢 Dashboard added |
| AGENTS.md | `./AGENTS.md` | Boot, memory, heartbeats | 🟢 Updated |
| MEMORY.md | `./MEMORY.md` | Curated long-term | 🟢 Dashboard status |
| TOOLS.md | `./TOOLS.md` | Local tooling, MCP | 🟢 mcporter added |
| HEARTBEAT.md | `./HEARTBEAT.md` | Proactive checks | 🟢 Dashboard-first |
| PATHS.md | `./PATHS.md` | This canonical map | 🟢 2026-02-18 |

## Dashboard
| Component | Path/URL | Notes |
|-----------|----------|-------|
| **Dashboard UI** | http://localhost:3333 | Real-time status, avatar, actions |
| **Dashboard Code** | `../../ron-dashboard/` | Express server, HTML/CSS/JS |
| **Memory API** | `/api/memory` | Stats (total/critical/high/normal) |
| **Status API** | `/api/status` | RON state, pipeline counts |
| **Proactive API** | `/api/proactive` | Toggle ON/OFF |

## Pipeline Folders
| Folder | Rel Path | Contents | Status |
|--------|----------|----------|--------|
| Inbox | `./00-Inbox/` | 2 files: 075, 076 (clinic lit) | 🟡 Ready for scrape |
| Templates | `./11-Templates/` | Zettel/Ref/Atomic molds | 🟢 |
| Dashboards | `./22-Dashboards/` | heartbeat-state.json, ron-profile.json | 🟢 |
| Atomic | `./33-Atomic/` | 192 notes (RA/IR/VitD) | 🟢 |
| MOCs | `./55-MOCs/` | Maps, integration | 🟢 |
| Literature | `./66-Literature/` | 131 refs, /Refs/ subdir | 🟢 |
| Archive | `./77-Archive/` | Completed work | 🟢 |

## System Folders
| Folder | Rel Path | Notes |
|--------|----------|-------|
| Memory | `./memory/` | Daily logs YYYY-MM-DD.md |
| Skills | `./skills/` | OpenClaw: git-notes-memory, memory-hygiene |
| Config | `./config/` | mcporter.json (MCP servers) |
| Git | `./.git/` | Eternal, 10+ commits ahead |
| Secrets | `./_SECRET_REVIEW/` | Moltbook.env (gitignore'd) |

## External References
- **OpenClaw Docs**: `/home/simon/.npm-global/lib/node_modules/openclaw/docs`
- **ClawHub**: https://clawhub.com
- **Git Remote**: `origin/main`

## Quick Commands
```bash
# Dashboard status
curl http://localhost:3333/api/status | jq '.'

# Memory sync
cd /home/simon/openclaw/RonVault/Obsidian/TheOptimizedBrain
python3 skills/git-notes-memory/memory.py -p . sync --start

# Inbox check
ls -la 00-Inbox/

# Git sync
git add -A && git commit -m "..." && git push
```

*(Canonized: 2026-02-18 | Dashboard v3.1 | MCP Active)*
