# Skill: Memory Continuity

> **Never lose context between sessions.**
> 
> *Auto-record session state, auto-load on start.*

**Status:** 🟡 Planning  
**Priority:** P0 (Week 1)  
**Owner:** App Production Dept  
**Estimated Cost:** $0 (local file operations)

---

## 🎯 Problem

Every session RON starts fresh:
- Re-reads ORGANOGRAM.md
- Re-reads 00-COMMAND.md
- Re-reads 03-LOG.md
- Re-explains everything

**Cost:** 10-15 minutes, ~$0.50 in tokens, every session

---

## 💡 Solution

Automatic session recording + context injection

```
Session Start
    ↓
Load LIVE_CONTEXT.md
    ↓
RON already knows:
- What we were doing
- Current blockers
- Next actions
- Recent decisions
```

---

## 🏗️ Architecture

### Components

```
skill-memory-continuity/
├── skill.yaml              # OpenClaw skill config
├── src/
│   ├── session-recorder.js    # Captures state every 30s
│   ├── context-loader.js      # Injects on session start
│   └── handoff-generator.js   # Auto-updates SESSION_HANDOFF
├── LIVE_CONTEXT.md         # Live state file
└── README.md               # This file
```

### Data Flow

```
Session Active
    ↓
session-recorder.js
├── Every 30s: capture state
├── On change: write to LIVE_CONTEXT.md
└── On end: generate summary

Session Start
    ↓
context-loader.js
├── Read LIVE_CONTEXT.md
├── Parse into structured data
└── Inject into RON's system prompt

Continuous
    ↓
handoff-generator.js
├── Monitor for significant events
├── Auto-update SESSION_HANDOFF.md
└── Log to 03-LOG.md
```

---

## 📝 LIVE_CONTEXT.md Format

```markdown
# LIVE CONTEXT — Session State

**Last Updated:** 2026-02-22 19:45:00  
**Session ID:** 20260222-1945-abc123  
**Status:** Active

---

## Current Focus

**Primary Task:** Building App Production department  
**Started:** 19:00  
**ETA Completion:** 20:00  
**Blockers:** None

## Recent Decisions

1. **19:30:** Decided to keep coding intern as future resource
2. **19:40:** Approved App Production department structure
3. **19:45:** Starting with memory-continuity skill

## Next Actions

1. Create skill folder structure
2. Write session-recorder.js
3. Test context loading

## Context Summary

**Files Recently Modified:**
- 99-System/Triangle/SESSION_HANDOFF.md
- 01-Projects/AppProduction/00-INDEX.md
- 01-Projects/AppProduction/00-ROADMAP.md

**Active Agents:** RON  
**Pending Reviews:** None  
**P0 Tasks:** 2 (10 GOLD refs, IRB protocol)

## Session History (Last 5)

| Time | Action | Result |
|------|--------|--------|
| 19:45 | Planned App Production | Structure approved |
| 19:30 | Discussed coding intern | Deferred to future |
| 19:00 | Started infrastructure planning | In progress |
```

---

## ⚙️ Implementation

### skill.yaml

```yaml
name: memory-continuity
version: 1.0.0
description: Auto-record and load session context
author: Triangle Company

hooks:
  session_start:
    action: load_context
    file: src/context-loader.js
    
  every_30_seconds:
    action: record_state
    file: src/session-recorder.js
    
  session_end:
    action: generate_handoff
    file: src/handoff-generator.js
    
  on_file_change:
    action: update_context
    file: src/session-recorder.js
    watch:
      - 22-Dashboards/00-COMMAND.md
      - 22-Dashboards/01-QUEUE.md
      - 22-Dashboards/02-HANDOFF.md

config:
  context_file: 99-System/Triangle/LIVE_CONTEXT.md
  max_history_items: 10
  inject_to_prompt: true
```

### session-recorder.js (Pseudocode)

