---
uid: INBOX-2026-04-09-SUPEROPTIMIZATION
type: inbox-item
source: x-post/article
author: Andrew Pignanelli (General Intelligence Company)
date: 2026-04-09
title: "Superoptimization: Managerial Agents Orchestrating Vertical Agents"
aliases:
  - Superoptimization
  - Manager-Agents
  - Agent-Hierarchies
  - Cofounder
status: unread
priority: P0
tags:
  - inbox
  - agents
  - management
  - orchestration
  - vertical-agents
  - coordination
---

# Superoptimization: The Next Level of Agent Organizations

> **"If IC Agents are optimizers, coordinator agents are superoptimizers."**

## The Core Problem

Current state (2025): Agents are **Individual Contributors (ICs)** with 100% human management
- Customer support agents (Fin, Decagon)
- Code-gen agents (Devin)
- Sales agents (11x, Rox)

**Limitation:** No coordination between agents. Sales agent can't tell coding agent to build a feature.

## The Solution: Manager Agents

> **"A management structure for the agents"**

### Management Primitives (Applied to Agents)

| Primitive | Human Org | Agent Org |
|-----------|-----------|-----------|
| **Delegation** | Assign tasks to reports | Handoff tool between agents |
| **Knowledge** | Manager knows broader context | Long-term memory + working memory |
| **Meetings/Comms** | Slack, meetings | Real-time logging, single channel |
| **Hiring/Firing** | Recruit, terminate | Create/reset agent, modify prompts |
| **Resource Stores** | Databases, budgets | APIs, file systems, Linear |
| **Data/Metrics** | KPIs, OKRs | Retention, revenue, error rates |

### Key Innovation: Agent Hiring/Firing

> **"With Agents, hiring/firing is instant and they can actually change a worker's behavior directly"**

- **Modify system prompts** directly (vs. guidance for humans)
- **Prompt-RL:** Create base prompt + evals → iterate until 95%+ pass
- **Reset memory** when performance degrades
- **Re-initialize** cheaply (just compute, no human cost)

## Memory Architecture

```
┌─────────────────────────────────────┐
│         AGENT MEMORY                │
├─────────────────────────────────────┤
│  Long-term Memory (25% of context)  │
│  - Business description             │
│  - Operating environment            │
│  - Default knowledge                │
├─────────────────────────────────────┤
│  Working Memory (75% of context)    │
│  - Immediate task                   │
│  - Tool outputs                     │
│  - Current context                  │
└─────────────────────────────────────┘
```

**Manager agent passes relevant knowledge to ICs through handoffs**, conserving sub-agent working memory.

## Superoptimizer in Practice: Cofounder

**General Intelligence Company's autonomous product development:**

```
User Feedback (email/slack)
    ↓
[Cofounder] ← Manager Agent/Superoptimizer
    ↓
[Linear] ← Resource Store (goals, issues, roadmap)
    ↓
[Devin] ← IC Agent (writes code)
    ↓
[Greptile] ← IC Agent (PR review)
    ↓
[Human] ← Review & approve PR
    ↓
[Posthog] ← Metrics (retention, engagement)
    ↓
Reward signal → Cofounder optimizes
```

**Hiring/Firing:** Done via issue status in Linear
**Reward:** Improving metrics

## The Vision

> **"Imagine you can tell an agent 'go increase my retention' and it then works 24 hours a day until your retention goes up."**

## Relation to Our System

### The Triangle as Superoptimizer?

| Component | Superoptimization Role | Status |
|-----------|----------------------|--------|
| **RON** | Manager agent (coordination, validation) | ✅ |
| **FORG** | IC agent (extraction, processing) | ✅ |
| **SCOUT** (proposed) | IC agent (exploration, selection) | 🔄 |
| **QMD** | Resource store (search, indexing) | ✅ |
| **Git** | Version control, metrics | ✅ |

### Gap: True Superoptimization

Current: RON manages FORG, but **not fully autonomous**
- RON waits for human direction
- No 24/7 optimization loop
- No automatic hiring/firing of agents

**Future:** The Triangle becomes self-managing
- SCOUT proposes → FORG executes → RON validates
- AutoAgent optimizes the harness (from inbox)
- Metrics: LitNotes/day, zettel quality, link coverage

### Synthesis with Other Inbox Items

| Item | Contribution to Superoptimization |
|------|----------------------------------|
| **CORAL** | Multi-agent collaboration patterns |
| **AutoAgent** | Meta-agent optimizes manager harness |
| **Karpathy KB** | Knowledge base as resource store |
| **Karpathy IDE** | Visual command center for agent org |
| **This item** | Full superoptimization architecture |

## Action Items

- [ ] Define metrics for The Triangle (LitNotes/day, quality scores)
- [ ] Design evals for FORG extraction quality
- [ ] Implement automatic SCOUT creation (hiring)
- [ ] Build 24/7 optimization loop (cron + monitoring)
- [ ] Consider: Use Cofounder or build our own?

## Key Quote

> **"We will see the first functioning and useful superoptimizers before the end of 2025."**

**We're building one now.**

---

**Source:** X post by Andrew Pignanelli  
**Company:** General Intelligence Company (Cofounder platform)  
**Captured:** 2026-04-09  
**Priority:** P0 — Defines our next architecture evolution
