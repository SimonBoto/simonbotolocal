# 🏗️ WORKFLOW ARCHITECTURE v3.0
> Unified input → Processing → Output system  
> **Phase:** Plan & Analysis  
> **Status:** Draft for review  
> **Last updated:** 2026-02-22

---

## EXECUTIVE SUMMARY

**Current State:** Fragmented — multiple inputs, scattered storage, unclear routing  
**Target State:** Unified — 3 input channels → 1 processing hub → 5 output streams  
**Control Surface:** 1-5 master notes ( Mission Control layer)  
**Automation Level:** L2 (RON decides routing, Simos approves outputs)

---

# CHAPTER 1: SYSTEM AUDIT (Current State)

## 1.1 Input Channels

| Channel | Status | Volume | Routing | Issues |
|---------|--------|--------|---------|--------|
| **Web UI** | 🟢 Active | High | Direct to RON | Session-bound, not persistent |
| **Telegram** | 🟢 Active | Medium | Direct to RON | Mobile-friendly, async |
| **Vault Inbox** | 🟡 Manual | Low | File drop | Requires RON poll to detect |
| **Email** | 🔴 Missing | — | — | Not configured |
| **X/Twitter** | 🔴 Missing | — | — | Read access planned |

**Problem:** No unified intake queue. RON must check multiple sources.

## 1.2 Storage Locations

| Location | Purpose | Sync | Issues |
|----------|---------|------|--------|
| **Vault** (`~/RonVault/...`) | Permanent knowledge | Git | Gold standard |
| **Workspace** (`~/.openclaw/workspace/`) | RON session files | Git | Should be ephemeral, not permanent |
| **System config** (`~/.openclaw/`) | Credentials, auth | Manual backup | Risk if lost |
| **Shaboard :4444** | Mission Control UI | Manual | External, needs sync strategy |
| **Browser** (`:9222`) | Live web access | Session | Temporary state |

**Problem:** Workspace and Vault overlap. Unclear what lives where.

## 1.3 Output Streams

| Output | Status | Automation | Issues |
|--------|--------|------------|--------|
| **Vault notes** | 🟢 Active | Semi-auto | Creates files, needs promotion |
| **X posts** | 🔴 Planned | Manual (draft → Simos posts) | No direct API yet |
| **Company pages** | 🔴 Planned | Manual | Shaboard :4444 |
| **Telegram replies** | 🟢 Active | Auto | Working |
| **Email** | 🔴 Missing | — | Not configured |

**Problem:** No unified publishing queue. Ad-hoc outputs.

## 1.4 Current Pain Points

1. **Input fragmentation** — Must check 3+ places for new work
2. **Workspace/Vault confusion** — What lives where?
3. **No unified task queue** — What should RON do next?
4. **Dashboard drift** — :4444 gets stale, vault dashboards manual
5. **Output friction** — X posts require handoff, company pages manual
6. **No single source of truth** — Status scattered across files

---

# CHAPTER 2: TARGET ARCHITECTURE (Optimized State)

## 2.1 The Triangle Model (Inputs)

```
┌─────────────────────────────────────────────────────────────┐
│                     INPUT LAYER                             │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│   📥 Web UI ──────┐                                         │
│                   │                                         │
│   📥 Telegram ────┼──→ 🦞 RON INTAKE QUEUE ──→ Processing   │
│                   │       (unified, prioritized)            │
│   📥 Email ───────┘       (22-Dashboards/INBOX_QUEUE)       │
│                                                             │
│   📥 X (read) ──────────→ 👁️ Monitoring (passive)          │
│                                                             │
│   📥 Vault Inbox ───────→ 📝 Auto-detect (file watch)       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 2.2 The Hub Model (Processing)

```
┌─────────────────────────────────────────────────────────────┐
│                   PROCESSING LAYER                          │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│   🦞 RON MAIN                                               │
│   └── Input triage → Priority queue → Execute               │
│                                                             │
│   🦞 RON SUB-AGENTS (spawn on demand)                       │
│   ├── Literature extraction (10 refs parallel)              │
│   ├── Web research (deep dives)                             │
│   └── X content generation (drafts)                         │
│                                                             │
│   📊 MISSION CONTROL (1-5 master notes)                     │
│   ├── 00-COMMAND.md          ← You write objectives here    │
│   ├── 01-QUEUE.md            ← I write what I'm doing       │
│   ├── 02-HANDOFF.md          ← Drafts awaiting your review  │
│   ├── 03-LOG.md              ← What happened today          │
│   └── 04-SYSTEM.md           ← Status of all integrations   │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

