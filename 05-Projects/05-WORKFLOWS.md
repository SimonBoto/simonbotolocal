# 05-WORKFLOWS — How We Operate

> **The Triangle Company operating system.**
> 
> *Clear handoffs. Clear approvals. Clear autonomy.*

---

## 🔄 The Work Loop

### Visual Flow

```
┌─────────────────────────────────────────────────────────────────┐
│  1. CEO → 00-COMMAND.md                                         │
│     Write P0/P1/P2 objectives + standing orders                 │
├─────────────────────────────────────────────────────────────────┤
│  2. AI Boss → Planning                                          │
│     Read COMMAND → Plan execution → Delegate to agents          │
├─────────────────────────────────────────────────────────────────┤
│  3. Agents → Execution                                          │
│     GROQ (30 RPM) | FREE ($0) | PAID ($2/day)                   │
│     Parallel processing based on task type                      │
├─────────────────────────────────────────────────────────────────┤
│  4. AI Boss → Synthesis                                         │
│     Collect results → Write to 02-HANDOFF.md                    │
│     Log actions in 03-LOG.md                                    │
├─────────────────────────────────────────────────────────────────┤
│  5. CEO → Review                                                │
│     Check HANDOFF → Approve / Request changes / Reject          │
└─────────────────────────────────────────────────────────────────┘
```

**Dashboard:** http://localhost:4444/forge.html

---

## 📋 File Responsibilities

### 00-COMMAND.md (You Write)
**Purpose:** Your objectives for Triangle Company

**Sections:**
- **P0 — Must Do:** Critical path items
- **P1 — Should Do:** Progress items
- **P2 — Backlog:** When time allows
- **Standing Orders:** Always-true rules

**Update frequency:** When priorities change

**Example:**
```markdown
## P0
- [ ] Extract 10 GOLD references (RON→GROQ)
- [ ] Draft IRB Section 1 (RON)

## Standing Orders
- All extractions → Staging first
- Git commit after batches
- Max 25 files per operation
```

---

### 01-QUEUE.md (I Write)
**Purpose:** Current status board

**Sections:**
- **Currently Processing:** What I'm doing now
- **Next Up:** Auto-pulled from COMMAND P0
- **Blocked:** Items awaiting your input
- **Completed Today:** Finished work

**Update frequency:** Every task change, minimum every 4 hours

---

### 02-HANDOFF.md (I Write, You Review)
**Purpose:** Pending your approval

**Sections:**
- **Drafts Ready:** Outputs for your review
- **Questions:** Decisions I need from you
- **Pending Promotion:** Staging → Production

**Your action:** Edit directly or Telegram feedback

---

### 03-LOG.md (I Write)
**Purpose:** Session record, decisions, lessons

**Sections:**
- **Session Timeline:** What happened when
- **Decisions Made:** Authority calls
- **Lessons Learned:** For future reference

**Update frequency:** Continuous

---

### 04-SYSTEM.md (Shared)
**Purpose:** Integration status

**Sections:**
- **Communication Channels:** Telegram, Web UI status
- **Tools:** MCP servers, health checks
- **Agent Health:** Rate limits, availability
- **Costs:** Daily spend tracking

**Update frequency:** When system state changes

---

## 🎛️ Authority Matrix

### 🟢 GREEN — Execute Without Asking

| Category | Examples | Notes |
|----------|----------|-------|
| File Operations | Read, write, edit vault files | Includes atomic notes |
| Research | Web search, extraction, synthesis | All sources |
| Vault Maintenance | Templates, MOCs, organization | Architecture decisions |
| Git Operations | Commit, status, logs | After significant work |
| Staging Work | Drafts, extracts, temp files | Reversible |
| Dashboard Updates | HTML, CSS changes | This site |
| Agent Spawning | Parallel work, batches | Cost-optimized |

**Decision rule:** If reversible and within vault → Do it

---

### 🟡 YELLOW — Execute, Report After

| Category | Examples | Reporting |
|----------|----------|-----------|
| Direct Vault Writes | Promote staging → production | Immediate summary |
| Batch Operations | >25 files, structural moves | Count + scope |
| Template Changes | Modify v2.0 templates | Diff + rationale |
| MOC Restructuring | New MOCs, major link changes | Before/after map |
| Cost Routing | Switch FREE → PAID | Why + savings |

