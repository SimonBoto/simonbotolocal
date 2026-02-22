---
uid: S-SYS-0001
type: system-plan
status: planned
project: memory-architecture
---

# Weekly Auto-Curation Plan

_Prepared: 2026-02-22_  
_Status: OPEN — Awaiting implementation decision_

---

## Overview

Automated detection of patterns in daily logs with proposed curation to MEMORY.md.  
**Principle:** Detection is automated; edits require approval.

---

## Pipeline Design

```
Daily logs (raw)
    ↓
Weekly heartbeat (Sun 23:00)
    ↓
Pattern Detection:
├── Recurring preferences → Flag for MEMORY.md
├── Workflow improvements → Flag for TOOLS.md
├── Project completions → Flag for Milestones
├── Mistakes/lessons → Flag for Lessons Learned
└── New connections → Flag for Knowledge Graph
    ↓
Generate Report:
├── Proposed MEMORY.md edits (diff format)
├── Proposed TOOLS.md updates (if any)
└── Questions needing clarification
    ↓
User Review → Approve/Reject/Modify
    ↓
Apply approved changes
```

---

## Detection Rules

### 1. Recurring Preferences
**Trigger:** Same preference stated 3+ times in 7 days  
**Example:** "Always use bullet lists in Discord" → Add to MEMORY.md Communication Preferences

### 2. Workflow Improvements
**Trigger:** New pattern established, used 2+ times successfully  
**Example:** "Git checkpoint before batches" → Add to TOOLS.md Workflows

### 3. Project Milestones
**Trigger:** Task marked complete with significant impact  
**Example:** "Vault v4.1 migration complete" → Add to Recent Milestones

### 4. Lessons Learned
**Trigger:** Mistake documented with correction  
**Example:** "Created research doc in workspace instead of vault" → Add to Lessons Learned

### 5. Knowledge Graph Connections
**Trigger:** Two concepts linked 2+ times in different contexts  
**Example:** "Vitamin D ↔ Adipic acid in IR context" → Add to Key Connections

---

## Report Format

```markdown
🦞 Weekly Curation Report — 2026-02-22

## Proposed MEMORY.md Updates

### 1. Add to Communication Preferences
+ "Always use bullet lists in Discord (detected 3× this week)"
[Approve] [Reject] [Modify]

### 2. Add to Recent Milestones
+ "2026-02-22: Vault v4.1 migration complete"
[Approve] [Reject] [Modify]

## Proposed TOOLS.md Updates

### 1. Add to Workflow Patterns
+ "Git checkpoint before batches >25 items"
[Approve] [Reject] [Modify]

## Questions

1. You mentioned "prioritize PhD over App" 3× — should this be formalized in Priorities?
   [Yes] [No] [Clarify]

Reply with: APPROVE ALL, REJECT ALL, or item numbers to modify.
```

---

## Implementation Options

### Option A: Heartbeat-Based (Recommended)
- Add curation check to `HEARTBEAT.md` Sunday 23:00 pulse
- Generate report, await user response
- No automated edits

### Option B: Cron-Based
- `openclaw cron add --name memory:curation --schedule "0 23 * * 0"`
- Isolated session, generates report
- Delivers to Telegram for review

### Option C: Manual Trigger
- User says "run curation"
- Generates report on demand
- Full control, no automation

---

## Open Questions

1. **Approval mechanism:** Inline buttons in Telegram? Reply with text?
2. **Diff format:** Full file view or condensed changes only?
3. **Rollback:** Keep previous MEMORY.md versions in git?
4. **Scope:** Workspace only, or include vault daily logs?
5. **Model:** Use fast model ( Muscle) for detection, Brain for report generation?

---

## Next Steps

1. **Decide:** Which implementation option?
2. **Design:** Finalize approval UX
3. **Prototype:** Single-week test run
4. **Evaluate:** Accuracy of detections
5. **Deploy:** Full automation with safeguards

---

## Related Files

- `~/.openclaw/workspace/HEARTBEAT.md` — Weekly pulse location
- `~/.openclaw/workspace/MEMORY.md` — Target for curation
- `~/.openclaw/workspace/TOOLS.md` — Secondary target
- `~/.openclaw/workspace/09-System/Logs/` — Curation history (create)

---

*This is an open plan awaiting your decision to implement.*