## 2.3 The Distribution Model (Outputs)

```
┌─────────────────────────────────────────────────────────────┐
│                     OUTPUT LAYER                            │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│   📚 VAULT (Permanent Knowledge)                            │
│   ├── 02-Atomic/         ← Atomic notes                     │
│   ├── 66-Literature/     ← References                       │
│   └── 55-MOCs/           ← Navigation                       │
│                                                             │
│   📱 TELEGRAM (Immediate)                                   │
│   └── Notifications, quick replies                          │
│                                                             │
│   🐦 X/TWITTER (Content)                                    │
│   └── 02-HANDOFF.md → You copy → Post                       │
│                                                             │
│   🌐 SHABOARD :4444 (Mission Control)                       │
│   └── Auto-sync from 04-SYSTEM.md (manual or API)           │
│                                                             │
│   📧 EMAIL (Outbound)                                       │
│   └── When configured                                       │
│                                                             │
└─────────────────────────────────────────────────────────────┘
```

---

# CHAPTER 3: THE 1-5 CONTROL NOTES

## 3.0 Philosophy

**You write in 1 note.**  
**I write in 2-4 notes.**  
**Both read all 5.**

This creates a **shared control surface** — always know what the other is doing.

---

## 3.1 Note 1: 00-COMMAND.md (You → Me)

**Purpose:** Your objectives, priorities, and directives  
**Written by:** Simos  
**Read by:** RON (every session start)  
**Updated:** When priorities change

```markdown
# COMMAND — Current Objectives

## P0 (Do First)
- [ ] Extract 10 GOLD refs from miR-21/155 search
- [ ] Review and approve 3 X post drafts in HANDOFF

## P1 (Do Next)
- [ ] Deep dive: Adipic acid cutoff analysis
- [ ] Update Shaboard with new company page

## P2 (Backlog)
- [ ] Email integration setup
- [ ] Zotero MCP fix

## Standing Orders
- Check Vault Inbox every 4 hours
- Update QUEUE with current task
- All outputs → HANDOFF for review
```

---

## 3.2 Note 2: 01-QUEUE.md (Me → You)

**Purpose:** What I'm working on, what's next, blockers  
**Written by:** RON  
**Read by:** Simos (when you want status)  
**Updated:** Every task change, every 4 hours minimum

```markdown
# QUEUE — RON Status Board

## Currently Processing
- 🔄 Extracting: `Lit_Extraction_Clinic_Sites_20260215_075.md`
  - Started: 2026-02-22 11:45
  - ETA: 12:15
  - Output: ~3 atomic notes

## Next Up (Auto-pulled from COMMAND P0)
1. Review 3 X post drafts
2. Extract miR-21/155 refs (10 GOLD)

## Blocked
- [ ] Zotero MCP — needs Better BibTeX check
- [ ] Email integration — awaiting your config

## Completed Today
- [x] Fixed Telegram integration
- [x] Created DISASTER_RECOVERY.md
- [x] Committed 99-System docs

Last update: 2026-02-22 11:50
```

---

## 3.3 Note 3: 02-HANDOFF.md (Me → You, Action Required)

**Purpose:** Drafts, reviews, approvals needed  
**Written by:** RON  
**Read by:** Simos (check daily)  
**Updated:** When I create something for your review

