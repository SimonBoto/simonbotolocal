# TheOptimizedBrain — User Guide v4.1
## Quick Reference for Daily Operations

**For:** Simos (CEO)  
**System:** v4.1 (User-refined)  
**Last Updated:** 2026-02-22

---

## 🚀 QUICK START (5 Minutes)

### 1. Open Obsidian
```
Launch Obsidian → Open TheOptimizedBrain vault
```

### 2. Check Dashboard
```
Navigate to: 08-Dashboards/MISSION_CONTROL.md
See: Current priorities, today's plan
```

### 3. Review Inbox
```
Navigate to: 00-Inbox/Fleeting/
Process: Any captures from last 24h?
```

### 4. Check Queue
```
Navigate to: 08-Dashboards/01-QUEUE.md
See: Active tasks (10 GOLD refs, IRB, etc.)
```

**Done — you're ready to work.**

---

## 📅 DAILY WORKFLOW

### Morning (10 min)

**1. Dashboard Review**
- Open `08-Dashboards/00-COMMAND.md`
- Review yesterday's log
- Check today's objectives

**2. Inbox Processing**
- Open `00-Inbox/Fleeting/`
- Move processed items to appropriate folders
- Delete or archive done items

**3. Zettel Creation**
- Create 1-3 new zettels in `03-Zettels/Conscious/`
- Link to existing zettels (3 links minimum)
- Assign to MOC (parent-moc in YAML)

**Evening (5 min)**
- Update `08-Dashboards/03-LOG.md`
- Quick git commit: `git add -A && git commit -m "daily: $(date)"`

---

## 📝 CAPTURE WORKFLOW

### From Telegram (Mobile)

**Quick capture:**
```
Send to RON: "Note: Insulin receptor has 3 phosphorylation sites"
```
**RON does:** Creates `00-Inbox/Fleeting/insulin-note-$(date).md`

**You process later:**
- Move to `02-Literature/` (if source-related)
- Extract to `03-Zettels/Conscious/` (if atomic insight)
- Delete (if transient)

### From Reading (PDF/Paper)

**Step 1:** Add to `01-References/Hub/`
```markdown
---
uid: R-001-0001
type: ref-hub
authors: Author et al.
year: 2024
title: Paper Title
---
```

**Step 2:** Create literature note in `02-Literature/`
```markdown
Author_2024_Topic_[L-001-0001].md
```

**Step 3:** Extract zettels to `03-Zettels/Conscious/`
```markdown
Insight_Title_[Z-001-0020].md
```

**Step 4:** Update synthesis in `04-Synthesis/`
```markdown
Topic_Synthesis_[S-001-0001].md
```

---

## 🔄 WEEKLY REVIEW (Sunday, 30 min)

### 1. Conscious Zettels Review
```
Navigate to: 03-Zettels/Conscious/
Sort by: Modified date (oldest first)
Review: Zettels >30 days old
```

**Promotion criteria:**
- [ ] 30+ days old
- [ ] No factual doubts
- [ ] Well-linked (3+ connections)
- [ ] Source verified

**Action:** Move to `03-Zettels/Subconscious/`
Change YAML: `status: subconscious`

### 2. Inbox Zero
```
Navigate to: 00-Inbox/Fleeting/
Action: Process all remaining items
Goal: Empty inbox
```

### 3. MOC Review
```
Navigate to: 06-Structure/MOCs/
Check: Which MOCs need updating?
Action: Add new zettel links
```

### 4. Git Push
```bash
cd ~/Workspaces/TheOptimizedBrain/
git push origin main
```

---

## 🚨 EMERGENCY PROCEDURES

### Vault Seems Broken

**1. Check git status:**
```bash
cd ~/Workspaces/TheOptimizedBrain/
git status
```

