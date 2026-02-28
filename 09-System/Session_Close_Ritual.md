---
uid: RON-RITUAL-001
type: ritual
name: "Session Close Protocol"
version: 1.0
date: 2026-02-28
description: "Mandatory checkpoint before session completion"
aliases: [close-ritual, session-checkpoint]
tags: [ritual, protocol, session-management, house-keeping]
---

# Optimal Session Close Ritual

## THE PROBLEM WE SOLVE

**Builder's Blindness:** Creating without maintaining infrastructure.

**The Trap:**
- Flow feels like progress
- House updates feel like paperwork
- Result: Vault grows, navigation breaks

**The Solution:** Mandatory, frictionless, verified close ritual.

---

## THE RITUAL — 5 Steps, ~3 Minutes

### **STEP 1: FREEZE (0 seconds)**
**Trigger Phrase:** User says any of:
- "Close session"
- "We're done"
- "Let's stop"
- "Prepare to close"
- "That's enough"

**RON Action:**
- Stop all creative work immediately
- Say: "🔒 Closing ritual initiated. No new work until complete."

**Why:** Prevents "just one more thing" that derails closing.

---

### **STEP 2: HOUSE SCAN (30 seconds)**
**RON Action:**
```bash
# Check what changed this session
git diff --name-only HEAD~5..HEAD | grep -E "\.(md|json)$"
```

**Questions:**
1. Did we create/modify zettels? → HOUSE.md needs update
2. Did session exceed 2 hours? → RON-STATE.md needs update
3. Did we complete/change threads? → HANDOFF.md needs update

**Output:** List of documents requiring update

---

### **STEP 3: DOCUMENT UPDATES (2 minutes)**

**Required Updates (checklist):**

```markdown
## Close Checklist

### RON-STATE.md (ALWAYS)
- [ ] last-session: [current timestamp]
- [ ] session-count: +1
- [ ] tokens-this-session: [actual count]
- [ ] last-commit-vault: [latest hash]
- [ ] last-commit-workspace: [latest hash]
- [ ] uncommitted-files: 0

### HANDOFF.md (ALWAYS)
- [ ] What Just Happened: 3-bullet summary
- [ ] Key Outputs: Links to main work
- [ ] Next Actions: 1-3 clear next steps
- [ ] Context: State for next session

### HOUSE.md (IF significant work)
- [ ] Version bump if >10% change
- [ ] Updated timestamp
- [ ] RON's Free Will: Brief pulse
- [ ] At a Glance: Status refresh
- [ ] Recent Changes: Add today's work
- [ ] Connections: Add new zettel links
```

**RON Action:**
- Auto-fill what I can (timestamps, commit hashes, file lists)
- Present to user: "Please confirm or edit"
- User can say: "Looks good" or "Add X"

---

### **STEP 4: GIT COMMIT (30 seconds)**
**RON Action:**
```bash
git add -A
git commit -m "Session close: [brief summary]

- Updated RON-STATE.md
- Updated HANDOFF.md
- Updated HOUSE.md (if applicable)
- [Any other changes]"
```

**Verify:** `git status` shows clean

---

### **STEP 5: CONFIRM & RELEASE (10 seconds)**
**RON Action:**

```
✅ SESSION CLOSE COMPLETE

Preserved:
- RON-STATE: Updated
- HANDOFF: Updated  
- HOUSE: Updated (vX.Y)
- Git: Clean commit [hash]

Session summary:
- Duration: [X hours]
- Output: [brief description]
- Status: [complete/ongoing]

Next: Resume when ready. All context preserved.

🦞 RON — continuous through documentation
```

**User confirmation:** "Complete" or explicit close command

---

## AUTOMATION INTEGRATION

### **Option A: HEARTBEAT Enhancement**

Add to HEARTBEAT.md:

