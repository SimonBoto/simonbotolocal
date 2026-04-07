---
uid: PRJ-AGENTS-0001
type: index
title: "Agents Index"
date: 2026-04-07
aliases: [AGENTS-INDEX]
tags: [index, agents, multi-agent, ai]
parent-moc: [[07 Projects Index]]
parent-index: [[07 Projects Index]]
status: active
---

# Agents Index

> **Multi-agent system for TheOptimizedBrain operations**

## Philosophy

Based on insights from Brian Roemmele (Zero-Human Company) and Andrej Karpathy (LLM Knowledge Bases):

- **Named agents with specific roles** — Like Roemmele's Luna and Elizabeth
- **Separate workspaces** — Clean boundaries, targeted capabilities
- **Human review at edges** — Karpathy's approach: agents do, humans verify
- **Cost optimization** — Cheap models for bulk, expensive for quality

## Active Agents

| Agent | Model | Role | Status | Workspace |
|-------|-------|------|--------|-----------|
| **RON** | Kimi k2.5 | Primary, quality control, synthesis | ✅ Active | `workspace/` |
| **WORKER** | MiniMax 2.7 | Bulk drafting, research prep | 🟡 In Setup | `workspace-worker/` (planned) |

## Planned Agents

| Agent | Model | Role | Priority |
|-------|-------|------|----------|
| **RESEARCH** | MiniMax 2.7 | Literature extraction, web search | P1 |
| **EDITOR** | MiniMax 2.7 | YAML validation, link checking | P2 |
| **CLINIC** | Kimi k2.5 | Patient workflow assistance | P2 |
| **PHD** | Kimi k2.5 | Academic writing, paper drafting | P2 |

## Agent Projects

- [[WORKER_Agent_Project_S-001-0004]] — Define WORKER's role and create workspace

## Architecture Principles

```
┌─────────────────────────────────────┐
│           SUPERVISOR (RON)          │
│         Kimi k2.5 — Quality         │
└─────────────┬───────────────────────┘
              │ delegates
    ┌─────────┼─────────┐
    ▼         ▼         ▼
┌───────┐ ┌───────┐ ┌───────┐
│WORKER │ │RESEARCH│ │EDITOR │
│MiniMax│ │MiniMax │ │MiniMax│
│Draft  │ │Search │ │Check  │
└───────┘ └───────┘ └───────┘
```

## Cost Structure

| Agent | Model | Cost/1K tokens | Use Case |
|-------|-------|----------------|----------|
| RON | Kimi k2.5 | $0.04 | Final review, complex synthesis |
| WORKER | MiniMax 2.7 | $0.002 | Bulk drafting, simple tasks |
| **Savings** | | **95%** | |

## Related
- [[07 Projects Index]]
- [[ZettelForge_Concept_S-001-0001]]
- [[OpenClaw_Model_Cleanup_S-001-0007]]

---
*Agents — Specialized workers, coordinated by RON*
