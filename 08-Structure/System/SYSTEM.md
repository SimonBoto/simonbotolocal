---
uid: SYS-001-0003
type: system
title: SYSTEM — Vault Operating System
description: "Core operating principles, protocols, and lifecycle rules for TheOptimizedBrain vault."
version: "1.0"
status: active
updated: 2026-04-08
parent-moc: "[[System-Index]]"
parent-index: "[[08-Structure-Index]]"
---

# SYSTEM — Vault Operating System

> **The rules that govern the vault.**

---

## 1. MOC Lifecycle Protocol

### Creation Rule
**Never create a MOC speculatively.**

Before creating:
1. Search `MOCs-Index` for existing coverage
2. Verify 10+ zettels exist that would link to it
3. Verify theme crosses 3+ folders
4. Use minimal template (description + scope only)
5. Set `parent-moc` immediately in YAML

### Lifecycle States

| State | Meaning | Transition |
|-------|---------|------------|
| `draft` | Being built, <10 backlinks | Start here |
| `active` | Backlinks populated, in use | Promote from draft |
| `stub` | Placeholder, <5 backlinks, 30+ days old | Archive |
| `archived` | Superseded or never populated | Move to 09-Archive |

### Backlink-First Principle

> **"If a MOC needs a manual list, the zettels are wrong."**

- Zettels must have `parent-moc` in YAML
- MOCs display backlinks automatically
- Manual lists = technical debt to eliminate

---

## 2. Template System (Locked)

**9 Canonical Templates:**
- Template_Zettel.md (v4.0)
- Template_LitNote.md (v4.0)
- Template_Daily.md (v2.0)
- Template_Reference.md (v3.0)
- Template_Inbox.md (v3.0)
- Template_MOC.md (v3.0)
- Template_Synthesis.md (v2.0)
- Template_Supplement.md (v2.0)
- Template_Biomarker.md (v2.0)

**Rule:** Never create a note without a template.

---

## 3. Location-Based Navigation

| Location | parent-index | Body Navigation |
|----------|--------------|-----------------|
| `08-Structure/Templates/` | `[[Templates-Index]]` | `[[Templates-Index]]` + `[[08-Structure-Index]]` |
| `08-Structure/MOCs/` | `[[MOCs-Index]]` | `[[MOCs-Index]]` + `[[08-Structure-Index]]` |
| `08-Structure/Daily/` | `[[Daily-Index]]` | `[[Daily-Index]]` + `[[08-Structure-Index]]` |

**No shadow MOCs.** Only link to MOCs that exist.

---

## 4. Archive Rules

| What | Where |
|------|-------|
| Old template versions | `08-Structure/Templates/Archive/` |
| Archived MOCs | `09-Archive/MOCs/` |
| Archived indexes | `09-Archive/` |

---

## 5. Git Discipline

- Commit after every major change
- Descriptive messages: `YYYY-MM-DD: what changed`
- Working tree clean before session end

---

*SYSTEM — The vault's immune system.*
