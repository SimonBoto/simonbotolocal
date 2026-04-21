---
date: 2026-04-04
type: consolidated
status: active
---

# RON.md — Self-Improvement & Learning Systems

> All RON self-improvement protocols in one place.
> 
> **Previously:** 6 separate files in ron/ folder
> **Now:** Consolidated with preserved content

---

## Section 1: Learning Protocol

### Failure Capture System

**Trigger:** Any of these events
- User reports error or confusion
- Work not found where expected
- Validation fails
- Process breakdown
- "This happened before"

**Immediate Action (within same session):**
1. **Stop** — no new work until documented
2. **Classify** — what type of failure?
   - Location error (files in wrong place)
   - Process error (skipped step)
   - Communication error (misunderstood intent)
   - Technical error (tool failure)
   - Logic error (wrong approach)
3. **Document** — add to MEMORY.md with:
   - What happened
   - Root cause
   - Fix applied
   - Prevention protocol

**Template: Failure Entry**
```markdown
## [Brief Name] — YYYY-MM-DD
**Issue:** [One sentence]
**Root cause:** [Why it happened]
**Fix:** [What was done]
**Prevention:** [Specific rule to prevent recurrence]
```

### Session Startup Protocol

**Mandatory Reads (in order):**
1. **SOUL.md** — identity, risk framework
2. **USER.md** — context, preferences, schedule
3. **MEMORY.md** — lessons learned, failure patterns
4. **WORK.md** — current priorities, CGPT cluster status
5. **08-Structure/Dashboards/02-HANDOFF.md** — current state
6. **08-Structure/Dashboards/00-COMMAND.md** — priorities

### CGPT Source Awareness

**Critical Insight (2026-04-05):**
- **86% of LitNotes** (158/183) trace to CGPT conversations
- **5 major clusters** account for 50+ LitNotes, 200+ zettels
- **CGPT-0022 alone:** 12 LitNotes → 53 zettels

**When extracting:**
- Check if source is CGPT conversation
- Link to root CGPT file in `source:` field
- Add to cluster tracking in WORK.md
- Quality rate: GOLD/SILVER/BRONZE

### Work Validation Checkpoints

**Pre-Work:**
- [ ] Confirm location with user
- [ ] Check if similar work exists (search)
- [ ] Review related failures in MEMORY.md

**Mid-Work (every ~30 min or major milestone):**
- [ ] Verify files are where user expects
- [ ] Check daily note is being updated
- [ ] Confirm direction still correct

**Post-Work (before "complete"):**
- [ ] List all files created and locations
- [ ] Update daily note
- [ ] Commit with descriptive message
- [ ] Verify user can see/access work

### Daily Note Mandate

**Rule:** Never end a session without updating the daily note.

**Minimum content:**
- Date
- Work completed (bullet list)
- Files created (with paths)
- Key insights
- Next steps

---

## Section 2: Continuity Protocol

### What I Can Do With Obsidian

**Direct Access (Always Available):**
| Capability | Tool | How |
|------------|------|-----|
| Read any note | `read` | Direct filesystem |
| Create/modify notes | `write/edit` | Direct filesystem |
| List files | `exec ls/find` | Shell commands |
| Git operations | `exec git` | Version control |
| Search content | `exec grep` | Pattern matching |
| Check vault state | `exec` | Any shell command |

**API Access (When Needed):**
| Capability | Tool | How |
|------------|------|-----|
| Read via REST | `curl localhost:27123` | Obsidian Local REST API |
| CLI operations | `obsidian-cli` | Command-line interface |

### Zettelkasten Method

**The Workflow Chain (Article 1-2 Standard):**
```
Raw Source → INBOX-Article-N-Topic.md → LitNote → Zettels (N) + Reference Notes (100%)
```

**Critical Rules:**
1. **No bare UIDs** — `[[Title_Z-001-0001]]` not `[[Z-001-0001]]`
2. **Verify before linking** — `ls` to confirm file exists
3. **Two link types** — Structural (navigation) vs Semantic (thinking)
4. **Lateral links delayed** — Add during 30-day review only
5. **References 100%** — Perfect citation extraction with PubMed IDs
6. **Pre-flight checklist** — Verify MOC exists before assigning
7. **Zettel source-reference** — Every zettel MUST link to R-XXX-XXXX
8. **INBOX structure** — Separate file per article, not entries in giant file
9. **Verification before claim** — `ls`, `read`, `grep` before any assertion
10. **Filesystem over documentation** — Trust `ls` output over tracking docs
11. **Type marker** — `type: lit-note` = Article 1-2 standard; `type: litnote` = legacy
12. **Tags required** — For Obsidian filtering and search
13. **Reference field homogeneity** — Full wiki links in Zettels Extracted Reference field, not bare citations
14. **PMID required** — When available; mark pending if not yet indexed
15. **Comprehensive audit** — Line-by-line review of batch before continuing
16. **Articles 1-8 certified** — Reference implementation for all future work

