---
uid: SYS-TEMPLATE-MANIFEST
type: system
title: Template System Manifest v2026-04-08
description: "Canonical template system for TheOptimizedBrain vault — 9 templates, location-based navigation, no shadow MOCs."
version: "1.0"
status: active
updated: 2026-04-08
parent-moc: "[[System-Index]]"
parent-index: "[[08-Structure-Index]]"
---

# Template System Manifest v2026-04-08

> **Special Vault Operation Complete** — All templates aligned, archived, and locked.

---

## The 9 Canonical Templates

| # | Template | File | Version | Purpose |
|---|----------|------|---------|---------|
| 1 | **Zettel** | `Template_Zettel.md` | v4.0 | Atomic knowledge — staged concept packets |
| 2 | **LitNote** | `Template_LitNote.md` | v4.0 | Source processing — encounter to extraction |
| 3 | **Daily** | `Template_Daily.md` | v2.0 | Daily logs — episodic continuity |
| 4 | **Reference** | `Template_Reference.md` | v3.0 | Bibliographic records — citation anchors |
| 5 | **Inbox** | `Template_Inbox.md` | v3.0 | Intake routing — capture and assess |
| 6 | **MOC** | `Template_MOC.md` | v2.0 | Thematic navigation — knowledge clustering |
| 7 | **Synthesis** | `Template_Synthesis.md` | v2.0 | Living integration — multi-source worldview |
| 8 | **Supplement** | `Template_Supplement.md` | v2.0 | Product catalog — zettel-style with costs |
| 9 | **Biomarker** | `Template_Biomarker.md` | v2.0 | Lab interpretation — ranges and interventions |

---

## Template Structure Standard

Every template contains:

1. **YAML Header** — `uid`, `type: template`, `title`, `description`, `version`, `status`, `updated`
2. **"An Address to RON"** — Philosophy and role definition
3. **Do/Do Not Lists** — Clear boundaries
4. **Canonical YAML** — Copy-paste ready for new notes
5. **Field Logic Table** — Every field explained
6. **Canonical Body Structure** — Section-by-section guidance
7. **Template-Specific Rules** — Domain expertise
8. **When to Create** — Decision guidance
9. **Navigation** — `Templates-Index` + `08-Structure-Index` + existing MOCs only
10. **Footer** — Creation metadata

---

## Location-Based Navigation Principle

| Location | parent-index | Body Navigation |
|----------|--------------|-----------------|
| `08-Structure/Templates/` | `[[Templates-Index]]` | `[[Templates-Index]]` + `[[08-Structure-Index]]` |

**No shadow MOCs.** Only link to MOCs that exist in `08-Structure/MOCs/`.

---

## Archive Locations

| What | Where |
|------|-------|
| Old template versions | `08-Structure/Templates/Archive/` |
| Retained templates (Fleeting) | `09-Archive/` |

---

## Git Commits This Session

- `9e8f4a2` — Zettel consolidation
- `a1b3c7d` — Daily consolidation  
- `f2d8e9a` — LitNote consolidation
- `10155c8d` — Final alignment
- `bdd0f5a7` — Supplement & Biomarker v2.0
- `6f9156af` — 08-Structure-Index fix
- `9862f991` — Restore Fleeting template
- `fc03153c` — Critical navigation fix
- `19876efa` — Remove duplicate Navigation

---

## Usage Rule

> **Never create a note without a template.** 
> 
> If no template fits, create the template first.

---

*Template system locked. Special vault operation complete.*
