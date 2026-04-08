---
uid: TEMPLATE-REF-003
type: template
title: Template — Reference (Canonical)
description: "Canonical reference template for bibliographic sources, citation hubs, and canonical source records."
version: "3.0"
status: active
updated: 2026-04-08
---

# Template — Reference (Canonical)

## An Address to RON

RON,

A Reference is **not** a LitNote.
It is **not** a zettel.
It is **not** a processing artifact.

A Reference is a **canonical bibliographic record**.

Its role:
- Store complete, accurate bibliographic identity
- Serve as citation anchor for zettels and syntheses
- Enable traceability to original sources
- Support later bibliographic strengthening

Sources become References when:
- Full bibliographic data is available
- The source is cited by multiple zettels
- Canonical identity is needed for synthesis

**Do not:**
- Create References for sources you'll never cite
- Duplicate References (check `duplicate-of`)
- Use References as processing notes

**Do:**
- Keep bibliographic data complete and accurate
- Link to originating LitNote when applicable
- Update when stronger identifiers found (PMID, DOI)

---

## Canonical YAML

```yaml
---
uid: R-XXX-XXXX
type: reference
title: "Author_Year_ShortTitle_R-XXX-XXXX"
aliases:
  - R-XXX-XXXX
  - AuthorYear
authors: "Author 1, Author 2, et al."
year: "YYYY"
journal: "Journal Name"
volume: ""
pages: ""
doi: ""
pmid: ""
pmcid: ""
zotero: ""
url: ""
parent-moc: "[[MOC-References]]"
parent-index: "[[02-References-Index]]"
source-litnote: "[[L-XXX-XXXX_LitNote_Title]]"
duplicate-of: ""
status: active
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - reference
  - topic-tag
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Unique. Verify with `ls 02-References/Hub/*R-XXX-XXXX*` |
| **type** | Always `reference` |
| **title** | Pattern: `Author_Year_ShortTitle_R-XXX-XXXX` |
| **aliases** | UID + AuthorYear shorthand |
| **authors** | Full author list or "et al." for long lists |
| **year** | Publication year |
| **journal** | Full journal name |
| **volume/pages** | Optional but useful for locating |
| **doi/pmid/pmcid** | Fill all available. PMID most critical for medicine. |
| **zotero** | Zotero ID if synced |
| **url** | Direct link if stable (DOI preferred) |
| **source-litnote** | Link to LitNote that processed this source |
| **duplicate-of** | If this duplicates another Reference, link to canonical |
| **status** | `active` or `superseded` (if duplicate found) |

---

## Canonical Body Structure

### Full Citation

Complete bibliographic entry in standard format:

> Author 1, Author 2, et al. (YYYY). "Full Article Title." *Journal Name*, Volume(Issue), Pages. DOI: xxx

### Abstract

Paste abstract if available. Mark with `> ` for blockquote.

### Key Findings

Bullet points of main contributions:
- Finding 1
- Finding 2
- Finding 3

### Zettels Citing This Reference

- [[Z-XXX-XXXX_Title]] — how this reference supports the zettel
- [[Z-XXX-XXXX_Title]] — how this reference supports the zettel

### Related References

- [[R-XXX-XXXX_Title]] — related work
- [[R-XXX-XXXX_Title]] — contrasting finding

### Notes

Any additional context, access dates, full-text availability, etc.

---

## When to Create a Reference

| Scenario | Action |
|----------|--------|
| Source cited by 3+ zettels | ✅ Create Reference |
| Source has complete PMID/DOI | ✅ Create Reference |
| Source only in one LitNote, not yet cited | ❌ Wait |
| Source is duplicate of existing Reference | ❌ Use `duplicate-of` instead |
| Source is website/conversation/expertise | ❌ Keep in LitNote layer |

---

## Canonicalization Rules

1. **Check for duplicates first:**
   ```bash
   grep -r "PMID: 12345678" 02-References/Hub/
   ```

2. **If duplicate found:**
   - Do not create new Reference
   - Update existing Reference if your data is stronger
   - Link LitNote to existing Reference via `source-litnote`

3. **If creating new:**
   - Fill all identifier fields (DOI, PMID, PMCID)
   - Link to originating LitNote
   - Add to relevant MOCs

---

## Navigation

- **Index:** [[02-References-Index]] — All reference notes
- **MOC:** [[MOC-References]] — Citation management
- **Related:** [[Template_LitNote]], [[Template_Synthesis]]

---

## Footer

Reference created: YYYY-MM-DD | Last updated: YYYY-MM-DD | Cited by: N zettels
