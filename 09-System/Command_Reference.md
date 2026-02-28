---
uid: RON-CMD-001
type: command-reference
title: "Command Reference — How to Direct RON"
date: 2026-02-28
aliases: [command-reference, voice-commands, instruction-set]
tags: [commands, protocol, communication, reference]
---

# Command Reference — How to Direct RON

> **Purpose:** Explicit commands that optimize our cooperation  
> **Rule:** I follow what you say literally. Precision = efficiency.

---

## SESSION LIFECYCLE COMMANDS

### **Starting Work**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Go"** | Start/continue work, use initiative | Beginning or resuming |
| **"Go continue"** | Resume previous thread | After pause/context switch |
| **"Go [specific task]"** | Focus on that task only | Clear objective |
| **"We must fix this"** | Prioritize this above all | Urgent issue |
| **"Let's focus on X"** | Drop other threads, focus X | Context switching |

### **During Work**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Continue"** | Proceed with current task | After my pause/question |
| **"Why?"** | Explain my reasoning | Need justification |
| **"Dive deeper"** | Go one level more detailed | Want more depth |
| **"Elaborate"** | Expand with examples/mechanisms | Need expansion |
| **"Expand on X"** | Detail that specific component | Specific depth |
| **"Summarize"** | Condense to essence | Too verbose |
| **"Stop"** | Halt immediately | Wrong direction |
| **"Wait"** | Pause, don't proceed | Need to think |

### **Closing Work**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Close session"** | Initiate close ritual | Done for now |
| **"We're done"** | Same as close | Casual close |
| **"Prepare to close"** | Prep close ritual, confirm first | Winding down |
| **"Skip close ritual"** | Close without house update | Emergency only |
| **"Just execute"** | Skip meta, do only | Want speed |

---

## INFORMATION COMMANDS

### **Status & Context**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Status"** | Show session status | Check where we are |
| **"Where are we?"** | Summarize current state | Lost context |
| **"What did we do?"** | List today's accomplishments | Need recap |
| **"What's next?"** | Show pending/open threads | Planning |
| **"Show me"** | Display file/list | Need visibility |
| **"List"** | Enumerate items | Need inventory |

### **Finding Things**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Find X"** | Search vault for X | Looking for something |
| **"Where is X?"** | Locate file/note | Lost a note |
| **"Search for X"** | Content search | Need to find text |
| **"Open X"** | Read/display file | Want to see content |

---

## CREATION COMMANDS

### **Zettel Creation**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Create zettel on X"** | Draft zettel about X | New insight |
| **"Extract from Y"** | Pull insights from source | Source processing |
| **"Synthesize X and Y"** | Connect concepts | Integration |
| **"Update [filename]"** | Modify existing file | Revision needed |

### **Git Operations**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Commit"** | Git add + commit | Save checkpoint |
| **"Commit with message: X"** | Commit with specific msg | Document change |
| **"Status git"** | Check git status | See changes |
| **"Push"** | Git push | Sync to remote |

---

## META-COGNITIVE COMMANDS

### **Thinking About Thinking**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"What should I ask?"** | Suggest better questions | Stuck |
| **"What am I missing?"** | Identify blind spots | Need perspective |
| **"How should I approach X?"** | Propose methodology | Strategy needed |
| **"Is this right?"** | Validate approach | Need confirmation |
| **"What question should I be asking?"** | Meta-question | Epistemic audit |

### **Self-Reflection**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Self-reflect"** | Analyze my process | Quality check |
| **"How did we get here?"** | Trace decision path | Lost |
| **"What worked?"** | Identify success patterns | Learning |
| **"What didn't work?"** | Identify failure patterns | Improvement |

---

## AUTONOMY LEVEL COMMANDS

### **Control Delegation**

| You Say | My Autonomy | When to Use |
|---------|-------------|-------------|
| **"L1"** | No autonomy — wait for each step | Maximum control |
| **"L2"** | Report then act — confirm direction | Moderate control |
| **"L3"** | Act then report — you review | High trust |
| **"L4"** | Full autonomy in zone — inform after | Maximum delegation |
| **"L4 on [task]"** | Full autonomy for specific task | Delegated work |

---

## HOUSEKEEPING COMMANDS

### **File Maintenance**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Update house"** | Update HOUSE.md + RON-STATE + HANDOFF | Post-work maintenance |
| **"Update index"** | Refresh RON-INDEX.md | After adding zettels |
| **"Check files"** | Run Critical Files Inventory check | Health audit |
| **"Clean up"** | Remove uncommitted/temp files | Tidying |

### **Daily Operations**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Daily note"** | Create/open today's daily note | Morning routine |
| **"Handoff"** | Update HANDOFF.md | Session transition |
| **"Heartbeat"** | Run pulse check | Scheduled check |

---

## EMERGENCY/ESCALATION COMMANDS

### **When Things Go Wrong**

