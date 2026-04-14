---
uid: 20260414171002
type: readme
title: "08-Structure — README"
date: 2026-04-14
aliases: [Structure-README, System-README, Infrastructure-Guide]
tags: [readme, structure, system, infrastructure, navigation]
parent-index: "[[08-Structure-Index]]"
status: active
---

# 08-Structure — README

> **System infrastructure — dashboards, templates, protocols, MOCs. The nervous system of the vault.**

---

## Purpose

This folder contains **system infrastructure** — not knowledge, but the *organization of knowledge*.

It includes:
- **Dashboards** — Operational status and priorities
- **Templates** — Standardized formats
- **Protocols** — Workflows and procedures
- **MOCs** — Maps of Content (thematic entry points)
- **Daily** — Activity logs and history

---

## Folder Structure

```
08-Structure/
├── 08-Structure-Index.md           # Navigation hub
├── 08-Structure-README.md          # This file
│
├── Dashboards/                      # Operational dashboards
│   ├── 00-COMMAND.md               # Priorities & orders
│   ├── 01-PIPELINE.md              # Flow truth
│   ├── 02-HANDOFF.md               # Session state
│   └── 03-ZETTEL-REVIEW-LIST.md    # Review queue
│
├── MOCs/                           # Maps of Content
│   ├── MOC-Insulin-Signaling.md
│   ├── MOC-Vitamin-D.md
│   ├── MOC-RON-System.md
│   └── [thematic entry points]
│
├── Templates/                      # Standardized formats
│   ├── Template_Zettel_v2.0.md
│   ├── Template_LitNote_v3.0.md
│   └── [canonical templates]
│
├── Protocols/                      # Workflows
│   ├── CGPT_EXTRACTION_PROTOCOL_v2.0.md
│   └── [procedures]
│
├── Daily/                          # Activity logs
│   └── 2026/
│       └── 2026-04-14.md
│
├── Handoff/                        # Agent coordination
│   ├── pending/
│   ├── completed/
│   └── archive/
│
└── System/                         # Core infrastructure
    ├── CHECKLIST-PreFlight.md
    └── EMERGENCY-Recovery.md
```

---

## Dashboard System (Trinity)

| Dashboard | Purpose | Update Frequency |
|-----------|---------|------------------|
| **00-COMMAND** | Priorities & operating orders | Daily |
| **01-PIPELINE** | Flow truth & bottlenecks | As needed |
| **02-HANDOFF** | Session state & blockers | Every session |

**Rule:** Check COMMAND daily, PIPELINE before decisions, HANDOFF at session start.

---

## MOCs (Maps of Content)

**Purpose:** Thematic entry points to navigate the vault.

**Types:**
- **Domain MOCs** — Insulin, Vitamin D, Metabolomics
- **System MOCs** — RON-System, Learning-Systems
- **Method MOCs** — Zettelkasten-Method, Extraction-Protocol

**Naming:** `MOC-Descriptive-Title.md`

**Required in every MOC:**
- Entry points (start here)
- Linked zettels with descriptions
- Related MOCs

---

## Templates

**Canonical versions only.** No duplicates.

| Template | Use For |
|----------|---------|
| Template_Zettel_v2.0.md | Atomic knowledge |
| Template_LitNote_v3.0.md | Literature processing |
| Template_MOC_v1.0.md | Thematic entry points |
| Template_Project_v1.0.md | Active work |

**Rule:** Always use latest version unless specified.

---

## Protocols

**Standardized workflows** — follow or document deviation.

- **CGPT_EXTRACTION_PROTOCOL_v2.0.md** — Conversation → Zettels
- **Weekly-Consolidation-Ritual** — Maintenance schedule

---

## Naming Conventions

| Type | Pattern | Example |
|------|---------|---------|
| **Dashboards** | `00-NAME.md` | `00-COMMAND.md` |
| **MOCs** | `MOC-Name.md` | `MOC-Insulin-Signaling.md` |
| **Templates** | `Template_Name_vX.Y.md` | `Template_Zettel_v2.0.md` |
| **Protocols** | `NAME_PROTOCOL_vX.Y.md` | `CGPT_EXTRACTION_PROTOCOL_v2.0.md` |

---

## How to Add System Files

1. **Dashboards** — RON only (operational decisions)
2. **MOCs** — You or RON (thematic architecture)
3. **Templates** — RON curates (standardization)
4. **Protocols** — Document then formalize

---

## Rules

1. **Dashboards are truth** — If it's not in COMMAND, it's not priority
2. **Templates are canonical** — No local variations
3. **MOCs are entry points** — Every zettel should be reachable from a MOC
4. **System changes are significant** — Discuss before restructuring

---

## Cross-References

- **Knowledge:** [[03-Zettels-README]] — What the system organizes
- **Sources:** [[01-Literature-README]] — Input to the system
- **Projects:** [[07-Projects-README]] — Active work using the system

---

*Created 2026-04-14 — The infrastructure layer*
