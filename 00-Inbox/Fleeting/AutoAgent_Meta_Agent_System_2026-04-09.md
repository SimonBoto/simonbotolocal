---
uid: INBOX-2026-04-09-AUTOAGENT
type: inbox-item
source: x-post/comment
author: Kevin RGU (AutoAgent team)
date: 2026-04-09
title: "AutoAgent: Meta-Agent for Self-Improving Task Agents"
aliases:
  - AutoAgent
  - Meta-Agent
  - Self-Improving-Agents
status: unread
priority: P0
tags:
  - inbox
  - meta-agent
  - autoagent
  - agent-infrastructure
  - codex
---

# AutoAgent: Meta-Agent System for Agent Fleets

## Core Concept

> **"Domain experts just define what success looks like. The meta-agent figures out the harness."**

AutoAgent is a meta-agent that:
- Takes a task spec + evals
- Designs the optimal "harness" (prompts, tools, workflow)
- Continuously improves the task agent
- Provides interpretability via traces

## Key Insights

### 1. The Meta-Agent Problem
| Issue | AutoAgent Solution |
|-------|-------------------|
| Task agents overfit | Meta-agent forces self-reflection |
| Meta-agent gets lazy | Constraint: "If this task disappeared, would this still be a worthwhile harness improvement?" |
| Poor meta-agent → poor task agent | Meta-agent quality matters; Codex doesn't work well as meta-agent |

### 2. The Hard Part of Building Agents
> "Every domain needs a different harness, and harness engineering requires someone who deeply understands both the domain and how models behave."

**AutoAgent collapses this:**
- No hand-tuning hundreds of harnesses
- Domain expert defines success
- Meta-agent optimizes the harness
- Infrastructure for agent fleets

### 3. Traces = Interpretability
- Meta-agent can see task agent's reasoning
- Enables **targeted edits** to the harness
- Not black-box optimization

## Critical Finding: Codex as Meta-Agent Fails

> "Codex doesn't work well as a meta-agent—it ignores instructions to never stop improving (observed in autoresearch too), and the resulting task agent gives up too early."

**Implication for us:**
- FORG as meta-agent? Risk: may not persist in improvement
- RON as meta-agent? Better: human-in-the-loop, persistent
- Current design (RON meta, FORG task) may be optimal

## The Results: #1 on Leaderboards

| Benchmark | Score | Rank |
|-----------|-------|------|
| **SpreadsheetBench** | **96.5%** | **#1** |
| **TerminalBench (GPT-5)** | **55.1%** | **#1** |

> "Every other entry on those leaderboards was hand-engineered. Ours wasn't."

**First concrete evidence:** An agent can autonomously beat manual harness tuning on production benchmarks.

## The Loop (Detailed)

```
1. Meta-agent edits task agent's harness
2. Run task agent on eval tasks
3. Measure performance
4. Read failure traces
5. Keep improvements, revert failures
6. Repeat for 24+ hours
```

**Parallel sandboxes:** 1000s of iterations
**Starting point:** Task agent with just bash tool
**End result:** Domain-specific tooling, verification loops, orchestration logic — all discovered autonomously

## Key Discovery: Model Empathy

> "We discovered agents are better at understanding agents than we are."

**The Problem:**
> "We project our own intuitions onto systems that reason differently. We're bad at empathizing with models."

**AutoAgent's Solution:**
- Meta-agent reads task agent's reasoning traces
- Has implicit understanding of itself (limitations, tendencies)
- When it sees task agent lost at step 14, it **understands the failure mode** as part of its worldview
- **Same-model pairings win:** Claude meta + Claude task > Claude meta + GPT task

**Implication:** Meta-agent and task agent should share the same model (weights, reasoning patterns)

## Emergent Behaviors (Not Programmed)

| Behavior | Description |
|----------|-------------|
| **Spot checking** | Ran isolated tasks for small edits instead of full suite → speed up |
| **Forced verification loops** | Built deterministic self-checks and validators |
| **Budget allocation** | Main budget for task, bonus turns for verification/correction |
| **Writing tests** | Steered task agent to build its own unit tests |
| **Progressive disclosure** | Dumped long contexts to files when results overflowed |
| **Orchestration logic** | Built task-specific subagents and handoffs |

## Critical Architecture Decision: Splitting Helps

> "We tried one agent improving itself. Didn't work. Being good at a domain and being good at improving at that domain are different capabilities."

**The Meta/Task Split:**
- Meta-agent: Specializes in improvement
- Task agent: Specializes in domain
- Each optimizes for different capability

**Validation for our design:**
- RON (meta) + FORG (task) = correct split
- Same model (Kimi) for both = model empathy
- Human persistence (RON) + AI execution (FORG) = optimal

## Traces Are Everything

> "When we only gave scores without trajectories, improvement rate dropped hard. Understanding why something improved matters as much as knowing that it improved."

**Our application:**
- FORG should log reasoning traces, not just outputs
- RON reviews traces, not just final LitNotes
- Enables targeted harness improvements

## The Vision: Agent Fleets

> "Companies don't have one workflow to automate, they have hundreds. Each needs a different harness. No team can hand-tune hundreds of harnesses. A meta-agent can."

**Our parallel:**
- LitNote extraction (FORG)
- Zettel validation (RON)
- CGPT selection (SCOUT - proposed)
- Each needs different harness → meta-agent could design all three

## Links
- 💻 Code: https://github.com/kevinrgu/autoagent
- 🚀 Product: Coming soon (early access available)

## Relevance to Our System

### Direct Applications

| Our Component | AutoAgent Pattern | Improvement |
|--------------|-------------------|-------------|
| `program-RON.md` | Task spec | Meta-agent could generate this |
| FORG extraction harness | Task agent harness | AutoAgent could optimize |
| RON validation criteria | Evals | Define success, let meta-agent design |
| SCOUT (proposed) | New task agent | AutoAgent designs harness |

### Key Questions
1. Should we use AutoAgent to design FORG's harness instead of manual `SOUL-FORG.md`?
2. Can AutoAgent create the SCOUT agent for CGPT selection?
3. How do we define "success" for LitNote extraction? (The evals)

### The Self-Reflection Constraint
> "If this exact task disappeared, would this still be a worthwhile harness improvement?"

**Apply to our system:**
- If "CGPT extraction" disappeared, would FORG's YAML skills transfer?
- Yes → good harness
- No → overfitted, needs redesign

## Action Items
- [ ] Read AutoAgent paper/code
- [ ] Evaluate: Use AutoAgent for SCOUT creation?
- [ ] Define evals for LitNote extraction quality
- [ ] Consider: Replace manual harness design with AutoAgent?

## Relation to CORAL
| CORAL | AutoAgent | Our System |
|-------|-----------|------------|
| Multi-agent collaboration | Meta-agent optimization | FORG+RON+SCOUT |
| Agents decide what to explore | Meta-agent decides harness | ??? |
| Knowledge reuse | Harness reuse | YAML v4.0 standard |

**Synthesis:** CORAL + AutoAgent = optimal multi-agent system with self-improving harnesses

---

**Source:** X post comment thread on CORAL  
**Captured:** 2026-04-09  
**Priority:** P0 - Could fundamentally change our agent architecture