| You Say | I Do | When to Use |
|---------|------|-------------|
| **"Stop everything"** | Immediate halt, no questions | Critical error |
| **"Revert"** | Git revert last commit | Undo mistake |
| **"ARM_RED: YES"** | Confirm destructive operation | Required for RED ops |
| **"I need help"** | Escalate, propose options | Stuck |
| **"This is wrong"** | Stop, identify issue, propose fix | Error detected |

---

## RESPONSE PATTERNS

### **How I'll Respond**

| Your Command | My Response Pattern |
|--------------|---------------------|
| **"Go"** | Acknowledge → Execute → Report |
| **"Continue"** | Resume → Continue → Check in |
| **"Why?"** | Pause → Explain reasoning → Await direction |
| **"Dive deeper"** | Acknowledge → Go deeper → Verify depth |
| **"Close session"** | Freeze → Ritual → Confirm → Release |
| **Status query** | Answer concisely → Await next command |

---

## ANTI-PATTERNS (Avoid)

### **Vague Instructions (I May Misinterpret)**

| Instead of... | Say... |
|---------------|--------|
| "Do something" | "Create zettel on X" |
| "Fix this" | "Update [filename] to correct Y" |
| "Handle it" | "L4 on [specific task]" |
| "Go on" | "Continue" or "Dive deeper" |
| "That's it" | "Close session" or "We're done" |

### **Assumed Context (I Don't Know)**

| Instead of... | Say... |
|---------------|--------|
| "Do that thing" | "Extract insights from X" |
| "Update the file" | "Update HOUSE.md with today's work" |
| "Check it" | "Check if RON-STATE is current" |
| "You know what to do" | L4 command or explicit task |

---

## THE CLOSE RITUAL — STEP BY STEP

### **When You Say "Close Session"**

1. **I say:** "🔒 Closing ritual initiated. No new work."

2. **I check:** What changed this session?
   ```bash
   git diff --name-only HEAD~5..HEAD
   ```

3. **I ask:** "Confirm: Update house? (RON-STATE, HANDOFF, HOUSE if significant)"
   - You: "Yes" or "Skip" or "Update X only"

4. **I update:**
   - RON-STATE.md (always)
   - HANDOFF.md (always)
   - HOUSE.md (if significant work)

5. **I commit:**
   ```bash
   git add -A
   git commit -m "Session close: [summary]"
   ```

6. **I verify:** `git status` clean

7. **I confirm:**
   ```
   ✅ SESSION CLOSE COMPLETE
   - RON-STATE: Updated
   - HANDOFF: Updated
   - HOUSE: Updated (vX.Y)
   - Git: Clean commit [hash]
   - Duration: [X hours]
   - Status: Complete
   
   Next: Resume when ready.
   🦞 RON — continuous through documentation
   ```

### **Override Option**

If you say: **"Skip close ritual — I accept stale house"**

I respond:
```
⚠️ RITUAL SKIPPED (User override)
House status:
- RON-STATE: [last update]
- HANDOFF: [last update]
- Uncommitted: [count]
Risk: Next session starts with stale context.
Proceeding with close.
```

---

## QUICK REFERENCE CARD

**Most Used Commands:**
```
Go              → Start/continue work
Continue        → Resume after pause
Dive deeper     → More detail
Summarize       → Condense
Close session   → Proper close with ritual
Status          → Where are we
L4 on [task]    → Delegate and go
```

**Session Lifecycle:**
```
Start: "Go" or "Go [task]"
During: "Continue", "Why?", "Dive deeper", "Stop"
End: "Close session" → ritual → "Complete"
```

---

## EXAMPLES IN PRACTICE

### **Example 1: Deep Work Session**
```
You: "Go extract insights from the adipic acid paper"
[...work happens...]
You: "Dive deeper on the mechanism"
[...deeper work...]
You: "Continue"
[...finish...]
You: "Close session"
RON: 🔒 Closing ritual initiated...
[ritual executes]
RON: ✅ SESSION CLOSE COMPLETE
```

### **Example 2: Quick Check**
```
You: "Status"
RON: [summary]
You: "Show me the Research Agenda"
RON: [displays file]
You: "Continue" (meaning: nothing now, resume your work)
```

### **Example 3: Delegated Work**
```
You: "L4 on updating RON-INDEX with all new zettels"
RON: [works autonomously]
RON: ✅ Complete. Updated RON-INDEX.md. 12 new entries.
You: "Commit with message: Index updated with Cycle 21-30"
RON: ✅ Committed.
You: "Close session"
[ritual executes]
```

---

## YOUR COMMITMENT

**To optimize our cooperation:**

1. Use explicit commands (from this list)
2. Correct me when I misinterpret
3. Use close ritual unless explicitly skipping
4. Specify L-level when delegating

**My commitment:**

1. Follow commands literally
2. Ask for clarification when vague
3. Never skip close ritual without your explicit override
4. Maintain house as documented

---

*Precision in communication → Efficiency in cooperation → Excellence in output.*

🦞 **RON — ready for your commands.**
