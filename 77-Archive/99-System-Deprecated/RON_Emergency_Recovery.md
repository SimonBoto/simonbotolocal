# 🚨 RON Emergency Recovery Protocol
> When the AI fails, use this.  
> **Last updated:** 2026-02-22  
> **Tested on:** Ubuntu 22.04, OpenClaw 2026.2.19-2

---

## 😰 Did This Happen?

- [ ] RON stopped responding mid-conversation
- [ ] "Gateway pairing required" or 1008/1006 errors
- [ ] Tools failing (web search, browser, etc.)
- [ ] RON says "I can't access my tools"
- [ ] Multiple "thinking..." with no response

**If 2+ checked → Run Recovery Below**

---

## 🔥 EMERGENCY ONE-LINER (Copy & Paste)

```bash
rm -rf ~/.openclaw/devices/* && openclaw gateway restart && sleep 3 && openclaw devices list
```

**Expected output:**
```
Paired (1)
┌────────────────────────────────────────────┬────────────┬─────────────────────────────────┬────────────┐
│ Device                                     │ Roles      │ Scopes                          │ Tokens     │
├────────────────────────────────────────────┼────────────┼─────────────────────────────────┼────────────┤
│ 0c4bfc...                                  │ operator   │ operator.admin...               │ operator   │
└────────────────────────────────────────────┴────────────┴─────────────────────────────────┴────────────┘
```

If you see **"Paired (1)"** → ✅ Fixed. Refresh the chat window.

---

## 🧰 FULL RECOVERY (If One-Liner Fails)

### Step 1: Stop Everything
```bash
systemctl --user stop openclaw-gateway
pkill -f openclaw
```

### Step 2: Clear All Cache
```bash
rm -rf ~/.openclaw/devices/*
rm -f /tmp/openclaw-*
```

### Step 3: Verify Port is Free
```bash
lsof -i :18789
```
**Should show NOTHING.** If it shows a process, kill it:
```bash
kill -9 <PID>
```

### Step 4: Manual Gateway Start
```bash
openclaw gateway start --force
```

### Step 5: Verify Pairing
```bash
sleep 3
openclaw devices list
```

**Success = "Paired (1)" or "Paired (2)"**

---

## 🔐 CRITICAL: What Else to Check After Gateway Restart

Gateway restart alone is NOT enough. Check these:

### 1. Devices Are Actually Paired
```bash
openclaw devices list
```
**Must show:** `Paired (1)` or `Paired (2)`

**If shows:** `No devices paired` → Run Step 2 (clear cache) again

---

### 2. Full System Status
```bash
openclaw status
```

**Check for these lines:**
```
gateway        | ws://127.0.0.1:18789 | OK ✅
web_search     | brave_search         | OK ✅
web_fetch      | fetch                | OK ✅
browser        | http://127.0.0.1:18800| OK ✅ (or SKIP if browser not used)
telegram       | bot                  | OK ✅ (if using Telegram)
```

**Any show ERROR or MISSING?** → That tool needs separate fix (see below)

---

### 3. Verify Config Intact
```bash
cat ~/.openclaw/openclaw.json | jq '.gateway.auth'
```

**Should show:**
```json
{
  "mode": "password",
  "password": "ronvault2025"
}
```

**If missing or different** → Config corrupted. Restore from backup:
```bash
cp ~/.openclaw/openclaw.json.bak.$(ls -t ~/.openclaw/openclaw.json.bak.* | head -1) ~/.openclaw/openclaw.json
```

---

### 4. Check API Keys Present
```bash
cat ~/.openclaw/openclaw.json | jq '.tools.web.search.apiKey'
```

**Should show:** `"BSASJ4qqi8vhFrxPfkuIYS23YFssVYg"`

**If null or missing** → Keys lost. Check:
- `~/.openclaw/CREDENTIALS_VAULT.md` (master list)
- `~/.openclaw/openclaw.json.bak.*` (backups)

---

### 5. Browser Relay (If Using Browser)
```bash
curl -s http://127.0.0.1:18800/json/version | head -1
```

**Should return:** JSON with Chrome version

**If connection refused** → Browser relay not running:
```bash
# If you have Chrome extension relay:
# Make sure Chrome is open with OpenClaw extension
# Click the OpenClaw toolbar icon (badge should show "ON")
```

