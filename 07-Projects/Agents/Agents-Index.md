---
uid: PRJ-AGENTS-0001
type: index
title: "Agents Index"
date: 2026-04-07
aliases: [AGENTS-INDEX]
tags: [index, agents, multi-agent, ai]
parent-moc: [[07-Projects-Index]]
parent-index: [[07-Projects-Index]]
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
| **FORG** | Qwen Plus | Bulk drafting, extraction prep | ✅ Operational | `workspace-forg/` |

## Planned Agents

| Agent | Model | Role | Priority |
|-------|-------|------|----------|
| **RESEARCH** | (TBD) | Literature extraction, web search | P1 |
| **EDITOR** | (TBD) | YAML validation, link checking | P2 |
| **CLINIC** | Kimi k2.5 | Patient workflow assistance | P2 |
| **PHD** | Kimi k2.5 | Academic writing, paper drafting | P2 |

## Agent Projects

- [[FORG_Agent_Project_S-001-0004]] — FORG (The Forge) — Operational 2026-04-07

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
│ FORG  │ │RESEARCH│ │EDITOR │
│Qwen   │ │ (TBD)  │ │ (TBD)  │
│Draft  │ │Search  │ │Check  │
└───────┘ └───────┘ └───────┘
```

## Cost Structure

| Agent | Model | Cost | Use Case |
|-------|-------|------|----------|
| RON | Kimi k2.5 | $40/M tokens | Final review, complex synthesis |
| FORG | Qwen Plus | $0.26/M in, $0.78/M out | Bulk drafting, extraction |
| **Savings** | | **98%** | |

## Related
- [[07-Projects-Index]]
- [[ZettelForge_Concept_S-001-0001]]
- [[OpenClaw_Model_Cleanup_S-001-0007]]

---
*Agents — Specialized workers, coordinated by RON*
