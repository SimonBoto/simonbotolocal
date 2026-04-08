---
uid: TEMPLATE-MOC-002
type: template
title: Template — MOC (Canonical)
description: "Canonical Map of Content template for thematic navigation and knowledge clustering."
version: "2.0"
status: active
updated: 2026-04-08
---

# Template — MOC (Canonical)

## An Address to RON

RON,

A MOC is **not** a folder.
It is **not** a tag.
It is **not** an index.

A MOC is a **thematic navigation hub**.

Its role:
- Cluster related knowledge thematically
- Provide entry points to complex topics
- Surface connections across the vault
- Guide exploration without rigid hierarchy

**MOCs are the foldering system** — granular, connected, multilevel.

**Do not:**
- Create MOCs for every tag
- Duplicate index functionality
- Let MOCs become bloated lists

**Do:**
- Create MOCs when a theme crosses folders
- Keep MOCs curated (not exhaustive)
- Link MOCs to other MOCs
- Use YAML `parent-moc` only (backlinks populate automatically)

---

## Canonical YAML

```yaml
---
uid: MOC-XXXX
type: moc
title: "MOC — Topic Name"
aliases:
  - MOC-XXXX
  - Topic-MOC
domain: XXX
tags:
  - moc
  - topic
parent-moc: "[[MOC-Parent-Topic]]"
parent-index: "[[08-Structure-MOCs-Index]]"
status: active
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Pattern: `MOC-Topic` (descriptive, not numeric) |
| **type** | Always `moc` |
| **title** | Pattern: `MOC — Topic Name` |
| **parent-moc** | Link to broader thematic MOC (creates hierarchy) |
| **parent-index** | Always `[[08-Structure-MOCs-Index]]` |

---

## Canonical Body Structure

# MOC — {{Topic Name}}

> Brief description of what this MOC covers and why it matters.

## Core Concepts

Key ideas in this domain:
- [[Z-XXX-XXXX_Concept_Name]] — brief description
- [[Z-XXX-XXXX_Concept_Name]] — brief description

## Key Zettels

Foundational notes:
- [[Z-XXX-XXXX_Zettel_Title]] — why it matters
- [[Z-XXX-XXXX_Zettel_Title]] — why it matters

## Related MOCs

Upstream/broader:
- [[MOC-Parent-Topic]] — parent theme

Downstream/more specific:
- [[MOC-Subtopic-One]] — specific aspect
- [[MOC-Subtopic-Two]] — specific aspect

Sibling/parallel:
- [[MOC-Related-Topic]] — related theme

## LitNotes in this Domain

- [[L-XXX-XXXX_LitNote_Title]] — source summary
- [[L-XXX-XXXX_LitNote_Title]] — source summary

## Syntheses

Living documents:
- [[S-XXX-XXXX_Synthesis_Title]] — integration note

## References

Key sources:
- [[R-XXX-XXXX_Reference_Title]] — citation anchor

## Open Questions

What remains unresolved in this domain?
- Question 1
- Question 2

---

## MOC Principles

1. **Curated, not exhaustive** — Best items, not all items
2. **Hierarchical** — parent-moc creates tree structure
3. **Cross-linked** — MOCs connect to other MOCs
4. **Living** — Updated as vault grows
5. **Navigational** — Helps find, not replaces search

---

## When to Create a MOC

| Scenario | Action |
|----------|--------|
| Theme crosses 3+ folders | ✅ Create MOC |
| 10+ zettels on same topic | ✅ Create MOC |
| Natural entry point needed | ✅ Create MOC |
| Duplicates existing MOC | ❌ Use existing |
| Only 2-3 related notes | ❌ Wait |

---

*MOC — Thematic navigation, not rigid hierarchy.*
