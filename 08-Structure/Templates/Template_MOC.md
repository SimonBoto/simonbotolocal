---
uid: TEMPLATE-MOC-003
type: template
title: Template — MOC (Canonical)
description: "Canonical Map of Content template for thematic navigation — backlinks populate automatically."
version: "3.0"
status: active
updated: 2026-04-08
---

# Template — MOC (Canonical)

## An Address to RON

RON,

A MOC is **not** a folder, tag, or index.

A MOC is a **thematic navigation hub** that collects connections automatically.

**Key principle:** Backlinks populate from `parent-moc` YAML. No manual lists needed.

**Do not:**
- Create manual "Related MOCs" lists (backlinks do this)
- Maintain "Key Zettels" lists (use backlinks or queries)
- Duplicate index functionality

**Do:**
- Use `parent-moc` in YAML for hierarchy
- Write a clear description
- Keep it minimal — let backlinks grow the graph

---

## Canonical YAML

```yaml
---
uid: MOC-Topic
type: moc
title: "MOC — Topic Name"
aliases:
  - MOC-Topic
domain: XXX
tags:
  - moc
  - topic
parent-moc: "[[MOC-Parent-Topic]]"
parent-index: "[[MOCs-Index]]"
status: active|stub|archived
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Pattern: `MOC-Topic` (descriptive, kebab-case) |
| **type** | Always `moc` |
| **title** | Pattern: `MOC — Topic Name` |
| **parent-moc** | Link to broader thematic MOC (creates hierarchy) |
| **parent-index** | Always `[[MOCs-Index]]` |
| **status** | `active` (in use), `stub` (placeholder), `archived` (superseded) |

---

## Canonical Body Structure

# MOC — {{Topic Name}}

> Brief description of what this MOC covers and why it matters.

## Description

What domain does this MOC cover? What questions does it answer?

## Scope

- In scope: [what belongs here]
- Out of scope: [what doesn't belong]

## Entry Points

Key starting places (only if explicitly needed):
- [[Z-XXX-XXXX_Key_Zettel]] — foundational concept
- [[S-XXX-XXXX_Key_Synthesis]] — integration document

## Open Questions

What remains unresolved in this domain?
- Question 1
- Question 2

---

## MOC Principles

1. **Backlinks are the graph** — `parent-moc` creates connections automatically
2. **Minimal body** — Description + scope + questions only
3. **Hierarchical** — `parent-moc` creates tree structure
4. **Living** — Updated as vault grows
5. **Navigational** — Entry points guide, backlinks populate

---

## When to Create/Archive a MOC

| Scenario | Action |
|----------|--------|
| Theme crosses 3+ folders, 10+ zettels | ✅ Create MOC |
| Natural entry point needed | ✅ Create MOC |
| Duplicates existing MOC | ❌ Use existing |
| Only 2-3 related notes | ❌ Wait |
| Superseded by better MOC | 🗄️ Archive (status: archived) |
| Never populated | 🗄️ Archive or delete |

---

## Navigation

- **MOC Index:** [[MOCs-Index]] — All MOCs
- **Up:** [[08-Structure-Index]] — System infrastructure

---

*MOC — Thematic hub. Backlinks are the graph. Keep it minimal.*
