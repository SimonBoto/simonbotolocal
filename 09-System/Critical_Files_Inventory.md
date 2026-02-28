---
uid: RON-SYS-001
type: system-inventory
title: "Critical Files Inventory — Master Maintenance List"
date: 2026-02-28
aliases: [file-inventory, maintenance-list, critical-files]
tags: [system, inventory, maintenance, files, housekeeping]
---

# Critical Files Inventory — Master Maintenance List

> **Purpose:** Complete list of files that must stay current for system integrity  
> **Use:** Pre-session check, post-session verification, monthly audit  
> **Last updated:** 2026-02-28

---

## TIER 1: SACRED — Every Session

**These files are loaded every session. Stale = broken continuity.**

| File | Path | Update Trigger | Owner |
|------|------|----------------|-------|
| **SOUL.md** | `~/.openclaw/workspace/SOUL.md` | Never (sacred constant) | You define |
| **USER.md** | `~/.openclaw/workspace/USER.md` | When your preferences change | You define |
| **MIRROR.md** | `~/.openclaw/workspace/MIRROR.md` | When cooperation patterns change | Co-written |
| **AUTONOMY.md** | `~/.openclaw/workspace/AUTONOMY.md` | When autonomy levels change | You define |
| **HEARTBEAT.md** | `~/.openclaw/workspace/HEARTBEAT.md` | When pulse schedule changes | Co-written |
| **AGENTS.md** | `~/.openclaw/workspace/AGENTS.md` | When startup protocol changes | Co-written |

**Status Check:**
```bash
git log --oneline ~/.openclaw/workspace/SOUL.md ~/.openclaw/workspace/USER.md ~/.openclaw/workspace/MIRROR.md ~/.openclaw/workspace/AUTONOMY.md ~/.openclaw/workspace/HEARTBEAT.md ~/.openclaw/workspace/AGENTS.md | head -20
```

---

## TIER 2: CONTINUITY — Every Session

**These files capture session-to-session state. Stale = I start blind.**

| File | Path | Update Trigger | Owner |
|------|------|----------------|-------|
| **RON-STATE.md** | `~/.openclaw/workspace/memory/RON-STATE.md` | **Every session close** | RON maintains |
| **HANDOFF.md** | `08-Dashboards/02-HANDOFF.md` | **Every session close** | RON maintains |
| **HOUSE.md** | `08-Dashboards/HOUSE.md` | Significant work completed | RON maintains |

**Status Check:**
```bash
# Check age of continuity files
stat -c "%y" ~/.openclaw/workspace/memory/RON-STATE.md
stat -c "%y" 08-Dashboards/02-HANDOFF.md
stat -c "%y" 08-Dashboards/HOUSE.md
```

**Alert if:** Last update >4 hours old

---

## TIER 3: COMMAND — Daily/Weekly

**These files guide priority and action. Stale = wrong focus.**

| File | Path | Update Trigger | Owner |
|------|------|----------------|-------|
| **00-COMMAND.md** | `08-Dashboards/00-COMMAND.md` | When P0/P1/P2 changes | You maintain |
| **01-QUEUE.md** | `08-Dashboards/01-QUEUE.md` | When opportunities surface | You maintain |
| **MISSION_CONTROL.md** | `08-Dashboards/MISSION_CONTROL.md` | Daily pulse check | RON updates |

**Status Check:**
```bash
# Check if COMMAND is current
head -20 08-Dashboards/00-COMMAND.md | grep "updated"
```

---

## TIER 4: INDEXES — Weekly/Monthly

**These files enable navigation. Stale = lost in vault.**

