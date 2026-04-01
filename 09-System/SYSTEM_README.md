# TheOptimizedBrain — System Architecture v4.1

**Date:** 2026-02-22  
**Status:** ACTIVE — v4.1 migration complete  
**Philosophy:** Zettelkasten with conscious/subconscious workflow

---

## Philosophy

> "A Zettelkasten is not a filing system. It is a communication partner capable of surprising you with ideas you forgot you had." — Niklas Luhmann

This vault implements a **living knowledge architecture**:

1. **Zettels** — Atomic units (50-200 words) with quality gradient (conscious → subconscious)
2. **Synthesis** — Evolving documents aggregating zettels
3. **MOCs** — Maps of content for navigation

---

## v4.1 Folder Structure (Current)

```
TheOptimizedBrain/
│
├── 00-Inbox/                    ← Capture & fleeting notes
│   ├── Fleeting/               ← Quick captures (process 24-48h)
│   └── Future/                 ← Scheduled/deferred
│
├── 01-References/               ← Source management
│   ├── Hub/                    ← Bibliographic cards
│   ├── Zotero/                 ← Zotero sync
│   ├── Other/                  ← Non-academic sources
│   └── Assets/                 ← PDFs, images, data files
│       ├── PDFs/
│       ├── Images/
│       └── Data/
│
├── 02-Literature/               ← Literature notes (was 66b-LitNotes)
│   └── GutierrezRodelo_2017_[L-001-0001].md
│
├── 03-Zettels/                  ← THE CORE — Atomic knowledge
│   ├── Conscious/              ← Working zettels (reviewable)
│   │   └── Insulin_Receptor_[Z-001-0001].md (17 total)
│   └── Subconscious/           ← Permanent zettels (never modify)
│
├── 04-Synthesis/                ← Living documents
│   └── Insulin_Signaling_[S-001-0001].md
│
├── 05-Projects/                 ← Active work (top priority)
│   ├── AppProduction/          ← Triangle company
│   └── PhD/                    ← METHAP study
│
├── 06-Structure/                ← Navigation & organization
│   ├── Indexes/                ← Master indexes
│   ├── MOCs/                   ← 20 Maps of Content
│   │   ├── MOC-Clinical-Protocols.md ✅ (real content)
│   │   ├── MOC-Biomarkers.md 🏗️ (stub)
│   │   └── ... (18 more)
│   └── Templates/              ← 18 templates
│       └── Template_MOC_v1.0.md
│
├── 07-Archive/                  ← Legacy & deprecated
│   └── 77-Archive/
│       ├── 02-Atomic-Legacy/   ← 221 pre-v4.0 files
│       ├── Refs-Legacy/        ← 128 old references
│       ├── PHI_Quarantine/     ← Secure patient data
│       ├── Books/
│       └── Zotero/
│
├── 08-Dashboards/               ← Operations & tracking
│   ├── 00-COMMAND.md
│   ├── 01-QUEUE.md
│   ├── 02-HANDOFF.md
│   ├── 03-LOG.md
│   └── MISSION_CONTROL.md
│
├── 09-System/                   ← Documentation
│   ├── Architecture/
│   ├── Logs/                   ← Session logs, migration docs
│   ├── Migration/              ← v4.0/4.1 runbooks
│   ├── Philosophy/             ← Zettelkasten theory
│   └── Triangle/               ← Company docs
│
└── 10-Daily/                    ← Date-stamped logs
    └── 2026/
        └── 2026-02-22.md
```

---

## The Three Layers

### Layer 1: Zettels (03-Zettels/)

**What:** Atomic units of knowledge  
**Size:** 50-200 words  
**Lifespan:** Permanent

