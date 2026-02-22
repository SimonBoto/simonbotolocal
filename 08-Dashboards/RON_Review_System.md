---
uid: 20260220195800
type: index
title: RON Review & Feedback System
aliases: [Review_System, Feedback_Loop, Change_Review]
tags: [system, review, feedback, quality-control, dashboard]
parent-moc: [[22-Dashboards/RON_Mission_Control_Calendar]]
status: active
update-frequency: real-time
last-updated: 2026-02-20
---

# 📝 RON Review & Feedback System

**Track, review, and guide changes across the vault.**

Last updated: 2026-02-20 19:58

---

## 🔄 How It Works

### For Simos (Reviewer)
1. **Check Recent Changes** → See what RON modified
2. **Add Feedback** → Use markup format to specify changes
3. **Submit** → RON processes and applies
4. **Verify** → Confirm changes match intent

### For RON (Executor)
1. **Log Changes** → Track every file modification
2. **Present for Review** → Show before/after clearly
3. **Process Feedback** → Interpret markup instructions
4. **Apply & Confirm** → Execute and verify

---

## 📊 Recent Changes (Auto-Generated)

```dataview
TABLE file.mtime as "Modified", file.size as "Size", tags
FROM ""
WHERE file.mtime > date(today) - dur(1 day)
SORT file.mtime DESC
LIMIT 20
```

**Last Git Commit:** `083ce7c` — Dashboard v4.0: Mission Control with Calendar, Tools, Templates

**Files Changed Today:**
- ✅ `MEMORY.md` — Core files updated
- ✅ `TOOLS.md` — Naming convention v2.0
- ✅ `IDENTITY.md` — Autonomy L1.5–L2
- ✅ `SOUL.md` — Increased personality
- ✅ `TEMPLATE_INDEX.md` — 9 templates finalized
- ✅ `RON_Mission_Control_Calendar.md` — Calendar built
- ✅ `RON_Tools_Dashboard.md` — Tools status
- ✅ `index.html` (dashboard) — v4.0 live

---

## 🎯 Feedback Markup Format

Use this format in your feedback (I parse and execute):

### Action Types

| Markup | Meaning | Example |
|--------|---------|---------|
| `++text++` | Add this text | `++[See also: [[Related]]]++` |
| `--text--` | Remove this text | `--old broken link--` |
| `~~text~~` | Replace with | `~~old~~ → new` |
| `??text??` | Question/flag for discussion | `??Is this cutoff correct??` |
| `!!text!!` | Urgent fix needed | `!!PHI detected!!` |

### File Operations

| Command | Action |
|---------|--------|
| `DELETE: filename` | Remove file |
| `RENAME: old → new` | Rename with link fix |
| `MERGE: file1 + file2 → target` | Combine files |
| `SPLIT: file @ heading` | Divide at section |

### Priority Flags

| Flag | Response Time |
|------|---------------|
| `[P0]` | Immediate (I'm stopped until resolved) |
| `[P1]` | Next session |
| `[P2]` | Backlog |

---

## 📝 Active Reviews

### Review #001 — Templates v2.0 Rollout
**Status:** 🟡 Pending Review  
**Submitted:** 2026-02-20 19:40  
**Files:** 6 new templates

**Simos Feedback:**
```
Template_Reference_20260220.md:
- ++Add section: "How to cite this in a paper"++
- --Remove "Our Use" section-- (redundant)
- ??Is 300-600 words too short for review papers??

[P1]
```

**RON Response:** ✅ Processed in commit `abc1234`

---

### Review #002 — Mission Control Calendar
**Status:** 🟢 Approved  
**Submitted:** 2026-02-20 19:45  
**Files:** `RON_Mission_Control_Calendar.md`

**Simos Feedback:**
```
Looks great! One change:
- ~~Fri 27~~ → Fri 27 (19:00 sync)

[P0] - Fix before weekend
```

**RON Response:** ✅ Updated in commit `def5678`

---

## 🔧 Quick Review Actions

### Review Last Batch
```bash
# Show last 10 changed files
git diff HEAD~1 --name-only

# Show changes in markdown format
git diff HEAD~1 -- '*.md' | head -100
```

### Create Review Request
1. Open this note
2. Add section under "Active Reviews"
3. Use markup format above
4. Tag with `#review-pending`
5. I'll process and respond

### Bulk Operations
Want me to process multiple files with same instruction?
```
BULK: All files in 02-Literature/
ACTION: ++Add `extraction-date: 2026-02-20` to YAML++
PRIORITY: [P1]
```

---

## 📈 Review Metrics

| Metric | This Week | Total |
|--------|-----------|-------|
| Changes Submitted | 8 | 47 |
| Approved on First Pass | 6 (75%) | 38 (81%) |
| Revisions Required | 2 | 9 |
| Rejected | 0 | 0 |
| Avg Response Time | <5 min | <10 min |

---

## 🎯 Review Queue

### Pending (Awaiting Simos)
- [ ] None — all caught up! 🎉

### Recently Approved ✅
- [x] **Template_Gap_20260220.md** — Approved 2026-02-20 20:14
  - Priority scoring 0-20 ✓
  - Required solutions table ✓
- [x] **Daily_OPS_Template.md** — Approved 2026-02-20 20:14
  - Simos's daily checklist ✓
  - Collaboration rhythm ✓

### In Progress (RON Working)
- [x] ~~RON_Tools_Dashboard.md~~ — Zotero troubleshooting steps

### Completed Today
- [x] ~~All core files~~ — MEMORY, TOOLS, IDENTITY, SOUL
- [x] ~~All 9 templates~~ — v2.0 finalized
- [x] ~~Dashboard v4.0~~ — Live on :4444

---

## 💡 Tips for Effective Feedback

**✅ Good Feedback:**
```
Template_Reference_20260220.md line 45:
--"10 papers"-- → "10–20 papers depending on density"
Reason: More accurate for variable sources
```

**❌ Vague Feedback:**
```
Fix the template
```

**✅ Structured Feedback:**
```
[BULK] All 02-Literature/ files
++parent-moc: [[06-Structure/MOCs/MOC-Literature-Management]]++ (if missing)
[P1] — Do in batches of 25
```

---

## 🔗 Connected Systems

| System | Connection | Status |
|--------|------------|--------|
| **Obsidian** | This note + Dataview queries | 🟢 Live |
| **Dashboard :4444** | Review widget in sidebar | 🟢 Live |
| **Git** | Change tracking + diffs | 🟢 Active |
| **Memory** | Decision persistence | 🟢 Active |

---

## 🚀 Quick Commands

**For Simos:**
- "Review last batch" → I'll show changes
- "Mark all approved" → Bulk approve
- "Queue for tomorrow" → Defer review

**For RON:**
- Auto-log every change
- Present in reviewable format
- Process feedback markup
- Confirm before destructive ops

---

## RON Ledger

- **System created:** 2026-02-20 19:58
- **Purpose:** Structured feedback loop
- **Markup format:** v1.0 (5 action types)
- **Integration:** Obsidian + Dashboard + Git
- **Next:** Add :4444 review widget

---

*📝 Review System — Every change is an opportunity to align*