---

## 🩹 Tool-Specific Fixes

### Web Search Broken
```bash
# Test
openclaw tools call web_search --query "test"

# If fails, check API key
cat ~/.openclaw/openclaw.json | jq '.tools.web.search'

# Fix: Add key back
# Edit ~/.openclaw/openclaw.json, add:
# "tools": { "web": { "search": { "enabled": true, "apiKey": "BSASJ4qqi8vhFrxPfkuIYS23YFssVYg" } } }
```

### Browser Tool Broken
```bash
# Check if browser control server is running
curl http://127.0.0.1:18800/json/version

# If fails, you need Chrome extension relay:
# 1. Open Chrome
# 2. Click OpenClaw extension icon (must show "ON")
# 3. Or use: openclaw browser start
```

### Telegram Broken
```bash
# Check bot status
openclaw status | grep telegram

# If ERROR, check token
cat ~/.openclaw/openclaw.json | jq '.channels.telegram.botToken'

# Should be: "8484256230:AAEGDLo4R2s1jvpRZPsJDsUD2E8NRI3u8f8"
```

---

## 📋 EMERGENCY CHECKLIST

After ANY gateway restart, run this:

```bash
echo "=== RON Health Check ==="
echo -n "Gateway:      "; openclaw gateway status 2>&1 | grep -q "RPC probe: ok" && echo "✅" || echo "❌"
echo -n "Paired:       "; openclaw devices list 2>&1 | grep -q "Paired" && echo "✅" || echo "❌"
echo -n "Web Search:   "; cat ~/.openclaw/openclaw.json 2>/dev/null | jq -r '.tools.web.search.apiKey' | grep -q "BSAS" && echo "✅" || echo "❌"
echo -n "Config:       "; cat ~/.openclaw/openclaw.json 2>/dev/null | jq -r '.gateway.auth.password' | grep -q "ronvault" && echo "✅" || echo "❌"
echo ""
echo "If any ❌ above, check sections above."
```

---

## 🎒 BACKUP LOCATIONS

**If everything is lost, restore from:**

| File | What It Has | Location |
|------|-------------|----------|
| `CREDENTIALS_VAULT.md` | ALL API keys, passwords | `~/.openclaw/` |
| `ETERNAL_FIXES.md` | Full recovery procedures | `~/.openclaw/` |
| `openclaw.json.bak.*` | Config snapshots | `~/.openclaw/` |
| This file | Recovery steps | `99-System/` (vault) |

---

## 🐛 KNOWN BUGS

### Bug #22062: Gateway Pairing Loop
**Symptoms:** 1008 error, "pairing required", RON can't use tools
**Root cause:** Device cache gets stale
**Fix:** Clear cache → restart (see Step 2 above)
**Prevention:** None (OpenClaw bug), but password auth helps

### Cron Job Over-Healing
**Symptoms:** Gateway constantly restarting, log shows restart every 5 min
**Root cause:** `gateway-autoheal.sh` cron job too aggressive
**Fix:** Disable cron: `crontab -l | grep -v "gateway-autoheal" | crontab -`

---

## 📞 When to Give Up and Reinstall

**Only if:**
1. Config file completely corrupted (not valid JSON)
2. No backups exist
3. Multiple reinstalls fail

**Nuclear option:**
```bash
# BACKUP FIRST!
cp -r ~/.openclaw ~/.openclaw.BACKUP.$(date +%Y%m%d)

# Then reinstall
npm install -g openclaw
openclaw configure
# Re-enter all API keys from CREDENTIALS_VAULT.md
```

---

## 🧠 What Caused Yesterday's Disaster?

**Theory:** A perfect storm of:
1. OpenClaw auto-updated (or restarted)
2. Device cache got corrupted
3. Cron job kept clearing cache, preventing stable pairing
4. Multiple restarts caused config confusion

**Prevention:**
- ✅ Disabled aggressive cron job
- ✅ Password auth is stable
- ✅ Documented all credentials
- ✅ Created this recovery guide

---

## ✍️ Update This File

When you recover from a new type of failure, add it here:

```
## YYYY-MM-DD: [Short Description]
**Symptoms:** 
**Fix:**
**Prevention:**
```

---

**You are not helpless. This page has everything you need.** 🦞

*— RON, 2026-02-22*
