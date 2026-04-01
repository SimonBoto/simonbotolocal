---
uid: 20260222123600
type: index
title: "04-SYSTEM — Integration Status"
aliases: [SYSTEM, Status, Integrations]
tags: [system, dashboard, integrations]
parent-moc: 
status: active
confidence: high
extraction-date: 2026-02-22
---

# 🔧 SYSTEM — Integration Status Board

> **Health check for all connections**  
> **Last Updated:** 2026-02-22 12:36  
> **Check Frequency:** Every heartbeat (8 hours)

---

## 📡 COMMUNICATION CHANNELS

| Channel | Status | Last Verified | Fix If Broken |
|---------|--------|---------------|---------------|
| Web UI | 🟢 OK | 2026-02-22 12:36 | See DISASTER_RECOVERY.md |
| Telegram | 🟢 OK | 2026-02-22 12:36 | Check token in config |
| Email | 🔴 Not Configured | — | Add to mcporter (deferred) |

---

## 🛠️ TOOLS

| Tool | Status | Provider | Fix If Broken |
|------|--------|----------|---------------|
| Web Search | 🟢 OK | Brave | Check API key |
| Web Fetch | 🟢 OK | Native | — |
| Browser | 🟢 OK | Chrome :9222 | Restart Chrome with flag |
| Git | 🟢 OK | Local | Check git status |
| Zotero | 🔴 Offline | — | Start Zotero desktop (deferred) |

---

## 🤖 AGENTS

| Agent | Model | Provider | Status | API Key |
|-------|-------|----------|--------|---------|
| RON | kimi-k2.5 | Moonshot | 🟢 Active | ✅ Configured |
| MUSE | llama-3.3-70b | Groq | 🟡 Ready | ✅ Configured |
| FORGE | qwen-2.5-coder | OpenRouter | 🟡 Ready | ✅ Configured |
| SAGE | deepseek-r1 | OpenRouter (paid) | 🔴 Not Set | Needs $ |
| ECHO | gemma2:27b | Ollama (local) | 🔴 Not Set | Install Ollama |

---

## 🗄️ VAULT HEALTH

| Check | Status | Details |
|-------|--------|---------|
| Git clean | 🟢 OK | 62 commits ahead |
| Inbox items | 🟢 OK | 0 pending |
| Atomic count | 🟢 OK | ~440 files |
| Ref count | 🟢 OK | 128 files |
| Templates | 🟢 OK | 9 v2.0 active |

---

## 🌐 EXTERNAL SERVICES

| Service | Status | Sync Method |
|---------|--------|-------------|
| Shaboard :4444 | 🟡 Active | Manual (copy from this file) |
| Company Pages | 🔴 Not Started | Build on request |
| X/Twitter | 🟡 Ready | I draft → You post |

---

## 🚨 EMERGENCY CONTACTS

- **Recovery Guide:** `99-System/DISASTER_RECOVERY.md`
- **One-liner fix:** `rm -rf ~/.openclaw/devices/* && openclaw gateway restart && sleep 3`
- **Credential Vault:** `~/.openclaw/CREDENTIALS_VAULT.md`

---

*This file updates automatically on heartbeat checks*  
*Check here for system health anytime*