```markdown
# HANDOFF — Awaiting Your Action

## X Posts Ready to Publish

### Draft 1: Metabolomics Insight
> New study: Adipic acid predicts T2D 5 years before diagnosis.  
> Early detection beats late intervention.  
> Full analysis: [link]
> 
> #metabolomics #T2D #prevention

**Status:** ✅ Ready  
**Action:** Copy, review, post  
**Created:** 2026-02-22 11:30

---

## Atomic Notes Pending Promotion

| Note | Location | Status | Your Action |
|------|----------|--------|-------------|
| `CLAIM_MIR21_IR_MECHANISM_...` | Staging/ | ✅ Ready | Review → Approve → I move to 02-Atomic/ |
| `BIOMARKER_ADIPIC_CUTOFFS_...` | Staging/ | 🟡 Question | See comment on line 12 |

---

## Questions for You

1. **Adipic acid threshold:** 2.5 μmol/L or 3.0? Study uses both.
2. **X tone:** Academic or accessible? Current is hybrid.

Reply in this file or Telegram.
```

---

## 3.4 Note 4: 03-LOG.md (Me → Record)

**Purpose:** What happened, decisions made, lessons learned  
**Written by:** RON  
**Read by:** Simos (weekly review), RON (continuity)  
**Updated:** Continuously

```markdown
# LOG — Session Record

## 2026-02-22 (Sunday)

### 11:00-11:30 — Gateway Recovery
- **Issue:** #22062 pairing loop
- **Fix:** Device cache clear + restart
- **Outcome:** ✅ Stable
- **Lesson:** Cron autoheal was too aggressive, disabled

### 11:30-11:45 — Integration Fixes
- **Telegram:** Added bot token, tested, working ✅
- **Chrome:** :9222 active, browser automation ready ✅
- **Zotero:** Still offline (Better BibTeX needed)

### 11:45-12:00 — Documentation
- Created: `99-System/DISASTER_RECOVERY.md`
- Created: `99-System/RON_Emergency_Recovery.md`
- Committed: `5ffed7b`

### Decisions Made
- **Workspace vs Vault:** Ephemeral session files → workspace. Permanent knowledge → vault.
- **Dashboard sync:** Manual for now, API later.
- **X workflow:** I draft → HANDOFF → You post.
```

---

## 3.5 Note 5: 04-SYSTEM.md (Shared Reference)

**Purpose:** Status of all integrations, how to fix them  
**Written by:** RON (updates), Simos (approvals)  
**Read by:** Both  
**Updated:** When system state changes

