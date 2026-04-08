---
uid: IDX-DASHBOARDS
type: index
title: "Dashboards Index"
date: 2026-04-06
tags: [index, dashboards, operations]
parent-moc: [[08-Structure-Index]]
parent-index: [[08-Structure-Index]]
---

# Dashboards Index

> **Operational dashboards — command center for vault work**

---

## Dashboards

| File | Purpose | When to Check |
|------|---------|---------------|
| [[00-COMMAND]] | Operating orders & system state | Every session |
| [[01-PIPELINE]] | Processing flow & backlog | Daily |
| [[02-HANDOFF]] | Session state & context | Per session |
| [[02-LOG]] | Activity history | As needed |

---

## Dashboard Roles (v3.0)

| Dashboard | Role | Updates |
|-----------|------|---------|
| **00-COMMAND** | Orders + State | You refresh priorities; I auto-report metrics |
| **01-PIPELINE** | Flow truth + Bottlenecks | I diagnose; you verify; update on reality change |
| **02-HANDOFF** | Session context | Per session start/end |
| **02-LOG** | Historical record | Append-only |

### How They Work Together

```
MISSION (why) → COMMAND (what to do) → PIPELINE (what's true)
                      ↓
               HANDOFF (where we are) → LOG (what happened)
```

- **MISSION** gives orientation
- **COMMAND** gives orders  
- **PIPELINE** tells flow truth (diagnoses bottlenecks)
- **HANDOFF** captures session state
- **LOG** records history

---

## Quick Navigation

**Starting work?** → Read [[00-COMMAND]] then [[01-PIPELINE]]  
**Ending session?** → Update [[01-HANDOFF]]  
**What happened?** → Check [[02-LOG]]

---

## Connection to Vault

- Up: [[08-Structure-Index]]
- Related: [[07-Projects-Index]]

---

*The control room — 4 dashboards for complete visibility*
