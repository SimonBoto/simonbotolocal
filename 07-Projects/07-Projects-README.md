---
uid: 20260414170701
type: readme
title: "07-Projects — README"
date: 2026-04-14
aliases: [Projects-README, Projects-Guide]
tags: [readme, projects, guide, navigation]
parent-index: "[[07-Projects-Index]]"
status: active
---

# 07-Projects — README

> **Active work, organized by domain. Projects move through states: active → paused → completed.**

---

## Purpose

This folder contains **actionable work** — not reference material, not synthesized knowledge, but *things being done*.

Projects are:
- **Time-bound** — Have start and (intended) end
- **Outcome-focused** — Produce specific deliverables
- **Status-tracked** — Active, paused, blocked, or completed

---

## Folder Structure

```
07-Projects/
├── 07-Projects-Index.md          # Navigation hub
├── 07-Projects-README.md         # This file
├── PROJECT_CONTROL_BOARD.md      # Master status dashboard
│
├── Agents/                        # AI agent development
│   ├── FORG_Agent_Project_S-001-0004.md
│   └── SCOUT_Agent_Project_S-001-0014.md
│
├── Clinic/                        # Clinical operations
│   ├── Clinic-Index.md
│   └── [operational projects]
│
├── Extraction/                    # CGPT extraction program
│   └── CGPT_Extraction_Program_S-001-0003.md
│
├── Personal/                      # Personal development
│   ├── Beeswax_Tallow_Business_S-001-0013.md
│   ├── Guitar_Learning_S-001-0012.md
│   └── Personal-Index.md
│
├── PhD/                           # Doctoral research
│   ├── PhD-Index.md
│   ├── Research_Agenda.md
│   ├── PROJECT-AutoResearch-Knowledge.md
│   └── [study protocols]
│
├── Protocols/                     # Standardized workflows
│   └── [process documentation]
│
└── Tools/                         # Utility development
    └── [tool projects]
```

---

## Status Labels

| Label | Meaning | Action |
|-------|---------|--------|
| **🟢 active** | Currently being worked on | Continue / allocate resources |
| **🟡 paused** | Intentionally suspended | Resume when conditions met |
| **🔴 blocked** | Cannot proceed (external dependency) | Escalate / find workaround |
| **⚫ completed** | Delivered, integrated, done | Archive / celebrate |
| **⚪ draft** | Idea stage, not yet started | Define scope / prioritize |

---

## Naming Convention

**Files:** `Descriptive_Title_S-XXX-XXXX.md`

| Component | Meaning |
|-----------|---------|
| **S** | Synthesis (project output type) |
| **XXX** | Domain (001=Insulin, 901=System) |
| **XXXX** | Sequence number |

**Examples:**
- `SCOUT_Agent_Project_S-001-0014.md`
- `Beeswax_Tallow_Business_S-001-0013.md`

---

## How to Add a New Project

1. **Create file** with S-UID in appropriate subfolder
2. **Use Template:** `08-Structure/Templates/Template_Project_v1.0.md`
3. **Set status:** active / paused / blocked / draft
4. **Link to:** `PROJECT_CONTROL_BOARD.md`
5. **Update:** `07-Projects-Index.md`

---

## Cross-References

- **Planning:** [[00-COMMAND.md]] — Current priorities
- **Pipeline:** [[01-PIPELINE.md]] — What's actually happening
- **Archive:** Completed projects move to `09-Archive/Projects/`

---

## Rules

1. **Every project has a status** — No untracked work
2. **Every project has an owner** — Usually Simos, sometimes RON/FORG
3. **Projects link to sources** — Not floating deliverables
4. **Completed projects get archived** — Keep active folder lean

---

*Created 2026-04-14 to standardize project documentation*
