---
uid: ROOT-INDEX
type: index
title: Root Index
date: 2026-04-20
aliases:
  - Root-Index
  - Master-Navigation
tags:
  - index
  - root
  - navigation
status: active
---

# Root Index

> **Quick Reference:** Mission → Command → Pipeline → Handoff | All indexes below

> **The Master Navigation Hub — entry point to the entire vault**
> 
> All folder indexes connect here. For MOC catalog, see [[MOCs-Index]].

---

## 🎯 Start Here

| Need | Go To |
|------|-------|
| **Why we exist** | [[00-MISSION]] — The North Star (charter) |
| **What to do now** | [[00-COMMAND]] — Current priorities & orders |
| **What's actually true** | [[01-PIPELINE]] — Flow state & bottlenecks |
| **Where we are** | [[02-HANDOFF]] — Session state |
| **What happened** | [[08-Structure/Daily/Daily-Index]] — Daily notes |
| **How we work** | [[Protocols-Index]] — Workflows |

---

## 📁 Main Folders

| Folder | Index | Description |
|--------|-------|-------------|
| 00-Inbox | [[00-Inbox-Index]] | Capture, fleeting notes |
| 01-Literature | [[01-Literature-Index]] | Processed sources |
| 02-References | [[02-References-Index]] | Scientific references |
| 03-Zettels | [[03-Zettels-Index]] | Atomic knowledge |
| 04-Synthesis | [[04-Synthesis-Index]] | Living documents |
| 07-Projects | [[07-Projects-Index]] | Active work |
| 08-Structure | [[08-Structure-Index]] | System infrastructure (dashboards, agents, issues, skills) |
| 09-Archive | [[09-Archive-Index]] | Legacy materials |

---

## 🧠 03-Zettels Subfolders

| Subfolder    | Index                             | Description       |
| ------------ | --------------------------------- | ----------------- |
| Conscious    | [[03-Zettels-Conscious-Index]]    | Working zettels   |
| Subconscious | [[03-Zettels-Subconscious-Index]] | Permanent zettels |
| RON          | [[03-Zettels-RON-Index]]          | RON system notes  |
| Biomarkers   | [[Biomarkers-Index]]              | Biomarker guides  |
| Supplements  | [[Supplements-Index]]             | Supplement guides |

---

## 🗂️ 08-Structure Subfolders

| Subfolder | Index | Description |
|-----------|-------|-------------|
| Dashboards | [[Dashboards-Index]] | Operational dashboards |
| Daily | [[Daily-Index]] | Date-stamped logs |
| MOCs | [[MOCs-Index]] | Maps of Content |
| Protocols | [[Protocols-Index]] | Process documentation |
| System | [[System-Index]] | System infrastructure |
| Templates | [[Templates-Index]] | Note templates |

---

## 🎯 07-Projects Subfolders

| Subfolder | Index | Description |
|-----------|-------|-------------|
| Agents | [[Agents-Index]] | Multi-agent system |
| Clinic | [[Clinic-Index]] | Clinic operations |
| Extraction | [[Extraction-Index]] | Knowledge extraction |
| Personal | [[Personal-Index]] | Personal projects |
| PhD | [[PhD-Index]] | PhD project hub |
| Tools | [[Tools-Index]] | Tools and automation |

---

## 🔗 Quick Navigation

**By Type:**
- Zettels: [[03-Zettels-Conscious]] | [[03-Zettels-Subconscious]]
- MOCs: [[MOCs-Index]]
- Projects: [[07-Projects-Index]]
- Daily: [[Daily-Index]]

**By Domain:**
- Insulin: [[MOC-Insulin-Signaling]]
- Metabolomics: [[MOC-Pharmacometabolomics]]
- B12: [[MOC-B12-Methylation]]

---

## 📐 Standards

### UID Format
`{TYPE}-{DOMAIN}-{SEQUENCE}`
- **T** = Type (Z=Zettel, L=LitNote, S=Synthesis, R=Reference)
- **DDD** = Domain (001=Insulin, 101=Pharmacometabolomics)
- **SSSS** = Sequence (0001, 0002...)

### YAML Required Fields
```yaml
---
uid: XXX-XXX-XXXX
type: [zettel|lit-note|reference|moc|synthesis]
title: "Full Title"
domain: XXX
tags: [tag1, tag2]
parent-moc: [[MOC-Name]]
parent-index: [[Index-Name]]
status: active
---
```

### Alignment Principle
| Location | Role |
|----------|------|
| **Workspace** (`~/.openclaw/workspace/`) | HQ — Core identity, memory, protocols |
| **Vault** (`~/Workspaces/TheOptimizedBrain/`) | The house — All knowledge, zettels, sources |
| **08-Structure** | Source of truth — Templates, protocols, dashboards |

---

## 🦞 System

- [[00-MISSION]] — The North Star
- [[00-COMMAND]] — Current priorities
- [[01-PIPELINE]] — Flow state
- [[02-HANDOFF]] — Session state
- [[System-Index]] — System infrastructure
- [[08-Structure/System/CHECKLIST-PreFlight]] — Session start protocol
- [[08-Structure/System/EMERGENCY-Recovery]] — When things break

---

## 🎯 Quick Start

**New to the vault?**
1. Read [[00-MISSION]] — Why we exist (1 min)
2. Read [[00-COMMAND]] — What to do now (2 min)
3. Check [[01-PIPELINE]] — What's actually true (2 min)
4. Read [[02-HANDOFF]] — Where we are (2 min)

**Starting work?**
1. Run [[CHECKLIST-PreFlight]] — 30-second validation
2. Use [[08-Structure/Templates/Template_LitNote]] — Standard format

---

*This index is the root of the tree — every note reachable from here.*
