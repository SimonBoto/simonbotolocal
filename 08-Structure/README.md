---
uid: README-08-STRUCTURE
type: readme
title: "08-Structure — System Infrastructure"
domain: 001
domain-name: System
tags: [readme, structure, system, infrastructure]
parent-moc: [[00-INDEX]]
parent-index: [[08-Structure-Index]]
status: active
created: 2026-04-06
updated: 2026-04-06
---

# 08-Structure — System Infrastructure

> **The backbone of TheOptimizedBrain vault**
> 
> *Workspace is HQ, vault is the house, 08-Structure is source of truth.*

---

## 🗺️ Navigation

| Folder | Purpose | Entry Point |
|--------|---------|-------------|
| **Dashboards/** | Operational visibility | [[Dashboards-Index]] |
| **System/** | Active infrastructure | [[System-Index]] |
| **Protocols/** | Workflows & processes | [[Protocols-Index]] |
| **Templates/** | Note templates | [[Templates-Index]] |
| **MOCs/** | Maps of Content | [[MOCs-Index]] |
| **Daily/** | Date-stamped logs | [[Daily-Index]] |

---

## 🎯 Quick Start

**New to the vault?** Start here:
1. Read [[00-COMMAND]] — Current priorities
2. Check [[02-HANDOFF]] — What we were doing
3. Review [[01-PIPELINE]] — Processing backlog

**Starting work?**
1. Run [[CHECKLIST-PreFlight]] — 30-second validation
2. Follow [[CGPT_EXTRACTION_PROTOCOL_v2.0]] — For CGPT work
3. Use [[Template_LitNote_v2.0]] — Standard format

**Something broken?**
→ [[EMERGENCY-Recovery]] — Gateway recovery procedures

---

## 📐 Standards

### UID Format
`{TYPE}-{DOMAIN}-{SEQUENCE}`
- **T** = Type (Z=Zettel, L=LitNote, S=Synthesis)
- **DDD** = Domain (001=Insulin, 101=Pharmacometabolomics)
- **SSSS** = Sequence (0001, 0002...)

### YAML Required Fields
```yaml
---
uid: XXX-XXX-XXXX
type: [zettel|lit-note|index|protocol|system]
title: "Full Title"
domain: XXX
domain-name: "Human Readable"
tags: [tag1, tag2]
parent-moc: [[MOC-Name]]
parent-index: [[Index Name]]
status: active
---
```

---

## 🔗 Alignment Principle

| Location | Role |
|----------|------|
| **Workspace** (`~/.openclaw/workspace/`) | HQ — Core identity, memory, protocols |
| **Vault** (`~/Workspaces/TheOptimizedBrain/`) | The house — All knowledge, zettels, sources |
| **08-Structure** | Source of truth — Templates, protocols, dashboards |

**Rule:** 08-Structure drives. Workspace follows. Vault contains.

---

## 📊 Current Status

See [[00-COMMAND]] for real-time system vitals.

---

*08-Structure — Structure enables flow.*
