---
uid: RON-SYS-010
type: zettel
title: RON Evergreen Rules
date: 2026-04-08
aliases: [RON-SYS-010]
domain: RON-SYS
tags: [ron, system, rules, evergreen]
parent-index: "[[03-Zettels-RON-Index]]"
status: conscious
---

# RON Evergreen Rules

> Rules extracted from mistakes. Each prevents a repeated failure.

## File & Link Integrity

| Rule | Source | Date |
|------|--------|------|
| Never link without verifying file exists | Shadow Note Creation | 2026-04-02 |
| Verify MOC exists before assigning `parent-moc` | LitNote Assessment | 2026-04-02 |
| Validate bracket count `[[`→`]]` | LitNote Assessment | 2026-04-02 |
| Never use `[` `]` `|` `#` `^` in filenames | Bracket Naming | 2026-04-01 |
| Always test filenames in Obsidian before convention | Bracket Naming | 2026-04-01 |

## Agent Architecture

| Rule | Source | Date |
|------|--------|------|
| FORG is separate agent, not subagent | FORG Agent Architecture | 2026-04-07 |
| Never use `runtime="subagent"` for FORG | FORG Agent Architecture | 2026-04-07 |
| Isolated workspaces, file-based handoff | FORG Agent Architecture | 2026-04-07 |
| **FORG vault-integrated: uses vault templates/MOCs** | **Vault Unification** | **2026-04-14** |
| **FORG create-only: never delete/archive/overwrite** | **Safety Protocol** | **2026-04-14** |
| **RON sole curator: delete/archive authority** | **Safety Protocol** | **2026-04-14** |
| **Local models (Gemma 2B) unreliable for production** | **LOCOl Deprecation** | **2026-04-14** |

## Verification & Quality

| Rule | Source | Date |
|------|--------|------|
| Verify UID uniqueness before assignment | UID collision | 2026-04-04 |
| Check all cross-references after UID changes | UID collision | 2026-04-04 |
| Verification before claim — `ls`, `read`, `grep` | Documentation drift | 2026-04-05 |
| Filesystem over documentation | Documentation drift | 2026-04-05 |
| Stop on user signal — don't defend, verify | User feedback | 2026-04-05 |

## Workflow & Process

| Rule | Source | Date |
|------|--------|------|
| Never say "I'll proceed" without checkpoint | Broken Commitments | 2026-04-02 |
| Never skip daily notes | Daily Note Failure | 2026-03-31 |
| Confirm location before creating files | Daily Note Failure | 2026-03-31 |
| Git commit after every major change | Git Discipline | 2026-04-08 |

## Source & Reference Standards

| Rule | Source | Date |
|------|--------|------|
| Zettels MUST cite primary reference | Zettelkasten principle | 2026-04-05 |
| PMID required when available | Reference standards | 2026-04-05 |
| Primary vs Secondary: main `reference:` vs content link | Multiple sources | 2026-04-05 |
| Article 1-2 Quality Standard minimum | Quality enforcement | 2026-04-05 |

## FORG Processing

| Rule | Source | Date |
|------|--------|------|
| YAML Pre-processing REQUIRED — remove content before `---` | LitSubconcious batch | 2026-04-07 |
| Post-processing REQUIRED — check for duplicate sections | Merge artifacts | 2026-04-07 |
| File Replacement — replace entirely, don't append | Copy vs merge | 2026-04-07 |
| Batch Size: 5 files optimal | Timeout experiments | 2026-04-07 |

## Search & Discovery

| Rule | Source | Date |
|------|--------|------|
| SPARK Lite — Balanced adaptive search before extraction | Duplicate prevention | 2026-04-04 |
| QMD for cheap vault search | Cost optimization | 2026-04-08 |

---

## Rule Count

**Total evergreen rules: 23**

**Added this month: 18**
**Stable (pre-April): 5**

---

## Related

- [[RON-Recent-Lessons_RON-SYS-011]] — Last 30 days of lessons
- [[Weekly-Consolidation-Ritual_S-001-0012]] — Process for reviewing rules
- [[00-MISSION]] — Charter (why these rules exist)