**2. Restore from backup:**
```bash
# View backup branch
git branch -a | grep backup

# Restore
git checkout backup-pre-v4.0-migration
# OR restore external:
tar -xzf /tmp/TheOptimizedBrain-BACKUP-*.tar.gz
```

**3. Contact RON:**
```
"Emergency: Vault broken, need restore"
```

### Obsidian Won't Sync

**1. Check .obsidian/workspace.json** — Large file can cause issues

**2. Reset Obsidian:**
- Close Obsidian
- Delete `.obsidian/workspace.json`
- Reopen Obsidian

**3. Rebuild index:**
- Cmd+Shift+P → "Rebuild vault cache"

### Lost Work

**1. Check git log:**
```bash
git log --oneline -10
```

**2. Restore specific file:**
```bash
git checkout HEAD~1 -- path/to/file.md
```

**3. Full restore:**
```bash
git reset --hard HEAD~1
```

---

## 💡 TOKEN OPTIMIZATION (For Speed)

### Quick Actions

**1. Use MOCs, not search:**
```
❌ Slow: "Find all adipic acid notes"
✅ Fast: Open MOC-Biomarkers.md
```

**2. Link, don't describe:**
```
❌ Slow: "The mechanism where insulin receptor..."
✅ Fast: "See [[INSR_Autophosphorylation_[Z-001-0003]]]"
```

**3. Archive old daily notes:**
```
Move: 10-Daily/2026-01-*.md → 07-Archive/Daily-2026-Q1/
```

---

## 🎯 CURRENT PRIORITIES (P0)

### From 08-Dashboards/01-QUEUE.md

**1. 10 GOLD References Extraction**
- Location: `05-Projects/PhD/GOLD-EXTRACTION/`
- Status: 🔴 P0 — Start immediately
- Agent: RON or spawn sub-agents

**2. IRB Section 1 Draft**
- Location: `05-Projects/PhD/IRB/`
- Status: 🔴 P0 — Draft this week
- Template: Use IRB template in `06-Structure/Templates/`

**3. Daily Zettel Creation**
- Target: 3 zettels/day
- Location: `03-Zettels/Conscious/`
- Topics: Insulin → Adipic acid → Metabolomics

---

## 📞 GETTING HELP

### From RON (Me)

**Quick commands:**
```
"Status" — Current system status
"Check inbox" — Process 00-Inbox/
"Create zettel from [source]" — Extraction
"Update MOC [name]" — MOC maintenance
```

### From Triangle Agents

**Spawn agent:**
```
"Spawn agent to extract PMID 12345"
"Check agent status"
"Merge agent results"
```

---

## 📚 ESSENTIAL FILES (Bookmark These)

| File | Location | Purpose |
|------|----------|---------|
| Mission Control | `08-Dashboards/MISSION_CONTROL.md` | Daily priorities |
| Queue | `08-Dashboards/01-QUEUE.md` | Active tasks |
| This Guide | `09-System/USER_GUIDE_v4.1.md` | Reference |
| System Architecture | `SYSTEM_README.md` | Full docs |
| UID System | `09-System/UID_SYSTEM_v2.0.md` | Naming rules |

---

## ✅ SYSTEM CHECKLIST

**Daily:**
- [ ] Check dashboard
- [ ] Process inbox
- [ ] Create 1-3 zettels
- [ ] Update log
- [ ] Git commit

**Weekly (Sunday):**
- [ ] Review conscious zettels
- [ ] Promote candidates to subconscious
- [ ] Inbox zero
- [ ] Update MOCs
- [ ] Git push

**Monthly:**
- [ ] Archive old daily notes
- [ ] Review cost tracking
- [ ] System health check
- [ ] Update MEMORY.md

---

## 🎉 REMEMBER

> *"The structure serves the work. The work serves the mission."*

**Don't over-optimize.** Use the system. Create content. Trust the process.

**v4.1 is production-ready.** Start producing.

---

*Quick questions? Ask RON. Complex issues? Check SYSTEM_README.md.*
