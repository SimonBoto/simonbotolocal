---
uid: 20260414171001
type: readme
title: "03-Zettels — README"
date: 2026-04-14
aliases: [Zettels-README, Zettelkasten-Guide, Atomic-Knowledge-README]
tags: [readme, zettels, zettelkasten, atomic-knowledge, guide]
parent-index: "[[03-Zettels-Index]]"
status: active
---

# 03-Zettels — README

> **Atomic knowledge — permanent, connected, compounding. The heart of the Zettelkasten.**

---

## Purpose

Zettels are **atomic notes** — each contains one idea, one concept, one insight.

They are:
- **Atomic** — Indivisible, focused, single-purpose
- **Permanent** — Written for future you, not just today
- **Connected** — Linked to related ideas (lateral thinking)
- **Sourced** — Grounded in literature, not speculation

---

## Folder Structure

```
03-Zettels/
├── 03-Zettels-Index.md           # Navigation hub
├── 03-Zettels-README.md          # This file
│
├── Conscious/                     # Working zettels (reviewable)
│   ├── [1,100+ zettels]
│   └── Status: conscious (can evolve)
│
├── Subconscious/                  # Permanent zettels (frozen)
│   └── Status: subconscious (never modify)
│
├── RON/                          # RON system notes
│   ├── RON-Evergreen-Rules_RON-SYS-010.md
│   ├── RON-Recent-Lessons_RON-SYS-011.md
│   └── [self-improvement zettels]
│
├── Biomarkers/                   # Biomarker reference guides
│   └── [clinical biomarkers]
│
└── Supplements/                  # Supplement reference guides
    └── [supplement protocols]
```

---

## Zettel Lifecycle

```
Source (LitNote)
    ↓
03-Zettels/Conscious/   ← Working, reviewable
    ↓
[30 days + review]
    ↓
03-Zettels/Subconscious/ ← Permanent, frozen
    ↓
04-Synthesis/           ← Higher-order knowledge
```

**Promotion criteria:**
- Stable (no edits for 30+ days)
- Well-connected (2+ semantic links)
- Referenced in synthesis
- You (Simos) approve

---

## Naming Convention

**Files:** `Descriptive_Title_Z-XXX-XXXX.md`

| Component | Meaning | Example |
|-----------|---------|---------|
| **Z** | Zettel type | Z = standard |
| **XXX** | Domain | 001=Insulin, 101=Pharma, 901=System |
| **XXXX** | Sequence | 0001, 0002... |

**Examples:**
- `Insulin_Receptor_Structure_Z-001-0001.md`
- `BHB_Production_Fatty_Acids_Z-001-1256.md`

---

## Required YAML

```yaml
---
uid: Z-001-0001
type: zettel
title: "Full Title Z-001-0001"
date: 2026-04-14
aliases: [Z-001-0001, Short-Name]
domain: 001
tags: [zettel, insulin, conscious]
parent-index: "[[03-Zettels-Conscious]]"
parent-moc: "[[MOC-Topic]]"
source: "[[LitNote_Source_L-001-0001]]"
status: conscious
---
```

---

## Linking Rules

### Structural Links (Navigation)
- `parent-index:` — Folder location
- `parent-moc:` — Thematic entry point

### Semantic Links (Thinking)
- `related:` — Content connections
- Inline `[[Zettel_Name]]` — Flow narrative

**CRITICAL:** Use full filenames, not bare UIDs.

| ❌ Wrong | ✅ Correct |
|----------|------------|
| `[[Insulin_Receptor_Structure_Z-001-0001]]` | `[[Insulin_Receptor_Z-001-0001]]` |

---

## Quality Standards

| Criterion | Good Zettel | Bad Zettel |
|-----------|-------------|------------|
| **Atomic** | One idea, focused | Multiple topics, rambling |
| **Sourced** | Cites LitNote/Reference | Unsourced speculation |
| **Connected** | 2+ related links | Isolated, no connections |
| **Permanent** | Timeless, reusable | Ephemeral, dated |
| **Clear** | Readable in 2 minutes | Dense, jargon-heavy |

---

## How to Create a Zettel

1. **Source first** — Start from LitNote, not blank page
2. **QMD check** — `qmd query "topic" -c zettels` (avoid duplicates)
3. **Draft** — One idea, clear prose
4. **Link** — Add 2-3 semantic connections
5. **Review** — RON validates before promotion

---

## Rules

1. **Never modify Subconscious/** — Permanent layer
2. **Always source** — No unsourced zettels
3. **Link before filing** — Orphans break the system
4. **Use full filenames** — Bare UIDs create ghosts
5. **Review before promotion** — Conscious → Subconscious is final

---

## Cross-References

- **Sources:** [[01-Literature-README]] — Where zettels come from
- **Synthesis:** [[04-Synthesis-README]] — Where zettels lead
- **Method:** [[MOC-Zettelkasten-Method]] — How the system works

---

*Created 2026-04-14 — The atomic knowledge layer*
