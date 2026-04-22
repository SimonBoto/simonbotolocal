---
uid: VAULT-GUIDE-001
type: reference
title: "Vault Guide"
date: 2026-04-22
tags: [reference, vault, structure, naming]
parent-index: [[08-Structure-Index]]
---

# VAULT-GUIDE.md — Vault Structure & Standards

> **Quick Start:** New file → Check naming convention → Use template → Validate → Commit
> **Extended docs:** [[TOOLS-REFERENCE.md]] — Git protocol, validation commands, batch processing

**Vault:** TheOptimizedBrain v4.1
**Path:** `/home/simon/Workspaces/TheOptimizedBrain/`

---

## 🏛️ Structure

```
TheOptimizedBrain/
├── 00-Inbox/                    ← Capture (Fleeting/, Future/)
├── 01-Literature/               ← Literature notes (processed sources)
├── 02-References/               ← Scientific references (Hub/, Zotero/, Other/, Assets/)
├── 03-Zettels/                  ← 🧠 Atomic knowledge
│   ├── Biomarkers/
│   ├── Conscious/
│   ├── RON/
│   ├── Subconscious/
│   └── Supplements/
├── 04-Synthesis/                ← Living documents
├── 07-Projects/                 ← Active work (fascia + muscle)
│   ├── Agents/                  ← Agent configs
│   ├── Clinic/                  ← Clinical operations
│   ├── Operations/              ← Rituals, checklists, tracking
│   ├── Personal/                ← Personal projects
│   ├── PhD/                     ← PhD research
│   ├── Skills/                  ← Reusable capabilities
│   ├── Standards/               ← Rules and protocols
│   └── Tools/                   ← Configs & scripts
├── 08-Structure/                ← System infrastructure (skeleton)
│   ├── Daily/                   ← History (auto-synced)
│   ├── Dashboards/              ← Core state (4 dashboards)
│   ├── Issues/                  ← Work tracking
│   ├── MOCs/                    ← Knowledge maps
│   ├── System/                  ← Reference docs
│   └── Templates/               ← Note templates
└── 09-Archive/                  ← Waste (single flat folder)
```

**Root entry:** `00-INDEX.md` — Master Navigation Hub

---

## 🆔 UID System v2.0

**Format:** `{T}-{DDD}-{SSSS}`

| Component | Meaning | Example |
|-----------|---------|---------|
| **T** | Type | Z=Zettel, S=Synthesis, L=LitNote |
| **DDD** | Domain | 001=Insulin, 101=Adipic Acid |
| **SSSS** | Sequence | 0001, 0002... |

**Domains:**

| Domain | Topic | Status |
|--------|-------|--------|
| 001 | Insulin signaling, IR mechanisms | Active |
| 002-100 | Reserved for future metabolic domains | — |
| 101 | Pharmacometabolomics, drug mechanisms | Active |
| 102-900 | Reserved for expansion | — |
| 901-999 | System/meta (RON self-reference) | — |
| **RON-SYS** | RON self-improvement, protocols, system | Active |

**Assignment authority:** You assign new domains. I track in MEMORY.md domain table.

---

## 📝 Naming Convention

| Type | Pattern | Example | Template |
|------|---------|---------|----------|
| **Zettel** | `Title_Z-XXX-XXXX.md` | `Insulin_Receptor_Z-001-0001.md` | Template_Zettel_v2.0.md |
| **Synthesis** | `Topic_S-XXX-XXXX.md` | `Insulin_Signaling_Synthesis_S-001-0001.md` | — |
| **LitNote** | `Author_Year_L-XXX-XXXX.md` | `GutierrezRodelo_2017_L-001-0001.md` | Template_LitNote_v3.0.md |
| **MOC** | `MOC-Topic.md` | `MOC-Clinical-Protocols.md` | Template_MOC_v1.0.md |
| **RON System** | `RON-Topic_RON-SYS-XXXX.md` | `RON-Learning-Protocol_RON-SYS-001.md` | RON/ folder |

**Naming rules:**
- Use underscores `_` not spaces
- Use hyphens `-` in titles (kebab-case)
- Always include full UID in filename
- Never use special characters: `!@#$%^&*()+=[]{}|\:;"'<>.,?/`

---

## 📋 YAML Standard

```yaml
---
uid: Z-001-0001
type: zettel
title: Full Title
date: 2026-04-03
aliases: [Z-001-0001]
domain: 001
tags: [zettel, insulin, conscious]
# Structural links (navigation)
parent-index: [[03-Zettels-Conscious]]
parent-moc: [[MOC-Insulin-Signaling]]
# Semantic links (thinking) — add during review
related: []
status: conscious
---
```

**Critical:** Use **kebab-case** for `parent-moc`, `parent-index`, `extraction-date`

**YAML validation:**
```bash
# Check YAML is valid
head -20 file.md | yq eval '.' -
# Should parse without errors
```

---

## 🔄 Workflow

```
Source → 00-Inbox/Fleeting/ → 01-References/Hub/
    ↓
02-Literature/ → 03-Zettels/Conscious/ (status: conscious)
    ↓
[30 days + review] → 03-Zettels/Subconscious/ (status: subconscious)
    ↓
04-Synthesis/ → 08-Structure/MOCs/
```

**Iteration:** Workflow loops back — new sources connect to existing zettels, synthesis reveals gaps → new sources.

**30-Day Review:**
- **Who reviews:** You (or prompt me: "review zettels for promotion")
- **Criteria:** Stable, well-connected, no recent edits, referenced in synthesis
- **My role:** Flag candidates in daily notes, you decide promotion

---

## 📁 Templates

**Location:** `08-Structure/Templates/`

### Template Chooser (Quick Pick)

| Input Size | Path | Template |
|------------|------|----------|
| **Single quote/idea** | Inbox → **Direct Zettel** | `Template_Zettel_Direct_v1.0.md` |
| **Article** | Inbox → LitNote → 2-5 Zettels | `Template_LitNote_Zettelkasten_v1.0.md` |
| **Review paper** | Inbox → LitNote → 5-15 Zettels | `Template_LitNote_Scalable_v1.0.md` |
| **Book** | Inbox → LitNote per chapter | `Template_LitNote_Scalable_v1.0.md` (split) |
| **Conversation** | Inbox → Zettel(s) | `Template_Zettel_Direct_v1.0.md` or standard |
| **Not sure?** | Start with | `Template_Inbox_Adaptive_v1.0.md` |

**Decision rule:** Size determines path. When in doubt, start with Inbox Adaptive.

---

## 🔗 Connections

| Need | Go To |
|------|-------|
| **Identity, mission** | [[SOUL.md]] |
| **Session startup** | [[AGENTS.md]] |
| **Procedures, rituals** | [[OPERATING-MANUAL.md]] |
| **Curated memory** | [[MEMORY.md]] |
| **Local tool notes** | [[TOOLS.md]] |
| **Agent specs** | [[07-Projects/Agents/Agent-Architecture.md]] |
| **Git protocol** | [[TOOLS-REFERENCE.md]] |
| **Weekly ritual** | [[07-Projects/Operations/Weekly-Consolidation-Ritual.md]] |

---

_Last updated: 2026-04-22 (v1.0 — extracted from TOOLS.md, aligned with 07-Projects restructure)_