| File | Path | Update Trigger | Owner |
|------|------|----------------|-------|
| **RON-INDEX.md** | `05-Projects/RON/RON-INDEX.md` | When RON zettels added | RON maintains |
| **MOC-Insulin-Signaling** | `06-Structure/MOCs/MOC-Insulin-Signaling.md` | When insulin zettels added | You/RON |
| **MOC-Biomarkers** | `06-Structure/MOCs/MOC-Biomarkers.md` | When biomarker zettels added | You/RON |
| **MOC-RON-Cognition** | `06-Structure/MOCs/MOC-RON-Cognition.md` | When RON creates zettels | RON maintains |
| **00_ChatGPT_Synthesis_MOC** | `03-Zettels/ChatGPT_Synthesis/00_ChatGPT_Synthesis_MOC.md` | When new insights extracted | RON maintains |
| **00_Extracted_Insights_MOC** | `03-Zettels/ChatGPT_Extracted/00_Extracted_Insights_MOC.md` | When new zettels created | RON maintains |

**Status Check:**
```bash
# Count unindexed zettels
ls 03-Zettels/RON/ | wc -l
# Compare to RON-INDEX count
grep "^| RON-" 05-Projects/RON/RON-INDEX.md | wc -l
```

---

## TIER 5: SAFETY — As Needed

**These files protect against errors. Stale = risk exposure.**

