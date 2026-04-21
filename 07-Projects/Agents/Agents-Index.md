---
uid: PRJ-AGENTS-0001
type: index
title: "Agents Index"
date: 2026-04-21
aliases: [AGENTS-INDEX, Index-Agents]
tags: [index, agents, multi-agent, ai]
parent-moc: [[07-Projects-Index]]
parent-index: [[07-Projects-Index]]
status: active
---

# Agents Index

> **Multi-agent system for TheOptimizedBrain operations**
> 
> Based on insights from Brian Roemmele (Zero-Human Company) and Andrej Karpathy (LLM Knowledge Bases)

---

## Active Agents

| Agent | Model | Role | Status | Workspace |
|-------|-------|------|--------|-----------|
| **🦞 RON** | Kimi k2.5 | Quality control, finalization, curation | ✅ Active | `workspace/` |
| **👻 FORG** | Grok 4.1 Fast | Draft creation, bulk extraction | ✅ Operational | `workspace-forg/` |
| **🦅 SCOUT** | Nemotron 3 Super | Theme detection, exploration | ✅ Operational | `workspace-scout/` |

---

## Cost Structure

| Agent | Model | Input | Output | Savings |
|-------|-------|-------|--------|---------|
| RON | Kimi k2.5 | $0.38/M | $1.72/M | Baseline |
| FORG | Grok 4.1 Fast | $0.20/M | $0.60/M | ~99.9% |
| SCOUT | Nemotron 120B | $0 | $0 | 100% |

---

## Agent Profiles

| Agent | Profile | Project |
|-------|---------|---------|
| RON | [[Agent-RON]] | — |
| FORG | [[Agent-FORG]] | [[FORG_Agent_Project_S-001-0004]] |
| SCOUT | [[Agent-SCOUT]] | [[SCOUT_Agent_Project_S-001-0014]] |

---

## Status Dashboard

See [[Agent-Status]] for at-a-glance view of all agents.

---

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
│ FORG  │ │ SCOUT │ │EDITOR │
│Grok   │ │Nemo   │ │(future)│
│Draft  │ │Explore│ │Check  │
└───────┘ └───────┘ └───────┘
```

---

## Philosophy

- **Named agents with specific roles** — Like Roemmele's Luna and Elizabeth
- **Separate workspaces** — Clean boundaries, targeted capabilities
- **Human review at edges** — Karpathy's approach: agents do, humans verify
- **Cost optimization** — Cheap models for bulk, expensive for quality

---

## Related

- [[07-Projects-Index]]
- [[New-Agent-Hiring-Protocol]] — How to add new agents
- [[Memory-Architecture]] — How agent memory works

---
*Agents — Specialized workers, coordinated by RON*
