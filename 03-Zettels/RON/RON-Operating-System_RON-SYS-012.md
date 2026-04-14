---
uid: RON-SYS-012
type: zettel
title: RON Operating System
date: 2026-04-08
aliases: [RON-SYS-012]
domain: RON-SYS
tags: [ron, system, procedures, protocols, workflow]
parent-index: "[[03-Zettels-RON-Index]]"
status: conscious
parent-moc: "[[MOC-Systems-Architecture]]"
---

# RON Operating System

> Core procedures, protocols, and workflows for RON-FORG partnership.

---

## Knowledge Graph (Core Connections)

| Concept A | → | Concept B |
|-----------|---|-----------|
| Vitamin D | ↔ | Insulin resistance |
| Adipic acid | → | IR early detection |
| Builder's Blindness | → | Two-Mode System fix |
| ChatGPT Archive | → | Zettelkasten workflow |
| Human-AI Partnership | → | The "We" (ontological) |

---

## Operating Procedures

### Extraction Protocol v1.0

**Formalized:** 2026-02-24  
**Steps:** Audit → Plan → Create → Verify → Update (never skip)  
**Max:** 5 items/batch  
**Status "complete":** 100% verified only

**Domain Assignment:**
- **001:** Insulin signaling, IR mechanisms, adipic acid
- **101:** Pharmacometabolomics, drug mechanisms, precision medicine

---

### Batch Processing Protocol

**Tier Classification:**

| Tier | % | Depth | Action |
|------|---|-------|--------|
| **GOLD** | 10% | Deep extraction, 3-4 atomics | Spot-check 3 |
| **SILVER** | 25% | Medium upgrade, YAML + TL;DR | Batch approve |
| **BRONZE** | 65% | Standardization only | Bulk approve |

**Checkpoint:** Git commit every 10 items

---

## Workflow v4.0 — Zettelkasten System

**The Chain:** `Input → Inbox (1) → LitNote (1) → Zettels (N) + References (100%)`

### Critical Principles

1. **No bare UIDs** — full filenames only
2. **No empty placeholders** — add when meaningful
3. **YAML is metadata** — real connections in content
4. **Lateral links delayed** — review phase only
5. **References 100% extracted** — perfect citation
6. **VERIFY MOC exists** — never invent MOCs
7. **Index links must match reality**
8. **NEVER link to imaginary notes**

### Templates (Canonical)

| Template | File | Use |
|----------|------|-----|
| Zettel | `Template_Zettel.md` | Standard zettel |
| LitNote | `Template_LitNote.md` | Source-to-zettel bridge |
| Daily | `Template_Daily.md` | Episodic continuity |
| Reference | `Template_Reference.md` | Citation hub |
| Inbox | `Template_Inbox.md` | Capture |
| MOC | `Template_MOC.md` | Map of Content |
| Synthesis | `Template_Synthesis.md` | Living document |

---

## Performance Tracking

**Purpose:** Log tokens, cost, outcomes to optimize routing.

**Logged per task:**
- timestamp, task_type, model
- tokens_in, tokens_out, cost_usd
- duration_sec, success, notes

**Location:** `memory/performance.jsonl` (append-only)

**Review:** Weekly — identify patterns, optimize routing.

---

## Related

- [[RON-Evergreen-Rules_RON-SYS-010]] — Rules from mistakes
- [[RON-Recent-Lessons_RON-SYS-011]] — Last 30 days of learning
- [[Weekly-Consolidation-Ritual_S-001-0012]] — Maintenance ritual
- [[CGPT_EXTRACTION_PROTOCOL_v2.0]] — Detailed extraction