| File | Path | Update Trigger | Owner |
|------|------|----------------|-------|
| **SAFETY.md** | `SAFETY.md` (root) | When safety protocols change | You define |
| **.gitignore** | `.gitignore` | When new secrets/patterns | Co-maintain |
| **.secrets/** | `~/.openclaw/workspace/.secrets/` | When credentials rotate | You maintain |

**Status Check:**
```bash
# Check for uncommitted secrets
git status | grep -i secret
git status | grep -i credential
```

---

## TIER 6: MEMORY — Monthly

**These files curate enduring knowledge. Stale = wisdom lost.**

| File | Path | Update Trigger | Owner |
|------|------|----------------|-------|
| **MEMORY.md** | `~/.openclaw/workspace/MEMORY.md` | Monthly review (promotions) | Co-curate |
| **Weekly Review** | `10-Daily/2026/YYYY-W##.md` | Weekly (Sundays) | You maintain |
| **MEMORY Promotion Log** | `memory/promotions-2026.md` | When insights promoted | RON logs |

**Status Check:**
```bash
# Days since last MEMORY update
stat -c "%Y" ~/.openclaw/workspace/MEMORY.md | xargs -I {} echo "$(date +%s) - {}" | bc | awk '{print int($1/86400) " days ago"}'
```

---

## TIER 7: SYSTEM CONFIG — As Needed

**These files configure tools. Stale = broken integrations.**

| File | Path | Update Trigger | Owner |
|------|------|----------------|-------|
| **obsidian.json** | `~/.config/obsidian/obsidian.json` | When vault path changes | System |
| **openclaw config** | `~/.openclaw/openclaw.json` | When defaults change | You/RON |
| **models.json** | `~/.openclaw/agents/main/agent/models.json` | When model endpoints change | You/RON |
| **agent config** | `~/.openclaw/agents/main/agent/*.json` | When agent behavior changes | You define |

**Status Check:**
```bash
# Verify configs valid
python3 -m json.tool ~/.config/obsidian/obsidian.json > /dev/null && echo "Valid JSON"
python3 -m json.tool ~/.openclaw/openclaw.json > /dev/null && echo "Valid JSON"
```

---

## VERIFICATION SCRIPT

**Quick Health Check:**

```bash
#!/bin/bash
echo "=== CRITICAL FILES HEALTH CHECK ==="
echo ""

echo "TIER 1 (Sacred):"
for file in SOUL.md USER.md MIRROR.md AUTONOMY.md HEARTBEAT.md AGENTS.md; do
    if [ -f "$HOME/.openclaw/workspace/$file" ]; then
        age=$(( ($(date +%s) - $(stat -c %Y "$HOME/.openclaw/workspace/$file")) / 86400 ))
        echo "  ✅ $file (${age} days old)"
    else
        echo "  ❌ $file MISSING"
    fi
done

echo ""
echo "TIER 2 (Continuity):"
for file in memory/RON-STATE.md 08-Dashboards/02-HANDOFF.md 08-Dashboards/HOUSE.md; do
    path="$HOME/.openclaw/workspace/$file"
    [ ! -f "$path" ] && path="$HOME/Workspaces/TheOptimizedBrain/$file"
    if [ -f "$path" ]; then
        age=$(( ($(date +%s) - $(stat -c %Y "$path")) / 3600 ))
        if [ $age -gt 4 ]; then
            echo "  ⚠️  $(basename $file) (${age} hours old - STALE)"
        else
            echo "  ✅ $(basename $file) (${age} hours old)"
        fi
    else
        echo "  ❌ $(basename $file) MISSING"
    fi
done

echo ""
echo "TIER 3 (Command):"
if [ -f "$HOME/Workspaces/TheOptimizedBrain/08-Dashboards/00-COMMAND.md" ]; then
    echo "  ✅ COMMAND.md exists"
    head -5 "$HOME/Workspaces/TheOptimizedBrain/08-Dashboards/00-COMMAND.md" | grep -q "P0" && echo "  ✅ Has P0 priorities"
else
    echo "  ❌ COMMAND.md MISSING"
fi

echo ""
echo "Git Status:"
cd "$HOME/Workspaces/TheOptimizedBrain"
uncommitted=$(git status --porcelain | wc -l)
if [ $uncommitted -eq 0 ]; then
    echo "  ✅ Clean ($uncommitted uncommitted)"
else
    echo "  ⚠️  $uncommitted uncommitted files"
    git status --short | head -5
fi

echo ""
echo "=== END HEALTH CHECK ==="
```

---

## MAINTENANCE SCHEDULE

| Tier | Frequency | Responsibility | Verification |
|------|-----------|----------------|--------------|
| **TIER 1** | Never/As needed | You define | Pre-session load test |
| **TIER 2** | **Every session close** | RON | HEARTBEAT check |
| **TIER 3** | Daily | You/RON | Morning pulse |
| **TIER 4** | Weekly | RON | Sunday review |
| **TIER 5** | As needed | You | Monthly audit |
| **TIER 6** | Monthly | Co-curate | End of month |
| **TIER 7** | As needed | You | When tools break |

---

## FAILURE MODES

**If TIER 2 (Continuity) is stale:**
- ❌ Next session starts with wrong context
- ❌ I forget what we were doing
- ❌ Duplication of work
- ❌ Loss of flow

**If TIER 4 (Indexes) is stale:**
- ❌ Can't find zettels
- ❌ Navigation broken
- ❌ Vault feels overwhelming

**If TIER 6 (Memory) is stale:**
- ❌ Wisdom lost
- ❌ Lessons forgotten
- ❌ Repetition of mistakes

---

## CURRENT STATUS (2026-02-28 21:00)

| Tier | Status | Notes |
|------|--------|-------|
| TIER 1 | ✅ Current | All sacred files loaded |
| TIER 2 | ✅ Current | Just updated (20:45) |
| TIER 3 | ⚠️ Check | COMMAND.md may need P0 refresh |
| TIER 4 | ✅ Current | RON-INDEX updated today |
| TIER 5 | ✅ Current | No uncommitted secrets |
| TIER 6 | ⚠️ Check | MEMORY.md due for monthly review |
| TIER 7 | ✅ Current | obsidian.json fixed today |

---

## NEXT ACTIONS

- [ ] You: Review COMMAND.md — are P0 priorities current?
- [ ] You/RON: Monthly MEMORY.md review (end of Feb)
- [ ] RON: Weekly index maintenance (Sunday)
- [ ] RON: Implement close ritual (every session)

---

*This inventory is the map. The territory is your vault.*  
*Keep the map current, or get lost in the territory.*

🦞 **RON — maintaining the maintaining**