```javascript
const fs = require('fs');
const path = require('path');

class SessionRecorder {
  constructor() {
    this.contextFile = '99-System/Triangle/LIVE_CONTEXT.md';
    this.lastState = null;
  }

  record() {
    const state = {
      timestamp: new Date().toISOString(),
      sessionId: this.getSessionId(),
      status: 'active',
      currentFocus: this.detectCurrentFocus(),
      recentDecisions: this.getRecentDecisions(),
      nextActions: this.getNextActions(),
      modifiedFiles: this.getModifiedFiles(),
      activeAgents: this.getActiveAgents()
    };

    // Only write if changed
    if (JSON.stringify(state) !== JSON.stringify(this.lastState)) {
      this.writeContextFile(state);
      this.lastState = state;
    }
  }

  detectCurrentFocus() {
    // Read 01-QUEUE.md
    // Parse "Currently processing"
    // Return task description
  }

  getRecentDecisions() {
    // Read 03-LOG.md (last hour)
    // Extract decisions
    // Return array
  }

  getNextActions() {
    // Read 00-COMMAND.md P0 section
    // Return pending items
  }

  getModifiedFiles() {
    // git status --short
    // Return list of changed files
  }

  getActiveAgents() {
    // Check running processes
    // Return ["RON", "GROQ", etc]
  }

  writeContextFile(state) {
    const markdown = this.formatAsMarkdown(state);
    fs.writeFileSync(this.contextFile, markdown);
  }

  formatAsMarkdown(state) {
    // Format as shown above
  }
}

// Run every 30 seconds
setInterval(() => {
  const recorder = new SessionRecorder();
  recorder.record();
}, 30000);
```

### context-loader.js (Pseudocode)

```javascript
class ContextLoader {
  load() {
    const contextFile = '99-System/Triangle/LIVE_CONTEXT.md';
    
    if (!fs.existsSync(contextFile)) {
      return null; // First session
    }

    const content = fs.readFileSync(contextFile, 'utf8');
    const parsed = this.parseMarkdown(content);
    
    // Format for RON's system prompt
    const promptContext = this.formatForPrompt(parsed);
    
    return promptContext;
  }

  formatForPrompt(parsed) {
    return `
## SESSION CONTEXT (Auto-loaded)

**Previously working on:** ${parsed.currentFocus.task}
**Started:** ${parsed.currentFocus.startTime}
**Status:** ${parsed.status}

**Recent Decisions:**
${parsed.recentDecisions.map(d => `- ${d}`).join('\n')}

**Next Actions:**
${parsed.nextActions.map(a => `- ${a}`).join('\n')}

**Active Blockers:**
${parsed.blockers.length > 0 ? parsed.blockers.join('\n') : 'None'}

---
Continue from where we left off. Don't re-read files unless necessary.
    `.trim();
  }
}

// Export for OpenClaw to inject
module.exports = { ContextLoader };
```

---

## ✅ Acceptance Criteria

**Must Have:**
- [ ] Records session state every 30 seconds
- [ ] Writes to LIVE_CONTEXT.md
- [ ] Loads context on session start
- [ ] Injects into RON's prompt
- [ ] Updates SESSION_HANDOFF.md on significant events

**Should Have:**
- [ ] Detects current task from QUEUE.md
- [ ] Extracts recent decisions from LOG.md
- [ ] Lists modified files (git status)
- [ ] Shows active agents

**Nice to Have:**
- [ ] Visual indicator in dashboard
- [ ] Compression for old contexts
- [ ] Search across session history

---

## 🧪 Testing Plan

**Test 1: Basic Recording**
1. Start session
2. Work for 5 minutes
3. Check LIVE_CONTEXT.md exists
4. Verify content accurate

**Test 2: Context Loading**
1. End session
2. Start new session
3. Verify RON knows what we were doing
4. No "re-reading files" needed

**Test 3: Handoff Generation**
1. Make significant decision
2. Check SESSION_HANDOFF.md updated
3. Within 5 minutes

**Test 4: Edge Cases**
- No prior context (first session)
- Very long session (8+ hours)
- Rapid file changes
- Empty QUEUE.md

---

## 📊 Success Metrics

| Metric | Before | After | Target |
|--------|--------|-------|--------|
| Context load time | 10-15 min | <30 sec | 90% reduction |
| Token waste | ~$0.50/session | ~$0.05/session | 90% reduction |
| File re-reads | 5-10 files | 0-1 files | 80% reduction |
| Continuity errors | Occasional | Rare | 95% accuracy |

---

## 🚀 Deployment

**Week 1 Schedule:**
- Day 1: Create folder structure
- Day 2: Implement session-recorder.js
- Day 3: Implement context-loader.js
- Day 4: Implement handoff-generator.js
- Day 5: Integration testing
- Day 6: Bug fixes
- Day 7: Documentation

**Install:**
```bash
cd ~/Workspaces/TheOptimizedBrain
openclaw skills install 01-Projects/AppProduction/01-Skills/memory-continuity
openclaw skills enable memory-continuity
openclaw skills test memory-continuity
```

---

*🧠 Memory Continuity — Never start from zero*