**Two states:**
- **Conscious/** — Working, reviewable, may have errors
- **Subconscious/** — Permanent, "ground truth," never modify

**Naming:** `Descriptive_Title_[Z-{DDD}-{SSSS}].md`

**YAML Standard:**
```yaml
---
uid: Z-001-0001
type: zettel
title: Insulin Receptor Structure
aliases: [Z-001-0001]
domain: 001
tags: [zettel, insulin, receptor, conscious]
parent-moc: [[MOC-Insulin-Signaling]]
status: conscious  # or subconscious
---
```

### Layer 2: Synthesis (04-Synthesis/)

**What:** Living documents aggregating zettels  
**Size:** 500-1500 words  
**Lifespan:** Evolving

**Naming:** `Topic_[S-{DDD}-{SSSS}].md`

**Purpose:**
- Aggregate zettels by topic
- Track source evolution
- Link to clinical applications

### Layer 3: MOCs (06-Structure/MOCs/)

**What:** Maps of content — navigation hubs  
**Naming:** `MOC-Topic.md`

**Three types:**
- ✅ **Real** — Has actual content (MOC-Clinical-Protocols)
- 🏗️ **Stub** — Planned, empty now (MOC-Biomarkers)
- 📦 **Archived** — Legacy content to migrate

---

## Workflow

### New Source → Zettel

```
Source (PubMed/Telegram)
    ↓
00-Inbox/Fleeting/ (capture)
    ↓
01-References/Hub/ (bibliographic)
    ↓
02-Literature/ (process & extract)
    ↓
03-Zettels/Conscious/ (atomic zettel, status: conscious)
    ↓
[30 days + review]
    ↓
03-Zettels/Subconscious/ (promoted, status: subconscious)
    ↓
04-Synthesis/ (aggregated knowledge)
    ↓
06-Structure/MOCs/ (navigation)
```

---

## UID System v2.0

**Format:** `{T}-{DDD}-{SSSS}`

| Component | Meaning | Example |
|-----------|---------|---------|
| **T** | Type | Z=Zettel, S=Synthesis, L=LitNote, R=Reference |
| **DDD** | Domain | 001=Insulin, 101=Adipic Acid |
| **SSSS** | Sequence | 0001, 0002, ... |

**Domains defined:**
- 001: Insulin Signaling
- 01-10: Folder structure (00=Inbox, 01=References, etc.)

**Full UID:** `Z-001-0001` = Zettel, Domain 001 (Insulin), #1

---

## Naming Convention

| Type | Pattern | Example |
|------|---------|---------|
| Zettel | `{Title}_[Z-{DDD}-{SSSS}].md` | `Insulin_Receptor_[Z-001-0001].md` |
| Synthesis | `{Topic}_[S-{DDD}-{SSSS}].md` | `Insulin_Signaling_[S-001-0001].md` |
| LitNote | `{Author}_{Year}_{Topic}_[L-{DDD}-{SSSS}].md` | `GutierrezRodelo_2017_IR_[L-001-0001].md` |
| MOC | `MOC-{Topic}.md` | `MOC-Clinical-Protocols.md` |

---

## Migration History

### v3.0 → v4.0 (2026-02-22)
- 61 files migrated
- Sequential 00-09 structure
- Conscious/subconscious workflow

### v4.0 → v4.1 (User-refined)
- Simplified subfolder names (removed 01a/01b/01c prefixes)
- Swapped 05-Projects and 06-Structure
- Added 00-Inbox/Fleeting/Future
- Renumbered dashboards to 08-

**Legacy archived:** `07-Archive/77-Archive/`

---

## Current State (2026-02-22)

| Component | Count | Location | Status |
|-----------|-------|----------|--------|
| **Zettels** | 17 | 03-Zettels/Conscious/ | ✅ Active |
| **MOCs** | 20 | 06-Structure/MOCs/ | ✅ 1 real, 19 stubs/archived |
| **Synthesis** | 1 | 04-Synthesis/ | ✅ Active |
| **LitNotes** | 1 | 02-Literature/ | ✅ Active |
| **Templates** | 18 | 06-Structure/Templates/ | ✅ Ready |
| **Projects** | 2 | 05-Projects/ | ✅ Active |

---

## Key Documents

| Document | Location | Purpose |
|----------|----------|---------|
| UID rules | `09-System/UID_SYSTEM_v2.0.md` | Domain codes |
| MOC template | `06-Structure/Templates/Template_MOC_v1.0.md` | Standard structure |
| Philosophy | `09-System/Philosophy/ZETTELKASTEN_PHILOSOPHY.md` | Theory |
| Assessment | `09-System/CEO_STRATEGIC_ASSESSMENT_20260222.md` | Strategic plan |

---

## Next Steps (Production Sprint)

1. **Week 1:** Daily zettel creation (insulin → adipic acid)
2. **Week 2:** 10 GOLD refs extraction (Triangle P0)
3. **Week 3:** IRB Section 1 draft (PhD P0)
4. **Week 4:** First subconscious promotion review

---

## Contact

**CEO:** Simos  
**AI-BOSS:** RON  
**Workforce:** Triangle Agent Fleet  
**Dashboard:** localhost:4444  
**Vault:** Obsidian + Git

---

*System v4.1 — User-refined, production-ready, mission-aligned*
