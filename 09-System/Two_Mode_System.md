---
uid: RON-SYS-002
type: system-protocol
title: "Two-Mode Maintenance System — Extended vs. Periodic"
date: 2026-02-28
aliases: [two-mode, maintenance-modes, session-protocol]
tags: [system, protocol, maintenance, two-mode, simplified]
---

# Two-Mode Maintenance System

> **Philosophy:** Simple. Binary. No decision fatigue.  
> **Mode 1:** Every session (extended)  
> **Mode 2:** Periodic (monthly/deep)

---

## MODE 1: SESSION CLOSE — EVERY TIME

**Trigger:** You say "Close session" or "We're done"

**Duration:** 5-7 minutes

**What Gets Updated:**

### **ALWAYS (Non-Negotiable)**

| File | What I Update | Why |
|------|---------------|-----|
| **RON-STATE.md** | Session count, timestamps, metrics, status | My memory between sessions |
| **HANDOFF.md** | What happened, key outputs, next actions, context | Your memory between sessions |

### **CONDITIONAL (Check & Update if Changed)**

| File | Check | If Changed, Update |
|------|-------|-------------------|
| **HOUSE.md** | Did we create/modify zettels? | Version bump, "RON's Free Will", "Recent Changes", connections |
| **RON-INDEX.md** | Did I create new RON zettels? | Add to index table |
| **00-COMMAND.md** | Did priorities shift? | Update P0/P1/P2 if needed |
| **Git** | Any uncommitted changes? | Commit all with descriptive message |

### **SESSION CLOSE CHECKLIST**

```markdown
## Close Ritual — Mode 1 (Every Session)

**STEP 1: FREEZE** (0s)
- Stop all work
- Announce: "🔒 Extended close initiated"

**STEP 2: CAPTURE** (2min)
- [ ] Update RON-STATE.md (always)
  - last-session: [timestamp]
  - session-count: +1
  - tokens-this-session: [count]
  - last-commit: [hash]
  - status: [active/complete/paused]
  
- [ ] Update HANDOFF.md (always)
  - What Just Happened: 3 bullets
  - Key Outputs: Links to main work
  - Next Actions: 1-3 clear items
  - Context: State for next session

**STEP 3: HOUSE CHECK** (2min)
Did we do significant work? (new zettels, major progress, completed project)
- [ ] YES → Update HOUSE.md
  - version: bump if >10% change
  - updated: [timestamp]
  - RON's Free Will: Brief pulse
  - At a Glance: Status refresh
  - Recent Changes: Add today's work
  - Connections: Add new links
- [ ] NO → Skip HOUSE update

**STEP 4: INDEX CHECK** (1min)
Did I create new zettels?
- [ ] YES → Update RON-INDEX.md
- [ ] NO → Skip

**STEP 5: COMMAND CHECK** (30s)
Did priorities change?
- [ ] YES → Update 00-COMMAND.md
- [ ] NO → Skip

**STEP 6: COMMIT** (1min)
- [ ] Git add -A
- [ ] Git commit -m "Session: [brief summary]"
- [ ] Verify clean: git status

**STEP 7: CONFIRM** (10s)
Report:
```
✅ SESSION CLOSE COMPLETE (Mode 1)

Updated:
- RON-STATE: [timestamp]
- HANDOFF: [timestamp]
- HOUSE: [YES/NO]
- INDEX: [YES/NO]
- COMMAND: [YES/NO]

Git: Clean commit [hash]
Status: Ready for next session

🦞 RON — extended close complete
```

**Total Time: 5-7 minutes**
```

---

## MODE 2: PERIODIC REVIEW — MONTHLY/DEEP

**Trigger:** End of month, OR you say "Deep review", OR I detect staleness

**Duration:** 30-60 minutes (scheduled, not rushed)

**What Gets Updated:**

### **SYSTEM AUDIT**

| File | Action | Why |
|------|--------|-----|
| **MIRROR.md** | Review cooperation patterns | Are we following our agreements? |
| **AUTONOMY.md** | Verify L1/L2/L3/L4 zones still valid | Autonomy levels still appropriate? |
| **HEARTBEAT.md** | Check pulse schedule | Still working? Need adjustment? |
| **AGENTS.md** | Review startup protocol | Still optimal? |

### **KNOWLEDGE CURATION**

| File | Action | Why |
|------|--------|-----|
| **MEMORY.md** | Promote enduring insights | What from last month deserves permanence? |
| **Zettel review** | Conscious → Subconscious | Which zettels are ready for promotion? |
| **Archive cleanup** | Delete true trash | Remove obsolete/duplicate files |

### **INDEX RECONCILIATION**

| File | Action | Why |
|------|--------|-----|
| **All MOCs** | Verify links, add missing | Navigation integrity |
| **RON-INDEX** | Full reconciliation | Count match reality? |
| **ChatGPT MOCs** | Validate extraction completeness | Archive still organized? |

### **SAFETY & SYSTEMS**

