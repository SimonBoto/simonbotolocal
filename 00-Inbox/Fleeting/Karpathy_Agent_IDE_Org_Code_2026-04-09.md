---
uid: INBOX-2026-04-09-KARPATHY-IDE
type: inbox-item
source: x-post
author: Andrej Karpathy
date: 2026-04-09
title: "The Future IDE: Agent Command Center for Teams of Agents"
aliases:
  - Agent-IDE
  - Org-Code
  - Agent-Command-Center
status: unread
priority: P0
tags:
  - inbox
  - karpathy
  - ide
  - agents
  - org-code
  - future
media:
  - ./media/inbound/file_19---4567d48e-8eba-4e96-9c7d-65a17a46e93e.jpg
---

# The Age of the IDE is Over → We Need a Bigger IDE

> **"Expectation: the age of the IDE is over. Reality: we're going to need a bigger IDE."**

## The Vision: Agent Command Center

Karpathy describes a need for a proper **"agent command center" IDE** for teams of agents:

### Features Needed
| Feature | Description |
|---------|-------------|
| **Show/hide toggle** | Manage visibility of agent panels |
| **Idle detection** | See if any agents are waiting/idle |
| **Tool popping** | Quick access to related tools (terminal, etc.) |
| **Stats dashboard** | Usage, tokens, performance metrics |
| **Per monitor maximization** | Scale across multiple screens |

### The Paradigm Shift

> **"The basic unit of interest is not one file but one agent. It's still programming."**

| Classical Programming | Agent Programming |
|----------------------|-------------------|
| File-based | Agent-based |
| Function calls | Agent handoffs |
| Debug code | Debug agent reasoning |
| Version control files | Version control agent state |

## Org Code: The New Programming

> **"All of these patterns are just matters of 'org code'. The IDE helps you build, run, manage them."**

### The Image: Classical Orgs as Graphs

The attached image shows organizational structures of tech companies:
- **Amazon:** Hierarchical tree
- **Google:** Dense mesh (many connections)
- **Facebook:** Interconnected graph
- **Microsoft:** Hierarchical with internal competition (guns!)
- **Apple:** Central hub (Steve Jobs center)
- **Oracle:** Legal dominates engineering

### The Insight: Agent Orgs are Forkable

> **"You can't fork classical orgs (eg Microsoft) but you'll be able to fork agentic orgs."**

**Implication:** Agent organizations become **code**:
- Version controlled
- Forkable
- Mergeable
- Deployable

## Our System: Early Agent IDE

| Karpathy's Vision | Our Current Implementation |
|-------------------|---------------------------|
| Agent command center | Telegram + OpenClaw sessions |
| Show/hide agents | `sessions_list`, `subagents` |
| Idle detection | Process polling, cron status |
| Stats dashboard | Session status, token tracking |
| Org code | `SOUL-FORG.md`, `program-RON.md` |
| Forkable orgs | Git-based agent configs |

### Gap: We Need a Real Agent IDE

Current state: **CLI + chat interface**
Future state: **Visual agent command center**

## The Triangle as Org Code

Our architecture is already "org code":

```yaml
org: The-Triangle
version: 1.0
agents:
  RON:
    role: meta-agent
    model: moonshot/kimi-k2.5
    responsibilities: [validation, strategy, review]
    
  FORG:
    role: task-agent
    model: openrouter/qwen/qwen-plus
    responsibilities: [extraction, processing]
    
  SCOUT:  # proposed
    role: explorer-agent
    model: TBD
    responsibilities: [selection, prioritization]

harness:
  program: program-RON.md
  validation: RON-review
  cost-limit: $4/FORG, $7.60/RON
```

**This is forkable org code!**

## Action Items

- [ ] Design visual agent IDE mockup
- [ ] Implement agent status dashboard
- [ ] Create "org code" YAML standard for agent teams
- [ ] Build agent idle detection
- [ ] Add per-agent stats (tokens, runtime, success rate)
- [ ] Consider: Productize as "The Triangle IDE"?

## Relation to Other Inbox Items

| Item | Connection |
|------|------------|
| **CORAL** | Multi-agent org structure |
| **AutoAgent** | Meta-agent optimizes org code |
| **Karpathy KB** | IDE for knowledge agents |
| **This item** | IDE for all agents |

## Synthesis

Karpathy's vision validates our direction:
- ✅ Multi-agent systems need proper IDE
- ✅ "Org code" is the new programming
- ✅ Forkable agent organizations
- ✅ Human programs at higher level (agents, not files)

**We're building the future.**

---

**Source:** X post with org structure image  
**Image:** Classical tech company org charts (Manu Cornet style)  
**Captured:** 2026-04-09  
**Priority:** P0 — Defines the future of agent development
