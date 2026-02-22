# TheOptimizedBrain Vault Structure v4.1
## Official Architecture (Updated 2026-02-22)

**Version:** 4.1  
**Status:** ACTIVE  
**Changes:** User-modified from v4.0 (simplified naming, swapped 05/06)

---

## 00-Inbox/ — Input Capture

**Purpose:** Fleeting notes, raw captures, temporary storage

**Subfolders:**
- **Fleeting/** — Quick thoughts, temporary notes (process within 24-48h)
- **Future/** — Scheduled items, deferred work

**Rules:**
- Process and delete/move within 48 hours
- Never leave notes here permanently

---

## 01-References/ — Source Management

**Purpose:** Bibliographic cards, source tracking

**Subfolders:**
- **Hub/** — Bibliographic cards (was 01a-Hub)
- **Other/** — Non-academic sources (was 01c-Other)
- **Zotero/** — Zotero integration (was 01b-Zotero)

---

## 02-Literature/ — Source Processing

**Purpose:** Literature notes, extracted content from sources

**Naming:** `Author_Year_Topic_[L-{DDD}-{SSSS}].md`

**Contents:**
- Reformulated source content
- Quotes with context
- Extraction ready for zettels

---

## 03-Zettels/ — Atomic Knowledge

**Purpose:** Permanent atomic notes (Zettelkasten)

**Subfolders:**
- **Conscious/** — Working zettels, under review (was 03a-)
- **Subconscious/** — Permanent, never modify (was 03b-)

**Specs:**
- 50-200 words
- One idea per zettel
- 2-5 links to other zettels
- Status field in YAML

---

## 04-Synthesis/ — Living Documents

**Purpose:** Evolving knowledge synthesis

**Contents:**
- Aggregates zettels by topic
- Tracks source evolution
- Links to clinical applications

**Naming:** `Topic_Synthesis_[S-{DDD}-{SSSS}].md`

---

## 05-Projects/ — Active Work

**Purpose:** Writing projects, deliverables

**Current Contents:**
- **AppProduction/** — Triangle company infrastructure
- **PhD/** — Doctoral work

**Rules:**
- Ephemeral (can delete after completion)
- Assembled from zettels
- Not permanent knowledge

---

## 06-Structure/ — Navigation & Templates

**Purpose:** Organization, templates, navigation

**SWAPPED from 05-Structure in v4.0**

**Subfolders:**
- **Indexes/** — Master indexes, A-Z
- **MOCs/** — Maps of Content (25 MOCs)
- **Templates/** — All note templates

---

## 07-Archive/ — Legacy & Deprecated

**Purpose:** Historical storage, backups

**Contents:**
- 02-Atomic-Legacy/ (221 pre-v4.0 files)
- Refs-Legacy/ (128 historical refs)
- PHI_Quarantine/ (secure)
- Books/
- Zotero/

---

## 08-Dashboards/ — Status & Operations

**Purpose:** System dashboards, operations

**RENUMBERED from 06-Dashboards in v4.0**

**Contents:**
- 00-COMMAND.md
- 01-QUEUE.md
- 02-HANDOFF.md
- 03-LOG.md
- MISSION_CONTROL.md
- etc.

---

## 09-System/ — Documentation

**Purpose:** System docs, architecture, philosophy

**Contents:**
- Architecture/ — Design docs
- Logs/ — Session logs, migration docs
- Migration/ — v4.0 migration runbooks
- Philosophy/ — Zettelkasten theory
- Triangle/ — Triangle company docs

---

## Changes from v4.0

| v4.0 | v4.1 (Current) | Rationale |
|------|----------------|-----------|
| 01a, 01b, 01c prefixes | Hub, Other, Zotero | Cleaner, simpler |
| 02-LiteratureNotes | 02-Literature | Shorter |
| 03a, 03b prefixes | Conscious, Subconscious | Cleaner |
| 05-Structure/ | 06-Structure/ | Swapped with Projects |
| 05d-Projects in Structure | 05-Projects/ standalone | Projects deserve top level |
| 06-Dashboards | 08-Dashboards | Renumbered post-swap |
| 00-Inbox flat | 00-Inbox/Fleeting, Future | Better organization |

---

## File Locations (Quick Reference)

| Type | Location | Example |
|------|----------|---------|
| Zettels | 03-Zettels/Conscious/ | `Insulin_Receptor_[Z-001-0001].md` |
| MOCs | 06-Structure/MOCs/ | `MOC-001.md` |
| Templates | 06-Structure/Templates/ | `Template_Zettel_v4.0.md` |
| Projects | 05-Projects/ | `PhD/` |
| LitNotes | 02-Literature/ | `GutierrezRodelo_2017_[L-001-0001].md` |
| Synthesis | 04-Synthesis/ | `Insulin_Signaling_[S-001-0001].md` |
| Dashboards | 08-Dashboards/ | `00-COMMAND.md` |

---

## Migration Status

**v4.0 → v4.1:** Complete  
**All files:** Relocated to new structure  
**Documentation:** Updated  
**Status:** ✅ OPERATIONAL

---

*Last updated: 2026-02-22*  
*Structure owner: Simos*  
*Maintained by: RON*