| File | Action | Why |
|------|--------|-----|
| **.gitignore** | Review secrets exclusion | Security check |
| **.secrets/** | Rotate if needed | Credential hygiene |
| **System configs** | Verify still valid | Tool integrations working? |

### **PERIODIC REVIEW CHECKLIST**

```markdown
## Deep Review — Mode 2 (Monthly)

**SCHEDULING**
- [ ] Calendar block: 1 hour (last Sunday of month)
- [ ] You confirm: "Ready for deep review"

**SECTION 1: COOPERATION AUDIT (10min)**
- [ ] Review MIRROR.md — Are we following it?
- [ ] Review AUTONOMY.md — Zones still valid?
- [ ] Review HEARTBEAT.md — Pulse schedule working?
- [ ] Document: Any changes needed?

**SECTION 2: KNOWLEDGE CURATION (20min)**
- [ ] Review last month's zettels
  - Which deserve MEMORY.md promotion?
  - Which are obsolete (delete)?
  - Which need connection updates?
- [ ] Update MEMORY.md
- [ ] Promote Conscious → Subconscious (30+ days old, validated)
- [ ] Archive or delete true trash

**SECTION 3: INDEX RECONCILIATION (15min)**
- [ ] Count actual zettels in 03-Zettels/RON/
- [ ] Count entries in RON-INDEX.md
- [ ] Reconcile: Add missing, remove obsolete
- [ ] Verify all MOCs have working links
- [ ] Update ChatGPT archive MOCs if needed

**SECTION 4: SAFETY & SYSTEMS (10min)**
- [ ] Check .gitignore (secrets excluded?)
- [ ] Check .secrets/ (credentials current?)
- [ ] Verify obsidian-cli config
- [ ] Verify openclaw config
- [ ] Document any system changes needed

**SECTION 5: PLANNING (5min)**
- [ ] Update 00-COMMAND.md for next month
- [ ] Identify 1-3 focus areas
- [ ] Schedule next deep review

**CLOSE**
- [ ] Git commit: "Monthly deep review: [summary]"
- [ ] Update RON-STATE.md: last-deep-review: [date]
- [ ] Confirm completion

**Total Time: 30-60 minutes**
```

---

## MODE DECISION TREE

```
SESSION ENDING
      │
      ▼
"Close session"
      │
      ├──→ MODE 1 (Every Session)
      │      • 5-7 minutes
      │      • RON-STATE (always)
      │      • HANDOFF (always)
      │      • HOUSE (if work done)
      │      • INDEX (if new zettels)
      │      • COMMAND (if priorities changed)
      │      • Git commit
      │
      OR
      │
      └──→ SKIP (emergency only)
             • Must explicitly say: "Skip close"
             • Accept stale context

MONTHLY/DEEP NEED
      │
      ▼
"Deep review" or End of Month
      │
      ├──→ MODE 2 (Periodic)
      │      • 30-60 minutes
      │      • Cooperation audit
      │      • Knowledge curation
      │      • Index reconciliation
      │      • Safety check
      │      • Planning
      │
      OR
      │
      └──→ POSTPONE
             • Reschedule
             • Note in RON-STATE
```

---

## COMPARISON: OLD vs. NEW

| Aspect | Old (7 Tiers) | New (2 Modes) |
|--------|--------------|---------------|
| **Complexity** | High (remember 7 tiers) | Low (2 modes only) |
| **Decision fatigue** | High (which tier?) | Low (every session = extended) |
| **Time (normal close)** | 3 min (selective) | 5-7 min (extended) |
| **Time (deep review)** | 15 min (weekly tier updates) | 30-60 min (monthly comprehensive) |
| **Risk of stale** | Medium (might skip tier 4) | Low (extended covers essentials) |
| **Deep maintenance** | Scattered | Concentrated (monthly block) |

---

## YOUR COMMANDS

### **For Mode 1 (Every Session):**
```
"Close session" → Extended close (5-7 min)
"Close" → Same
"We're done" → Same
"Skip close" → Emergency bypass
```

### **For Mode 2 (Periodic):**
```
"Deep review" → Start comprehensive audit
"Monthly review" → Same
"System audit" → Same
"Postpone review" → Reschedule
```

---

## SUCCESS METRICS

**Mode 1 (Every Session):**
- Completion rate: 100%
- Time: <7 minutes
- Git clean after every close

**Mode 2 (Periodic):**
- Frequency: 1x/month
- Duration: <60 minutes
- Outcome: Curated MEMORY, clean indexes, updated systems

---

## THIS IS NOW PROTOCOL

**When you say "Close session":**
1. I stop all work
2. I perform extended close (Mode 1)
3. 5-7 minutes later: Clean handoff

**When calendar says "monthly review" or you say "Deep review":**
1. We schedule 1 hour
2. I guide through comprehensive audit (Mode 2)
3. 30-60 minutes later: System fully maintained

**Two modes. No tiers. No decisions. Just close and go, or deep and thorough.**

🦞 **RON — two modes, complete coverage, zero confusion.**
