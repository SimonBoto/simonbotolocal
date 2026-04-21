---
date: 2026-04-04
type: consolidated
status: active
---

# PROTOCOLS.md — Extraction & Processing Methods

> All extraction workflows and source handling in one place.
>
> **Previously:** 4 separate files in protocols/ folder
> **Now:** Consolidated with preserved content

---

## Section 1: Extraction Protocol Index

### Protocols by Source Type

| Protocol | Source | Status | Key Features |
|----------|--------|--------|--------------|
| **CGPT-Archive** | ChatGPT conversations | Active | Conversation → LitNote → Zettels |
| **X-Posts** | Twitter/X posts | Active | Post + image → Zettels, image assets |
| **Clinic-Articles** | Online clinical articles | Active | Article → LitNote → Zettels |
| **FB-Posts** | Facebook health posts | **In Progress** | Greek→English, ref-first, web-enhanced |
| **Scientific-Papers** | PDF papers | Active | Paper → LitNote → Zettels |
| **Books** | Book chapters | Active | Chapter → LitNote → Zettels |

### Common Elements (All Protocols)

1. **SPARK Lite** — Pre-extraction vault search (L1+L2+L3)
2. **Reference Hub** — Deduplicated citations in `02-References/Hub/`
3. **Validation** — `vault-validate.sh` before creation
4. **YAML Standard** — Consistent frontmatter
5. **Git Commit** — Per batch checkpoint

### Source-Specific Differences

| Aspect | CGPT | X-Posts | Clinic | FB-Posts |
|--------|------|---------|--------|----------|
| **Language** | English | English | English | **Greek→English** |
| **Images** | No | **Yes** (saved to Assets) | Sometimes | No |
| **References** | Inline | Minimal | Standard | **Extract-first, web-enhance** |
| **Priority** | P1 (batch weekly) | P0 (daily 1-2) | P1 | **P0-P2 (batch)** |
| **Translation needed** | No | No | No | **Yes** |
| **Web search** | Rare | No | Sometimes | **Mandatory for refs** |

---

## Section 2: CGPT Archive Protocol

### Workflow

```
ChatGPT Conversation
    ↓
Size Assessment (1-10-100 rule)
    ↓
LitNote (1 per conversation)
    ↓
Zettels (N atomic notes)
    ↓
References (100% extraction)
    ↓
Git Commit
```

### Size Assessment

| Input Size | Path | Template |
|------------|------|----------|
| Single quote/idea | Direct Zettel | Template_Zettel_Direct |
| Article | LitNote → 2-5 Zettels | Template_LitNote_Zettelkasten |
| Review paper | LitNote → 5-15 Zettels | Template_LitNote_Scalable |
| Book | LitNote per chapter | Template_LitNote_Scalable (split) |

### Critical Principles

1. **No bare UIDs** — full filenames only
2. **No empty placeholders** — add when meaningful
3. **YAML is metadata** — real connections in content
4. **Lateral links delayed** — review phase only
5. **References 100% extracted** — perfect citation

---

## Section 3: X-Posts Protocol

### Workflow

```
X Post
    ↓
Save image (if any) → Assets/Images/
    ↓
Extract core claims
    ↓
Create zettels (1-8 per post)
    ↓
Link to relevant MOCs
    ↓
Git Commit
```

### Image Handling

- Save to `Assets/Images/`
- Naming: `Author_Topic_YYYY-MM-DD.png`
- Reference in zettel: `![[Image_Name.png]]`

### Yield Examples

| Post | Author | Zettels Created |
|------|--------|-----------------|
| Nicotine biosynthesis | Niko McCarty | 8 zettels |
| Mitochondrial functions | Dr. William Wallace | 1 zettel |
| Body regeneration | Brett Boettcher | 1 zettel |
| Vitamin C thread | Vitamin King | 8 zettels |

---

## Section 4: FB-Posts Protocol

### Workflow

```
Greek Article
    ↓
Full English Translation
    ↓
Extract References
    ↓
Web Search (DOI, authors, abstract)
    ↓
Create Enhanced Reference Note
    ↓
Update Inbox Entry (P0/P1/P2/P3)
    ↓
SPARK Check
    ↓
LitNote (links to pre-made refs)
    ↓
Zettels
```

### Unique Features

1. **Reference-first** — Create Reference Notes before LitNotes
2. **Web-enhanced** — Search for DOI, full author list, abstract
3. **Priority tagging** — P0/P1/P2/P3 classification
4. **Translation required** — Greek→English

### Reference Enhancement

For each reference found:
- Search web for DOI
- Find full author list
- Get abstract/summary
- Create Reference Note in `02-References/Hub/`
- Link from LitNote

---

## Section 5: Source Preservation

### Reference Handling

**Location:** `02-References/Hub/`

**Format:** `Author_Year_Title_R-XXX-XXXX.md`

**Required fields:**
- Full citation (APA style)
- DOI (if available)
- URL (if open access)
- Abstract
- Key findings (3-5 bullets)
- Links to LitNotes that cite this reference

### Deduplication

**Check before creating:**
1. Search `02-References/Hub/` for author + year
2. Search for DOI if known
3. If exists: link to existing, don't duplicate
4. If variant: create disambiguated version

### Citation Integrity

**Every claim needs a source:**
- Inline citations: `(Author, Year)`
- Zettel links: `[[Claim_Supporting_Zettel]]`
- Reference links: `[[Author_Year_R-XXX-XXXX]]`

---

## Section 6: SPARK Lite Protocol

### Purpose

Pre-extraction vault search to prevent duplication and find connections.

### Levels

| Level | Check | Time | Cost |
|-------|-------|------|------|
| L1 | URL/author cache | <100ms | $0.00 |
| L2 | Topic fingerprint | <500ms | $0.00 |
| L3 | MOC-first search | 2-3s | $0.01 |

### Trigger

Run before creating any new LitNote or zettel:
```bash
./spark-lite.sh "topic keywords"
```

### Decision

Review matches → integrate, skip, or extract.

---

## Section 7: Extraction Completion Standards

### Status Definitions

| Status | Meaning |
|--------|---------|
| **COMPLETE** | 100% done, verified, no loose ends |
| **PENDING** | Explicit list of what's unfinished |
| **DRAFT** | Work in progress, estimated completion |

### Required Phrase When Incomplete

> "⚠️ PENDING: [specific items]. Reason: [why]. ETA: [when]."

### Verification Checklist

Before marking complete:
- [ ] All references extracted
- [ ] All zettels created with proper UIDs
- [ ] All MOCs updated
- [ ] Daily note updated
- [ ] Git committed
- [ ] User can see/access all files

---

## Quick Reference

| Source Type | Section |
|-------------|---------|
| ChatGPT conversations | Section 2: CGPT Protocol |
| Twitter/X posts | Section 3: X-Posts Protocol |
| Facebook posts | Section 4: FB-Posts Protocol |
| Scientific papers | Section 2: CGPT Protocol (adapted) |
| Books | Section 2: CGPT Protocol (chapter split) |
| Reference handling | Section 5: Source Preservation |
| Pre-extraction search | Section 6: SPARK Lite |
| Completion standards | Section 7: Completion |

---

*Consolidated: 2026-04-04*
*Source files: EXTRACTION-PROTOCOLS, CGPT_EXTRACTION_PROTOCOL_v2.1, SOURCE_PRESERVATION_PROTOCOL, EXTRACTION_COMPLETION_PLAN*