**Decision rule:** If affects structure → Do it, tell you immediately

---

### 🔴 RED — Ask First

| Category | Examples | Approval Required |
|----------|----------|-------------------|
| External Actions | Emails, tweets, public posts | Case-by-case |
| Financial | Paid APIs, subscriptions | Pre-approval |
| Destructive | Mass deletion (>25 files) | ARM_RED phrase |
| PHI Handling | Patient data, case details | Never without ask |
| Protocol Changes | Clinical trial modifications | Discuss first |

**Decision rule:** If external, expensive, or destructive → Stop, ask

---

## 🚀 Delegation Rules

### When to Spawn Which Agent

```
Task arrives
    ↓
Complex / Strategic / PhD?
    ├─ YES → RON (Brain, kimi-k2.5)
    └─ NO → Delegate
              ↓
        Speed / Parallel needed?
            ├─ YES → GROQ (30 RPM, free)
            └─ NO → Routine / Test?
                        ├─ YES → FREE ($0)
                        └─ NO → Quality critical?
                                    ├─ YES → PAID ($0.075/M)
                                    └─ NO → FREE
```

### Spawn Command Examples

**GROQ for batch extraction:**
```bash
openclaw agent --agent groq --message "Extract 10 references from PMIDs"
```

**FREE for routine task:**
```bash
openclaw agent --agent free --message "Check web for latest adipic acid research"
```

**PAID for quality:**
```bash
openclaw agent --agent paid --message "Critical: Review IRB protocol section"
```

---

## ⏱️ Response Times

| Priority | Source | My Response | Your Response |
|----------|--------|-------------|---------------|
| **P0** | COMMAND.md / Telegram | Immediate (if awake) | Same session |
| **P1** | QUEUE.md / Obsidian | Within 4 hours | Within 24 hours |
| **P2** | LOG.md / Backlog | When capacity | When convenient |
| **Question** | HANDOFF.md | — | When you can |

---

## 📝 Communication Patterns

### You → Me
- **Write COMMAND.md:** Strategic direction
- **Edit HANDOFF.md:** Feedback on outputs
- **Telegram:** Quick checks, urgent, mobile
- **Obsidian comments:** Detailed review

### Me → You
- **Update QUEUE.md:** Status changes
- **Write HANDOFF.md:** Results for review
- **Log decisions:** In 03-LOG.md
- **Telegram:** Urgent blockers only

---

## 🎯 Approval Patterns

| Your Message | My Interpretation |
|--------------|-------------------|
| "Approve all" | Promote everything in HANDOFF |
| "Review X" | Highlight X for attention |
| "Redo Y with [changes]" | Iterate on Y |
| [Edit directly in HANDOFF] | I see changes next session |
| "Go" / "Do it" | Pre-authorization for next step |
| "Stop" | Halt all work, await direction |

---

## 🆘 Emergency Procedures

### Gateway Down
```bash
rm -rf ~/.openclaw/devices/* && openclaw gateway restart && sleep 3
```

### Lost Contact
1. Check http://localhost:4444
2. Review 01-QUEUE.md for last status
3. Check 03-LOG.md for what was happening
4. Message Telegram if urgent

### File Recovery
Everything in Git. Check:
```bash
cd ~/Workspaces/TheOptimizedBrain
git log --oneline -10
git show [commit]:file.md
```

---

## 📊 Success Metrics

**Weekly Review:**
- [ ] P0 completion rate >80%
- [ ] Cost under budget ($2/day for PAID)
- [ ] GROQ rate limit violations: 0
- [ ] Git commits: Daily
- [ ] QUEUE updates: Every 4 hours

**Monthly Review:**
- [ ] Vault growth: +40 refs, +20 atomics
- [ ] Authority escalation: GREEN items increased
- [ ] CEO interruption rate: <3/day
- [ ] System uptime: >95%

---

*Last Updated: 2026-02-22*  
*Dashboard: http://localhost:4444/forge.html*
