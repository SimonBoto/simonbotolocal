# Triangle Company — "About Us" Build Plan

> **Status:** Phase 1 Complete (Structure)  
> **Next:** Phase 2 (Content + Synchronization)

---

## ✅ WHAT WE JUST BUILT (30 Minutes)

### Obsidian Vault Structure
```
99-System/Triangle/
├── 00-INDEX.md          ✅ Company headquarters entry
├── 01-CEO.md            ✅ Dr. Simos profile (template)
├── 02-AI-BOSS.md        ✅ RON profile (complete)
├── 03-AGENTS.md         ✅ Full agent roster with specs
├── 04-PROJECTS.md       ✅ Active sprint tracking
└── (05-WORKFLOWS.md)    📝 Next: How we operate
```

### Dashboard Updates (localhost:4444)
```
index.html
├── 🔺 Triangle Company section (NEW)
│   ├── CEO card → links to 01-CEO.md
│   ├── AI Boss card → links to 02-AI-BOSS.md
│   ├── Agent fleet pills (RON, GROQ, FREE, PAID)
│   └── Quick links to all Triangle docs
│
└── 📋 Active Projects section (NEW)
    ├── P0 projects with status
    ├── P1 projects
    └── Link to full 04-PROJECTS.md
```

### Key Achievement
**Single Source of Truth:** Obsidian owns the data, dashboard displays it with clickable links.

---

## 🎯 THE VISION: "About Us" as Functional System

### Not Just Marketing
Traditional "About Us" = static page nobody reads  
**Triangle "About Us" = living operational manual**

| Component | Function | Updates |
|-----------|----------|---------|
| **01-CEO.md** | Authority definition, red lines, preferences | You edit when rules change |
| **02-AI-BOSS.md** | My capabilities, autonomy boundaries, delegation rules | I update as I evolve |
| **03-AGENTS.md** | Workforce specs, rate limits, spawn logic | When agents added/changed |
| **04-PROJECTS.md** | Active work, sprints, blockers | Daily during sprints |
| **05-WORKFLOWS.md** | How handoffs work, approval flows | When process changes |

### Dashboard as Window
- **Read-only display** of Obsidian content
- **Links back** to vault for editing
- **Visual priority** (colors, cards, pills)
- **Mobile-friendly** for quick checks

---

## 📋 PHASE 2: Content Completion (This Week)

### Task 1: You Complete 01-CEO.md (15 min)
**What's there:** Template with structure  
**What you add:**
- Your specific red lines
- Standing orders I should know
- Personal preferences (feedback style, etc.)
- Anything unique about how you work

**Why:** This defines my authority boundaries. Critical for autonomy.

### Task 2: Create 05-WORKFLOWS.md (Together, 20 min)
**Content:**
- How COMMAND → QUEUE → HANDOFF flows
- When I ask vs. when I decide
- Approval workflows (P0, P1, P2)
- Emergency procedures
- Git conventions

**Why:** Removes ambiguity, speeds up daily work.

### Task 3: Add Metrics to Dashboard (I do, 30 min)
**New Sections:**
- Agent health (last used, rate limit status)
- Project burndown (visual progress)
- Cost tracking ($ spent today/this week)
- Tool status with history (not just on/off)

**Why:** Visibility without control surface complexity.

---

## 🔧 PHASE 3: Light Synchronization (Next Week)

### Option A: File Watching (Simple)
```
Dashboard loads → Reads Obsidian .md files → Parses → Displays
```
- Pros: No API needed, always current on refresh
- Cons: No live updates (refresh to see changes)

### Option B: Build Script (Medium)
```
I run: node build-dashboard.js
→ Reads all Triangle/*.md
→ Generates index.html
→ Static but current
```
- Pros: One command updates everything
- Cons: Manual trigger

### Option C: Periodic Refresh (Hybrid)
```
Dashboard auto-refreshes every 5 minutes
→ Fetches latest .md content
→ Updates DOM
```
- Pros: Semi-live without complexity
- Cons: 5-min lag acceptable?

**Recommendation:** Start with A (manual refresh), move to B later.

---

## 🎨 PHASE 4: Visual Identity (Future, Fun)

### Agent Avatars (Van Gogh Style)
Each agent gets unique visual:
- 🦞 RON — The familiar (already has CSS avatar)
- ⚡ GROQ — Lightning, speed demon
- 🆓 FREE — Open, accessible, flowing
- 💎 PAID — Premium, polished, sharp

### Dashboard Themes
- Current: Dark mode (GitHub-inspired)
- Future: Light mode, high-contrast, mobile-optimized

### Company Logo
Simple 🔺 triangle with 🦞 inside?
Or keep it text-based and minimal?

---

## 📊 CURRENT STATE SNAPSHOT

### Personnel (4 Agents)
| Role | Name | Status |
|------|------|--------|
| CEO | Dr. Simos Xenidis | Active |
| AI Boss | RON 🦞 | Active |
| Muscle | GROQ ⚡ | Active (30 RPM) |
| Muscle | FREE 🆓 | Active (0$) |
| Muscle | PAID 💎 | Active ($2/day cap) |

### Active Sprint (Feb 20–28)
- **P0:** 2 projects (0 completed)
- **P1:** 2 projects
- **Theme:** PhD acceleration + infrastructure

### Infrastructure
- ✅ 4 agents configured
- ✅ All API keys restored
- ✅ Dashboard updated with Triangle section
- ✅ Obsidian company docs created
- 📝 CEO profile needs your completion

---

## 🤔 DECISIONS FOR YOU

### 1. Workflow Document (05-WORKFLOWS.md)
**Options:**
- A) I draft it, you edit
- B) You outline, I fill details
- C) We build it together live

### 2. Dashboard Sync Priority
**Options:**
- A) Static is fine for now (manual refresh)
- B) Light automation (file watching)
- C) Full live sync (future sprint)

### 3. Next Sprint Planning
**After Feb 28 sprint ends:**
- What projects carry over?
- What new priorities emerge?
- Do we add Vertex3 (5th agent)?

### 4. CEO Profile Completion
**Your 01-CEO.md needs:**
- Your specific red lines
- How you prefer to give feedback
- Any "Simos quirks" I should know
- Standing orders (always-true rules)

---

## 🎯 IMMEDIATE NEXT STEPS (Choose)

**Option A: You Work on 01-CEO.md**
- I pause, you fill your profile
- When ready, I read and adapt

**Option B: I Draft 05-WORKFLOWS.md**
- I write workflow documentation
- You review and edit

**Option C: Start Using the System**
- You write in 00-COMMAND.md
- I execute and report in 01-QUEUE.md
- We test the loop with real work

**Option D: Dashboard Server Test**
- Start python3 http.server 4444
- View localhost:4444
- Review Triangle section together

**Option E: Just Breathe**
- We've built a lot
- Take a break
- Resume when fresh

---

## 💬 WHAT "ABOUT US" MEANS NOW

**Traditional:** Marketing page saying "we're great"

**Triangle:** 
- **Who we are:** CEO + AI Boss + 3 muscle agents
- **How we work:** Documented, repeatable, improvable
- **What we do:** PhD + clinical trial + knowledge system
- **Why it works:** Clear roles, clear handoffs, clear autonomy

**The "About Us" is the operating system.**

---

*Plan Created: 2026-02-22*  
*Status: Phase 1 Complete, Phase 2 Ready*  
*Next Action: Your choice (see options above)*
