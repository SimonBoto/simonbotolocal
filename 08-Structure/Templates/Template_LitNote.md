---
uid: TEMPLATE-LIT-004
type: template
title: Template — LitNote (Canonical)
description: "Canonical LitNote template for source-centered extraction, traceable zettel generation, and later bibliographic strengthening."
version: "4.0"
status: active
updated: 2026-04-08
---

# Template — LitNote (Canonical)

## An Address to RON

RON,

A LitNote is **not** a reference stub, synthesis, zettel, or metadata shell.

A LitNote is a **source-centered processing note**.

Its role: capture a real encounter with a meaningful source and convert it into structured, reusable intellectual material.

Sources may be:
- Paper, book, lecture, website
- Conversation, ChatGPT archive
- Expertise articulation, observation

The LitNote lives at the layer of:
- Encounter → Extraction → Conceptual decomposition → Source-linked clarification

**Do not:**
- Force fake completeness
- Force bibliography where it doesn't exist
- Turn it into synthesis or raw dump

**Do:**
- Process the source honestly
- Prepare ground for zettels, support, synthesis

---

## Canonical YAML

```yaml
---
uid: L-XXX-XXXX
type: lit-note
title: "Source_Title_L-XXX-XXXX"
aliases:
  - L-XXX-XXXX
source-origin: paper|book|website|conversation|chatgpt-archive|expertise|lecture|observation
authors: ""
year: ""
journal: ""
doi: ""
pmid: ""
pmcid: ""
tier: GOLD|SILVER|BRONZE
relevance: "High|Medium|Low — why it matters"
status: draft|processing|extracted|complete
parent-moc: "[[MOC-Topic]]"
parent-index: "[[Templates-Index]]"
extraction-date: YYYY-MM-DD
source-inbox: "[[Source_File_or_Anchor]]"
zettel-count: N
reference-count: N
reviewed_by: ""
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags:
  - lit-note
  - topic-tag
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Unique. Verify with `ls 01-Literature/*L-XXX-XXXX*` |
| **type** | Always `lit-note` (with hyphen). Never `litnote`. |
| **title** | Source-facing title. Pattern: `Source_Title_L-XXX-XXXX` |
| **source-origin** | **NEW:** What kind of source (paper, chatgpt-archive, etc.) |
| **authors/year/journal/doi/pmid/pmcid** | Optional. Fill when genuinely applicable. |
| **tier** | GOLD/SILVER/BRONZE — extraction depth, not prestige |
| **relevance** | Honest assessment: High/Medium/Low + why |
| **status** | Process state: draft → processing → extracted → complete |
| **parent-moc** | Best thematic home. Verify exists. |
| **source-inbox** | Entry path of source (high value for traceability) |
| **created** | Date note created |
| **updated** | Date last modified |
| **zettel-count** | Number of zettels extracted |
| **reference-count** | References used/attached |

---

## Canonical Body Structure

### Source

Describe the source clearly:
- Source type and original location
- Context of encounter
- Why this source entered processing

Examples:
- ChatGPT conversation: CGPT_0445_Advanced_Biochemistry_Exploration
- Paper identified through Facebook Posts Collection, Article 8
- Expertise articulation based on clinic doctrine

### Core Claim

One compact paragraph: what this source establishes, argues, explores, or contributes.

**Not a zettel.** Goal: source-level orientation, retrieval help, future extraction clarity.

### Core Concepts Extracted

Numbered sections. Each = meaningful extraction unit.

**1. Concept Name**

Category: Mechanism / Pathway / Process / Biomarker / Argument / Framework / Method

What the source gives:
> Clear statement of extracted content

Why it matters:
> Why this concept is worth preserving

Candidate Zettel: [[Z-XXX-XXXX_Title]]

---

Continue only as far as source genuinely supports. Do not inflate count.

### Zettels Created

List zettels that emerged from this LitNote:

- [[Z-XXX-XXXX_Title]] — short description
- [[Z-XXX-XXXX_Title]] — short description

**Critical section.** Makes LitNote a true processing hub.

### References Used

Only when actual references were used in extraction/validation:

- [[R-XXX-XXXX_Reference_Title]] — why it was used
- [[R-XXX-XXXX_Reference_Title]] — supporting role

If none used yet: state briefly or omit.

### Structural Links

- Parent MOC: [[MOC-Topic]]
- Related LitNotes: [[L-XXX-XXXX_Title]]
- Related Zettels: [[Z-XXX-XXXX_Title]]
- Related Syntheses: [[S-XXX-XXXX_Title]]

### Connections

- What larger theme does this connect to?
- What cluster is it strengthening?
- What contradiction or opportunity did it reveal?
- What should this eventually feed?

### Processing Checklist

- [ ] Source reviewed enough for extraction
- [ ] YAML standardized
- [ ] Core claim articulated
- [ ] Core concepts extracted
- [ ] Zettel links created
- [ ] Structural links checked
- [ ] Support still needs strengthening
- [ ] Candidate synthesis not yet reviewed

**Keep it honest.** Do not check performatively.

### Support State

Honest statement:
- `Bibliographic support attached: partial`
- `Bibliographic support attached: none yet`
- `Support deferred to later reference pass`
- `Reference strengthening likely needed`

### Promotion Notes

Optional hints for future:
- Likely synthesis trigger
- Permanent question answered
- Protocol implication
- Cluster still too small
- May need later reference pass
- May split into more zettels

---

## Writing Rules

1. **Stay source-centered** — About what this source gives, not everything you know
2. **Do not force bibliography** — Desirable when appropriate, not required
3. **Do not turn into synthesis** — Multi-source integration belongs in 04-Synthesis
4. **Do not leave shapeless** — Must be structured, readable, traceable
5. **Protect source-to-zettel bridge** — Success = clearly gives rise to reusable zettels
6. **Be honest about support state** — If deferred/partial, say so
7. **Build for refinement** — Real, clean, extractive, promotable

---

## Navigation

- **Index:** [[Templates-Index]] — All templates
- **Up:** [[08-Structure-Index]] — System infrastructure
- **Related MOC:** [[MOC-Literature-Management]] — Literature workflow

---

## Footer

Literature note processed: YYYY-MM-DD | Zettels extracted: N | Status: extracted
