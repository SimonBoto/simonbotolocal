# TheOptimizedBrain — System Architecture v3.0

**Date:** 2026-02-22  
**Status:** ACTIVE — Clean slate reset complete

---

## Philosophy

> "A Zettelkasten is not a filing system. It is a communication partner capable of surprising you with ideas you forgot you had." — Niklas Luhmann

This vault implements a **three-layer knowledge architecture**:

1. **Zettels** — Atomic knowledge units (50-200 words)
2. **TechRefs** — Living technical references (evolving synthesis)
3. **MOCs** — Maps of content (navigation hubs)

---

## Folder Structure

```
TheOptimizedBrain/
│
├── 00-Inbox/                    ← Fleeting notes (process & delete)
│
├── 01-Projects/                 ← Writing projects (ephemeral)
│
├── 03-Zettels/03a-Conscious/                  ← ATOMIC KNOWLEDGE (permanent)
│   └── Insulin_Receptor_[Z-001-0001].md
│
├── 05-Structure/05b-MOCs/                     ← NAVIGATION HUBS
│   └── MOC-001.md (Insulin Signaling)
│
├── 66-Literature/
│   ├── 66a-StaticRefs/          ← Bibliographic cards (static)
│   ├── 66b-LitNotes/            ← Source processing (extract & archive)
│   └── 66c-TechRefs/            ← LIVING REFERENCES (evolving)
│       └── Insulin_Signaling_TechRef_[T-001-0001].md
│
├── 05-Structure/05a-Templates/                ← All templates
│
├── 77-Archive/                  ← Legacy & deprecated
│   └── Legacy_20260222/
│       ├── 02-Atomic-Legacy/    ← Old atomics (archived)
│       └── Refs-Legacy/         ← Old refs (archived)
│
└── 99-System/                   ← Documentation
    └── UID_SYSTEM_v2.0.md       ← UID rules & domain codes
```

---

## The Three Layers

### Layer 1: Zettels (03-Zettels/03a-Conscious/)

**What:** Atomic units of knowledge  
**Size:** 50-200 words  
**Lifespan:** Permanent  
**Naming:** `Descriptive_Title_[Z-{DDD}-{SSSS}].md`

**Rules:**
- One idea per zettel
- 2-5 links to other zettels (optimal: 3)
- Must have `parent-moc:` in YAML
- Written "as if for print"

**Example:**
```markdown
---
uid: Z-001-0001
type: zettel
title: Insulin Receptor Structure
aliases: [Z-001-0001]
domain: 001
tags: [zettel, insulin, receptor]
parent-moc: [[MOC-001]]
---

# Insulin Receptor Structure

The insulin receptor is a tetrameric tyrosine kinase...

## Links
- [[IRS_Protein_Recruitment_[Z-001-0005]]]
- [[INSR_Autophosphorylation_[Z-001-0003]]]
```

---

### Layer 2: TechRefs (04-Synthesis/)

**What:** Living technical references  
**Size:** 500-1500 words  
**Lifespan:** Evolving (updated as research progresses)  
**Naming:** `{Topic}_TechRef_[T-{DDD}-{SSSS}].md`

**Purpose:**
- Start as Zotero skeleton
- Grow with literature notes from multiple sources
- Catalog extracted zettels
- Track "source evolution" (how understanding changed)
- Link to clinical applications

**Example:** See `Insulin_Signaling_TechRef_[T-001-0001].md`

---

### Layer 3: MOCs (05-Structure/05b-MOCs/)

**What:** Maps of content — navigation hubs  
**Naming:** `MOC-{DDD}.md`

**Purpose:**
- Entry points for domains
- Catalog zettels in the domain
- Show relationships
- Link to TechRefs

---

## Workflow

### New Source → Zettel

```
Source (PubMed)
    ↓
66a-StaticRefs/ (bibliographic hub)
    ↓
66b-LitNotes/ (process & extract)
    ↓
03-Zettels/03a-Conscious/ (atomic zettels created)
    ↓
66c-TechRefs/ (synthesis updated)
    ↓
05-Structure/05b-MOCs/ (navigation updated)
```

### Daily Operation

1. **Capture** → 00-Inbox/ (fleeting)
2. **Process** → 66b-LitNotes/ (literature note)
3. **Extract** → 03-Zettels/03a-Conscious/ (zettels)
4. **Synthesize** → 66c-TechRefs/ (living reference)
5. **Navigate** → 05-Structure/05b-MOCs/ (find & connect)

---

## UID System

**Format:** `{T}-{DDD}-{SSSS}`

| Component | Meaning | Example |
|-----------|---------|---------|
| T | Type | Z=Zettel, T=TechRef, L=LitNote |
| DDD | Domain | 001=Insulin, 101=Adipic Acid |
| SSSS | Sequence | 0001, 0002, ... |

**Full UID:** `Z-001-0001` = Zettel, Domain 001 (Insulin), #1

**Domains:** See `99-System/UID_SYSTEM_v2.0.md`

---

## Naming Convention

| Type | Pattern | Example |
|------|---------|---------|
| Zettel | `{Title}_[Z-{DDD}-{SSSS}].md` | `Insulin_Receptor_[Z-001-0001].md` |
| TechRef | `{Topic}_TechRef_[T-{DDD}-{SSSS}].md` | `Insulin_Signaling_TechRef_[T-001-0001].md` |
| LitNote | `{Author}{Year}_{Topic}_[L-{DDD}-{SSSS}].md` | `GutierrezRodelo2017_IR_[L-001-0001].md` |
| MOC | `MOC-{DDD}.md` | `MOC-001.md` |

---

## Legacy Archive

**Previous system archived:** `77-Archive/Legacy_20260222/`

Contents:
- `02-Atomic-Legacy/` — 221 old atomics (composite notes)
- `Refs-Legacy/` — 128 old references

**Nothing is lost.** Git preserves all history. But we start fresh with intention.

---

## Current State (2026-02-22)

| Component | Count | Status |
|-----------|-------|--------|
| Zettels | 17 | ✅ Active (insulin cascade) |
| TechRefs | 0 | 🟡 Ready to create |
| LitNotes | 1 | ✅ Active |
| MOCs | 1 | ✅ Active |
| Domains | 1 | 001 (Insulin) defined |

---

## Next Steps

1. Create first TechRef (`Insulin_Signaling_TechRef_[T-001-0001].md`)
2. Define more domain codes (Adipic=101, VitD=110, etc.)
3. Extract zettels from next paper
4. Build out MOC-001 with all 17 zettels

---

## Key Documents

- `99-System/UID_SYSTEM_v2.0.md` — UID rules & domain registry
- `05-Structure/05a-Templates/Template_Zettel_v2.0.md` — Zettel template
- `99-System/Philosophy/ZETTELKASTEN_PHILOSOPHY.md` — Philosophical foundations
- `ZETTEL_ARCHITECTURE_DESIGN.md` — Detailed architecture

---

*System v3.0 — Clean slate, intentional architecture*