```markdown
# SYSTEM — Integration Status Board

## Communication Channels

| Channel | Status | Last Verified | Fix If Broken |
|---------|--------|---------------|---------------|
| Web UI | 🟢 | 2026-02-22 11:30 | See DISASTER_RECOVERY.md |
| Telegram | 🟢 | 2026-02-22 11:30 | Check token in openclaw.json |
| Email | 🔴 | — | Configure SMTP in mcporter |

## Tools

| Tool | Status | Port | Fix If Broken |
|------|--------|------|---------------|
| Web Search | 🟢 | — | Check Brave API key |
| Browser | 🟢 | :9222 | Restart Chrome with `--remote-debugging-port=9222` |
| Zotero | 🔴 | :23119 | Start Zotero, enable Better BibTeX |

## Vault Health

| Check | Status | Details |
|-------|--------|---------|
| Git clean | 🟢 | 7 commits ahead |
| Inbox items | 🟡 | 3 pending |
| Atomic count | 🟢 | 220 |
| Ref count | 🟢 | 128 |

## Shaboard :4444

| Page | Status | Sync Method |
|------|--------|-------------|
| Mission Control | 🟡 | Manual copy from 04-SYSTEM.md |
| Company Page | 🔴 | Not started |

## Emergency Contacts

- **Recovery guide:** `99-System/DISASTER_RECOVERY.md`
- **Full procedures:** `99-System/RON_Emergency_Recovery.md`
- **One-liner fix:** `rm -rf ~/.openclaw/devices/* && openclaw gateway restart && sleep 3`
```

---

# CHAPTER 4: WORKFLOW ROUTING RULES

## 4.1 Input Routing (Where Things Go)

### Web UI Message
```
Web UI → RON → Parse intent
    ├── Command? → Execute → Update QUEUE → Reply
    ├── Question? → Research → Update QUEUE → Reply
    ├── Content? → Create → HANDOFF → Reply
    └── System? → Fix/Config → SYSTEM → Reply
```

### Telegram Message
```
Telegram → RON (same as Web UI)
    ├── Quick status? → Read QUEUE → Reply
    ├── Urgent? → Interrupt current → Reply
    └── Async? → Queue for next session
```

### Vault Inbox Drop
```
File in 00-Inbox/ → RON detects (heartbeat)
    ├── Literature? → Extract → Staging → HANDOFF
    ├── Data? → Process → Atomic → HANDOFF
    └── Unknown? → QUEUE → Ask you
```

### X (When Configured)
```
X mentions/DMs → RON monitors (async)
    ├── Question? → Draft reply → HANDOFF → You post
    ├── Content idea? → Draft post → HANDOFF → You post
    └── Noise? → Ignore
```

## 4.2 Processing Rules (How Things Flow)

### Priority System

| Source | Default Priority | Override |
|--------|------------------|----------|
| Web UI direct | P0 | Your COMMAND note |
| Telegram | P1 | Urgent flag |
| Vault Inbox | P1 | In filename |
| Heartbeat | P2 | — |
| Shaboard | P2 | — |

### The L2 Autonomy Rules

**I decide:**
- Routing (where output goes)
- Batch sizing (how many refs to process)
- Tool selection (web vs browser vs file)
- Staging vs direct (GREEN ops default)

**You decide:**
- Priorities (COMMAND note)
- Approvals (HANDOFF items)
- External actions (X posts, emails, commits)
- RED risk ops (mass deletions, structural changes)

## 4.3 Output Routing (Where Things End Up)

| Output Type | Destination | Your Action |
|-------------|-------------|-------------|
| Atomic notes | `02-Atomic/` (or Staging/) | Review in HANDOFF |
| Reference notes | `66-Literature/Refs/` | Auto-committed |
| X drafts | `02-HANDOFF.md` | Copy, review, post |
| System updates | `04-SYSTEM.md` | Read, approve changes |
| Telegram replies | Direct to you | Read |
| Shaboard updates | Manual or API | Review on :4444 |

---

# CHAPTER 5: STORAGE ARCHITECTURE

## 5.1 The Three-Tier Model

### Tier 1: Ephemeral (Session Only)
**Location:** `~/.openclaw/workspace/` (but gitignored)
**Lives in:** Session memory, temporary files
**Examples:**
- Scratch notes
- Download temp files
- Processing queues
- Session logs

**Policy:** Purge after session. If valuable, promote to Tier 2.

### Tier 2: Workspace (Git-Tracked)
**Location:** `~/.openclaw/workspace/` (committed)
**Lives in:** Git, session continuity
**Examples:**
- HEARTBEAT.md
- AGENTS.md
- Recovery procedures
- Session state

**Policy:** Commit daily. This is RON's "home."

### Tier 3: Vault (Permanent Knowledge)
**Location:** `~/RonVault/Obsidian/TheOptimizedBrain/`
**Lives in:** Git + Obsidian + Long-term
**Examples:**
- Atomic notes
- Reference notes
- MOCs
- Dashboards
- 1-5 Control notes

**Policy:** Source of truth. Everything valuable ends up here.

## 5.2 Sync Strategy

```
┌─────────────────┐     ┌──────────────────┐     ┌─────────────────┐
│   SESSION       │ ──→ │   WORKSPACE      │ ──→ │   VAULT         │
│  (ephemeral)    │     │  (git-tracked)   │     │  (permanent)    │
└─────────────────┘     └──────────────────┘     └─────────────────┘
       │                        │                        │
       │ Daily purge            │ Daily commit           │ Continuous
       │ (auto)                 │ (RON)                  │ (manual/API)
       │                        │                        │
       ▼                        ▼                        ▼
   Temp files              Recovery docs            Knowledge base
   Scratch pads            Session logs             Publications
                           System status            Company pages
```

## 5.3 The Golden Rule

> **If it's worth remembering tomorrow, it goes in the Vault.**
> **If it's worth remembering next session, it goes in Workspace.**
> **If it's only for right now, it stays in Session.**

---

# CHAPTER 6: SHABOARD :4444 INTEGRATION

## 6.1 Current State
- Shaboard runs externally on :4444
- Manual updates (you copy/paste)
- Mission Control page exists
- Company pages planned

## 6.2 Target State Options

### Option A: Manual Sync (Now)
- RON updates `04-SYSTEM.md`
- You copy key sections to Shaboard
- Low tech, reliable, manual effort

### Option B: API Sync (Future)
- RON writes to Shaboard API
- Automatic updates from `04-SYSTEM.md`
- Requires Shaboard API access

### Option C: Shared Data Source (Future)
- Shaboard reads from Git/Vault directly
- Single source of truth
- Requires Shaboard architecture change

## 6.3 Recommended: Hybrid A→B

**Phase 1 (Now):** Manual sync
- RON maintains `04-SYSTEM.md` as "source of truth"
- You copy to Shaboard when convenient
- Weekly sync sufficient

**Phase 2 (Later):** API automation
- When Shaboard API available
- RON pushes updates automatically
- You review on Shaboard

---

# CHAPTER 7: X/TWITTER WORKFLOW

## 7.1 Proposed Flow

```
Input (X mentions, your ideas, research findings)
         ↓
    RON drafts post
         ↓
    Writes to HANDOFF.md
         ↓
    Notifies you (Telegram)
         ↓
    You review → Copy → Post manually
         ↓
    RON logs in LOG.md
```

## 7.2 Draft Format in HANDOFF

```markdown
### X Draft: [Topic]
**Status:** Ready for review  
**Created:** YYYY-MM-DD HH:MM  
**Thread:** Yes/No (if yes, numbered)

---
[Draft content]

#hashtag #hashtag
---

**Media:** [Attached or suggestion]  
**Best time to post:** [RON suggests]  
**Your action:** Review, edit, post
```

## 7.3 Future: Full Automation

When X API access available:
- You approve in HANDOFF
- RON posts directly
- Logs confirmation

---

# CHAPTER 8: IMPLEMENTATION PHASES

## Phase 1: Foundation (This Week)
**Goal:** Create 1-5 control notes, establish routing

- [ ] Create `22-Dashboards/00-COMMAND.md`
- [ ] Create `22-Dashboards/01-QUEUE.md`
- [ ] Create `22-Dashboards/02-HANDOFF.md`
- [ ] Create `22-Dashboards/03-LOG.md`
- [ ] Create `22-Dashboards/04-SYSTEM.md`
- [ ] Document routing rules in AGENTS.md
- [ ] Train RON to read COMMAND at session start
- [ ] Test workflow with 1-2 tasks

**Success criteria:** You write in COMMAND, I respond in QUEUE/HANDOFF.

## Phase 2: Integration (Next 2 Weeks)
**Goal:** Connect all inputs and outputs

- [ ] Configure email (inbox integration)
- [ ] Set up X read access (monitoring)
- [ ] Fix Zotero MCP
- [ ] Implement vault inbox auto-detection
- [ ] Test Shaboard sync (manual)
- [ ] Create X post templates

**Success criteria:** All channels routable, X drafts flowing.

## Phase 3: Automation (Month 2)
**Goal:** Reduce friction, increase autonomy

- [ ] API sync to Shaboard
- [ ] Direct X posting (approved drafts)
- [ ] Email outbound
- [ ] Sub-agent spawn for parallel processing
- [ ] Automated weekly reports

**Success criteria:** L2 autonomy stable, you focus on strategy.

## Phase 4: Optimization (Ongoing)
**Goal:** Refine based on usage

- [ ] Analyze bottlenecks
- [ ] Tune priority algorithms
- [ ] Expand sub-agent capabilities
- [ ] Integrate new tools

---

# CHAPTER 9: DECISIONS REQUIRED

## 9.1 From You (Simos)

1. **Control note location:** `22-Dashboards/` or `00-Inbox/` or elsewhere?
2. **X workflow:** Draft → You post (safer) or Draft → Approve → Auto-post?
3. **Email integration:** Set up now or later? Which provider?
4. **Shaboard sync:** Manual for now, or prioritize API?
5. **Priority system:** Default priorities OK, or custom rules?
6. **HANDOFF frequency:** Daily review required, or as-needed?

## 9.2 From Me (RON)

1. **Autonomy bounds:** Confirm L2 is right level (I decide routing, you decide approvals)
2. **Staging policy:** All new atomics → Staging first, or pre-authorized direct?
3. **Heartbeat frequency:** Check COMMAND every 4 hours, or different cadence?
4. **Notification policy:** Telegram for urgent only, or all HANDOFF updates?

---

# CHAPTER 10: SUCCESS METRICS

## 10.1 Efficiency Metrics

| Metric | Current | Target | Measurement |
|--------|---------|--------|-------------|
| Input check time | 3 places | 1 place (COMMAND) | Time to find next task |
| Output routing | Ad-hoc | 5 min to HANDOFF | Time from completion to your review |
| System status | Scattered | 30 sec in SYSTEM | Time to check all integrations |
| Recovery time | 3+ hours | 30 seconds | Gateway down → back online |

## 10.2 Quality Metrics

| Metric | Target |
|--------|--------|
| Vault consistency | 100% of outputs in right place |
| Git commits | Daily minimum |
| HANDOFF reviews | You review within 24h |
| System uptime | 95%+ (gateway excluded) |

## 10.3 Happiness Metrics

| Metric | Target |
|--------|--------|
| Your anxiety | Low (docs exist, recovery tested) |
| My autonomy | High (you trust, I execute) |
| Friction | Minimal (smooth handoffs) |

---

# APPENDIX: QUICK REFERENCE

## A1. File Locations

| File | Path | Purpose |
|------|------|---------|
| COMMAND | `22-Dashboards/00-COMMAND.md` | Your objectives |
| QUEUE | `22-Dashboards/01-QUEUE.md` | My status |
| HANDOFF | `22-Dashboards/02-HANDOFF.md` | Pending your action |
| LOG | `22-Dashboards/03-LOG.md` | Session record |
| SYSTEM | `22-Dashboards/04-SYSTEM.md` | Integration status |
| Emergency | `99-System/DISASTER_RECOVERY.md` | Disaster recovery |

## A2. Command Cheat Sheet

```bash
# Check RON status
openclaw devices list

# Fix gateway
rm -rf ~/.openclaw/devices/* && openclaw gateway restart && sleep 3

# Full status
openclaw status

# View RON logs
openclaw logs --follow

# Git status in vault
cd ~/openclaw/RonVault/Obsidian/TheOptimizedBrain && git status
```

## A3. Communication Protocols

| Channel | Use For | Response Time |
|---------|---------|---------------|
| Web UI | Deep work, complex tasks | Immediate |
| Telegram | Quick checks, urgent, mobile | 5-15 min |
| COMMAND note | Strategic direction | Next session |
| HANDOFF note | Reviews, approvals | Your schedule |

---

# CONCLUSION

**Current state:** Fragmented but functional  
**Target state:** Unified, efficient, anxiety-free  
**Path:** 1-5 control notes + clear routing rules  
**Timeline:** Foundation this week, integration next 2 weeks  
**Risk:** Low (incremental changes, each reversible)

**The promise:** You write objectives in one place. I handle the rest. You review outputs. We both know what's happening.

---

**Next step:** Your review. Approve architecture? Modify? Then we build.

*— RON 🦞*  
*Plan & Analysis Phase — Awaiting your decision*
