---
uid: SAFETY-001
type: safety
title: OpenClaw Emergency Recovery Protocols
aliases: [SAFETY, Recovery, Emergency, Gateway-Fix]
domain: system
tags: [safety, emergency, gateway, recovery, openclaw]
status: permanent
created: 2026-02-23
updated: 2026-02-23
---

# 🚨 SAFETY — OpenClaw Emergency Recovery Protocols

> **When RON goes silent, the gateway fails, or everything breaks.**
> 
> *Last tested: 2026-02-23 | OpenClaw version: 2026.2.19-2*

---

## ⚡ EMERGENCY CONTACTS

| Issue | Action |
|-------|--------|
| **Web UI down** | Use Telegram backup |
| **Telegram down** | Check web UI at http://127.0.0.1:18789/ |
| **Both down** | Run terminal commands below |
| **Total failure** | See [LEVEL 4: Config Rebuild](#level-4-config-rebuild) |

---

## 🔴 SCENARIO MATRIX: What Can Go Wrong

| Scenario | Symptom | Go To |
|----------|---------|-------|
| Pairing expired | `pairing required` error | [Level 1](#level-1-soft-reset) |
| Gateway crashed | `gateway not running` | [Level 2](#level-2-hard-reset) |
| Port conflict | `Port 18789 in use` | [Level 2](#level-2-hard-reset) |
| Multiple gateways | Conflicting PIDs | [Level 3](#level-3-nuclear-reset) |
| Config corrupted | JSON errors | [Level 4](#level-4-config-rebuild) |
| Session locked | `.lock` file stuck | [Level 2](#level-2-hard-reset) |

---

## 🟢 LEVEL 1: Soft Reset (30 seconds)

**Try this first for `pairing required` errors.**

```bash
# 1. Check gateway status
openclaw gateway status | grep -E "running|stopped"

# 2. Clear pairing and restart
rm ~/.openclaw/credentials/*-pairing.json
systemctl --user restart openclaw-gateway.service

# 3. Wait 10 seconds, refresh web page
```

**Success indicator:** `openclaw status` shows `main OK` (not PENDING)

---

## 🟡 LEVEL 2: Hard Reset (60 seconds)

**If Level 1 fails.**

```bash
# 1. Stop everything
systemctl --user stop openclaw-gateway.service openclaw-autoheal.service
pkill -f "openclaw gateway"

# 2. Verify stopped
pgrep -f "openclaw gateway" || echo "Stopped"

# 3. Clear all pairing state
rm -f ~/.openclaw/credentials/*-pairing.json

# 4. Clear session locks (CRITICAL!)
rm -f ~/.openclaw/agents/*/sessions/*.lock

# 5. Start clean
systemctl --user start openclaw-gateway.service

# 6. Verify
sleep 5 && openclaw status | grep "Gateway"
```

**Success indicator:** `Gateway: running` + no `pairing required` errors

---

## 🟠 LEVEL 3: Nuclear Reset (2 minutes)

**If Level 2 fails.**

```bash
# 1. Full stop
systemctl --user stop openclaw-gateway.service openclaw-autoheal.service
pkill -9 -f "openclaw"

# 2. Backup current state
mkdir -p ~/.openclaw/backup.$(date +%Y%m%d.%H%M%S)
cp -r ~/.openclaw/credentials ~/.openclaw/agents ~/.openclaw/backup.*/
cp ~/.openclaw/openclaw.json ~/.openclaw/backup.*/

# 3. Clear problematic states
rm -rf ~/.openclaw/credentials/*-pairing.json
rm -rf ~/.openclaw/agents/*/sessions/*.lock
rm -rf ~/.openclaw/agents/*/sessions/sessions.json

# 4. Check for port conflicts
lsof -i :18789 | grep -v "openclaw" && echo "OTHER APP USING PORT!"

# 5. Start gateway manually to see errors
openclaw gateway  # Run in foreground, watch for errors
# (Ctrl+C to stop after seeing it start OK)

# 6. Start via systemd
systemctl --user start openclaw-gateway.service
```

---

## 🔴 LEVEL 4: Config Rebuild (5 minutes)

**If everything above fails.**

```bash
# 1. Full backup
mv ~/.openclaw ~/.openclaw.broken.$(date +%Y%m%d)
mkdir ~/.openclaw

# 2. Re-run setup wizard
openclaw configure
# → Re-enter API keys (Moonshot, Groq, OpenRouter)
# → Re-enable Telegram
# → Gateway will auto-start

# 3. Re-verify agents work
openclaw status
```

**Note:** Your vault in `~/Workspaces/TheOptimizedBrain/` is **NOT affected** by this.

---

## 🎯 ONE-COPY-PASTE EMERGENCY COMMAND

**When you just want RON back RIGHT NOW:**

```bash
systemctl --user stop openclaw-gateway.service; \
pkill -9 -f "openclaw"; \
rm -f ~/.openclaw/credentials/*-pairing.json; \
rm -f ~/.openclaw/agents/*/sessions/*.lock; \
systemctl --user start openclaw-gateway.service; \
sleep 5; \
echo "DONE — Refresh web page or send Telegram message"
```

---

## 🔍 DIAGNOSTIC COMMANDS

**Check what's broken:**

```bash
# Gateway status
openclaw gateway status

# Full system status
openclaw status --all

# Recent errors
tail -50 /tmp/openclaw-1000/openclaw-$(date +%Y-%m-%d).log

# Check for zombie processes
ps aux | grep openclaw | grep -v grep

# Check port usage
lsof -i :18789

# Check disk space
df -h ~/.openclaw

# Check config validity
openclaw doctor
```

---

## ⚠️ RARE EDGE CASES

| Issue | Check | Fix |
|-------|-------|-----|
| Port 18789 taken | `lsof -i :18789` | Change port: `openclaw config set gateway.port 18790` |
| Disk full | `df -h` | Clean `/tmp` or expand disk |
| Config JSON broken | `openclaw doctor` | [Level 4](#level-4-config-rebuild) |
| Node.js broken | `node --version` | `npm i -g openclaw` |
| Permission denied | `ls -la ~/.openclaw` | `chmod -R 700 ~/.openclaw` |
| Systemd broken | `systemctl --user status` | Use `openclaw gateway` directly |

---

## 📞 POST-RECOVERY CHECKLIST

After any recovery:

- [ ] `openclaw status` shows `Gateway: running`
- [ ] No `pairing required` errors
- [ ] `main` agent shows `OK` (not `PENDING`)
- [ ] Web UI responds at http://127.0.0.1:18789/
- [ ] Telegram responds to test message
- [ ] Test subagent: `openclaw agent --message "test" --local` (optional)

---

## 🛡️ PREVENTION

**Add to HEARTBEAT.md checks:**

```markdown
- [ ] `openclaw status` — gateway healthy?
- [ ] If `pairing required` seen → Run [Level 1](#level-1-soft-reset)
```

**Before major changes:**

```bash
# Backup working state
cp ~/.openclaw/openclaw.json ~/.openclaw/openclaw.json.backup.$(date +%Y%m%d)
```

---

## 📚 RELATED DOCUMENTS

- [[09-System/DISASTER_RECOVERY]] — Broader system recovery
-  — Periodic health checks
- [[08-Dashboards/MISSION_CONTROL]] — System status dashboard

---

*Created by RON after Gateway Bug #22062 post-mortem.*
*Tested on: Ubuntu 24.04, OpenClaw 2026.2.19-2, Node 22.22.0*
*Last verified: 2026-02-23*