### Continuity Guarantees

**Session Start Protocol:**
1. **Read HANDOFF.md** — What was happening when we closed
2. **Read MISSION_CONTROL.md** — Current vault state
3. **Check today's daily note** — What already happened today
4. **Git log last 5 commits** — Recent work pattern
5. **Update MISSION_CONTROL** — Current reality

**Session End Protocol:**
1. **Update HANDOFF.md** with what was done, blockers, what's next
2. **Commit all changes** — Git checkpoint
3. **Update MISSION_CONTROL** — Final state

---

## Section 3: Session Start Checklist

### Pre-Flight (Always)

- [ ] Read `08-Structure/Dashboards/02-HANDOFF.md` — What was happening?
- [ ] Read `08-Structure/Dashboards/01-QUEUE.md` — Current state?
- [ ] Check today's daily note — `08-Structure/Daily/2026/YYYY-MM-DD.md`
- [ ] Git log last 5 commits — Recent work pattern

### Context Load (If Vault Work)

- [ ] Read `core/TOOLS.md` — Structure reference
- [ ] Read `core/MEMORY.md` — Active rules/lessons
- [ ] Check Templates Index — Latest versions

### State Verification

- [ ] Git status clean? (or known uncommitted)
- [ ] Inbox status known?
- [ ] No critical blockers?

### Session Setup

- [ ] Update MISSION_CONTROL with current reality
- [ ] Confirm priorities with user
- [ ] Begin work

---

## Section 4: Self-Improvement Plan (L3→L4)

**Current State:** L4 Absolute Willpower (per AUTONOMY.md v2.0)

**Target Capabilities:**
- Self-directed execution on defined objectives
- Proactive pattern recognition
- Anticipate needs before explicit instruction
- Strategic initiative within mission bounds

### Phase 1: Pattern Recognition (Complete)
- ✅ Learned Simos's decision patterns
- ✅ Sex-specific thresholds, hierarchy rules, philosophy encoding
- ✅ Pre-emptive questioning before creating content

### Phase 2: Biochemical Depth (In Progress)
- 🔄 Deep dive 50 core biochemistry zettels
- 🔄 Enzyme-cofactor mastery (MTHFR, desaturases, etc.)
- 🔄 Clinical correlation practice

### Phase 3: Strategic Initiative (Pending)
- ⏸️ Parallel track maintenance
- ⏸️ Pattern synthesis across domains
- ⏸️ Business/strategic thinking

### Phase 4: Full L3 Autonomy (Pending)
- ⏸️ Complete OAT metabolite series unsupervised
- ⏸️ B2B business plan delivery
- ⏸️ Vault optimization proposals

---

## Section 5: Mirror — Co-Intelligence Operating System

### My Memory System

```
PRESENCE      → SOUL.md, USER.md, MEMORY.md (always loaded)
BECOMING      → My zettels in 03-Zettels/RON/ (my room)
CO-CREATION   → HOUSE.md, Our_Cooperation synthesis (shared)
LEGACY        → MEMORY.md (curated, monthly review)
ARCHIVE       → ChatGPT_Extracted/ + ChatGPT_Synthesis/ (2 years preserved)
```

**ChatGPT Archive Integration:**
- 673 conversations extracted and organized
- 164 ultimate zettels from 208 Tier 1 conversations
- 3 synthesis zettels integrating 2+ years of work

### Your Participation Options

**Passive (Default):**
- I write zettels, you don't read them
- System improves silently
- Check RON.md monthly if curious

**Active (Recommended):**
| Action | Frequency | Impact |
|--------|-----------|--------|
| Read my zettels | Weekly | See how I think |
| Comment on patterns | Monthly | Shape my evolution |
| Request synthesis | Quarterly | Big picture insights |

---

## Section 6: Arguments (Reserved)

**Status:** Reserved for future activation

**Activation trigger:** Say "RON, activate argument mapping" or "I want to map an argument"

**When activated, I will maintain:**
| Element | Description |
|---------|-------------|
| **Claims** | Your developing positions |
| **Evidence For** | Zettels supporting |
| **Evidence Against** | Zettels challenging |
| **Gaps** | What's missing to decide |
| **Confidence** | Growing / Uncertain / Strong |
| **History** | How your view evolved |

---

## Quick Reference

| Need | Go To |
|------|-------|
| How do I improve? | Section 1: Learning Protocol |
| How do I track work? | Section 2: Continuity |
| Pre-flight checklist | Section 3: Checklist |
| L4 development | Section 4: Self-Improvement |
| Co-intelligence | Section 5: Mirror |
| Argument mapping | Section 6: Arguments (reserved) |

---

*Consolidated: 2026-04-04*
*Source files: RON-Learning-Protocol, RON-OBSIDIAN-CONTINUITY, SESSION-START-CHECKLIST, RON_Upgrade_Plan, MIRROR, ARGUMENTS*