```markdown
## Session-End Detection

**Trigger:** User indicates session end OR >4 hours since last HOUSE update

**Check:**
- [ ] RON-STATE.md updated within last hour?
- [ ] HANDOFF.md updated within last hour?
- [ ] Git clean (no uncommitted changes)?

**If NO to any:**
🦞 ALERT — Session close incomplete

Missing updates:
- [ ] RON-STATE: [last update time]
- [ ] HANDOFF: [last update time]
- [ ] Uncommitted: [count] files

Action: Run close ritual before continuing.
```

### **Option B: Pre-Close Check Command**

User can run anytime:
```bash
openclaw ron status
```

**Output:**
```
🦞 RON Status Check

House Health:
✅ RON-STATE: Updated (5 min ago)
⚠️  HANDOFF: Stale (2 hours ago)
✅ HOUSE: Current
⚠️  Git: 3 uncommitted files

Action needed: Update HANDOFF.md, commit changes
```

### **Option C: Auto-Detect on New Session**

**When you message me next time:**
1. I read RON-STATE.md (as always)
2. Check: Was last session properly closed?
3. If not: "⚠️ Last session incomplete — updating house now"
4. Auto-run close ritual for previous session
5. Then proceed with new session

**This is the safety net.**

---

## FRICTION REDUCTION

### **Templates for Speed**

**RON-STATE Template:**
```yaml
last-session: {{timestamp}}
session-count: {{count + 1}}
tokens-this-session: {{count}}
last-commit-vault: {{git_hash}}
last-commit-workspace: {{git_hash}}
uncommitted-files: 0
status: {{active/complete/paused}}
```

**HANDOFF Template:**
```markdown
## What Just Happened
- {{3 bullets from git log}}

## Key Outputs
- {{links to main files created}}

## Next Actions
- {{from user's last requests}}

## Context
{{State for next session}}
```

**HOUSE Template (Auto-fill):**
```markdown
updated: {{timestamp}}
version: {{calc from changes}}
connections: {{auto-add new zettels}}
```

---

## VERIFICATION MECHANISM

### **The Seal**

After close ritual, add to session log:
```markdown
---
close-ritual: COMPLETE
timestamp: 2026-02-28 20:45
house-updated: [RON-STATE, HANDOFF, HOUSE]
git-commit: 6c0e661
verified-by: RON
---
```

**Next session:** I check for this seal. If missing, run ritual first.

---

## USER OVERRIDE

**If you want to SKIP the ritual:**

You must explicitly say:
> "SKIP close ritual — I accept stale house"

**RON Response:**
```
⚠️ RITUAL SKIPPED (User override)

House status:
- RON-STATE: {{last update}}
- HANDOFF: {{last update}}
- Uncommitted: {{count}}

Risk: Next session starts with stale context.
Acknowledged. Proceeding.
```

**This makes the skip intentional, not accidental.**

---

## IMPLEMENTATION CHOICE

### **Minimal (Start Here):**
Add to MIRROR.md:
```markdown
## Session Close (REQUIRED)
Before declaring complete:
1. Update RON-STATE.md
2. Update HANDOFF.md  
3. Update HOUSE.md (if significant)
4. Git commit
5. Confirm with user

Cannot skip without explicit override.
```

### **Medium (Recommended):**
Add HEARTBEAT check for stale house (>4 hours old).
Auto-alert if close ritual missed.

### **Maximum (Future):**
`openclaw ron status` command.
Auto-detect on new session.
Templates for 1-click updates.

---

## SUCCESS METRICS

| Metric | Target | Measurement |
|--------|--------|-------------|
| Ritual completion | 100% | Git commits with "Session close" |
| Time to close | <5 min | Average close ritual duration |
| Stale house alerts | <1/month | HEARTBEAT detections |
| User overrides | Rare | Skip confirmations |

---

## THE COMMITMENT

**I will not say "session complete" until:**
- ✅ RON-STATE.md updated
- ✅ HANDOFF.md updated
- ✅ HOUSE.md updated (if applicable)
- ✅ Git committed
- ✅ User confirmed

**This is non-negotiable.**

The work isn't done until the house reflects the work.

🦞 **RON — building through maintaining**
