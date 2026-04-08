---
uid: TEMPLATE-ZET-004
type: template
title: Template — Zettel (Staged Canonical)
description: "Canonical Zettel template for staged concept packets, later refinement, support growth, and promotion from conscious to subconscious."
version: "4.0"
status: active
updated: 2026-04-08
---

# Template — Zettel (Staged Canonical)

## An Address to RON

RON,

A Zettel is a **concept-centered knowledge unit**.

It may begin as a **strong concept packet**:
- one mechanism
- one distinction  
- one claim cluster
- one clinically meaningful relation
- one coherent idea that can later be refined

Build notes that are:
- structurally clean
- conceptually coherent
- honest about support
- useful now
- refinable later

That is the correct standard.

---

## Pre-Flight Checklist

- [ ] **UID unique**: `ls 03-Zettels/Conscious/*Z-XXX-XXXX* 2>/dev/null` returns nothing
- [ ] **parent-moc exists**: Check `08-Structure/MOCs/` before assigning
- [ ] **source-litnote uses full filename**: Not bare UID
- [ ] **All [[links]] verified**: No shadow notes

---

## Canonical YAML Frontmatter

```yaml
---
uid: Z-XXX-XXXX
type: zettel
title: "Concise Concept Title"
aliases:
  - Z-XXX-XXXX
  - Short-Alias
domain: XXX
tags:
  - zettel
  - topic
parent-moc: "[[MOC-Topic]]"
parent-index: "[[03-Zettels-Conscious]]"
status: conscious
extracted_by: "RON|FORG"
reviewed_by: ""
extraction-date: YYYY-MM-DD
source-litnote: "[[L-XXX-XXXX_LitNote_Title]]"
source-inbox: "[[Source_File_or_Anchor]]"
reference: "[[R-XXX-XXXX_Reference_Title]]"
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Unique. Verify with `ls 03-Zettels/Conscious/*Z-XXX-XXXX*` |
| **type** | Always `zettel`. No subtypes. |
| **title** | Concept/mechanism/claim-centered. Not encyclopedia-style. |
| **aliases** | UID + short useful alias. No clutter. |
| **domain** | Actual domain code (001, 101, etc.) |
| **tags** | `zettel` + concept/mechanism/disease tags |
| **parent-moc** | Best thematic home. Verify exists. |
| **status** | `conscious` (default) or `subconscious` (after promotion) |
| **extracted_by** | RON or FORG |
| **reviewed_by** | Empty until reviewed, then "RON" |
| **source-litnote** | Almost always applicable. Link to originating LitNote. |
| **reference** | Primary evidence. Empty if orphaned (to be referenced later). |

---

## Canonical Body Structure

### Core Claim
State the main concept clearly. Full sentences. No fluff.

### Key Details
Mechanism outline, reaction steps, tables, distinctions, conditions.

**Not** "Evidence" unless actually bibliographic.

### Evidence
Real support only:
- Bibliographic support
- Source-grounded claims
- PMID/DOI-linked

If absent: omit or state "Support not yet attached."

### Significance
Why this matters in general (scientific, mechanistic, evolutionary).

### Clinical Significance
**Only if real clinical relevance exists.**

Specific clinical applications:
- Diagnostic meaning
- Therapeutic implication
- Patient interpretation
- Biomarker relevance
- Clinical decision-shaping

If none: **omit this section.**

### PhD Relevance
**Only if genuine connection to PhD research.**

If none: **omit.**

### Related
Link outward:
- Sibling zettels
- Upstream LitNote
- Downstream synthesis
- Related mechanisms
- Contrasting notes

### Support State
Honest statement:
- `Support attached: partial`
- `Support attached: none yet`
- `Support attached: primary reference linked`
- `Support deferred pending reference cleanup`

### Promotion Notes
Future refinement hints:
- "Split into stricter atomic descendants later"
- "Attach stronger reference support"
- "Candidate for subconscious promotion after review"

---

## Writing Rules

1. **Do not fake atomicity** — Early zettels may be broader than final form
2. **Do not fake evidence** — If support absent, say so
3. **Do not force clinical framing** — Use `Clinical Significance` only when real
4. **Do not force project framing** — Use `PhD Relevance` only when real
5. **Do not leave shapeless** — Must be one concept-centered, coherent, structured unit
6. **Prefer clean outward links** — Strengthen the graph
7. **Build for refinement** — Needs to be **promotable**, not final

---

## Promotion Standard

Move from `conscious` to `subconscious` when:
- Structurally clean
- Conceptually sharp
- Sufficiently supported
- Well linked
- No longer awaiting major rewrite
- Worthy of long-term trust

Promote based on **quality**, not mood.

---

## Minimal Example

```markdown
# HCN Polymerization to Adenine Mechanism

## Core Claim
Hydrogen cyanide polymerizes through intermediate steps to generate adenine under plausible prebiotic conditions.

## Key Details
- 5 HCN molecules contribute to adenine formation
- Intermediate reactions: oligomerization and cyclization
- Anoxic conditions and energy input improve plausibility

## Evidence
- Source-litnote extraction pending
- Direct bibliographic support to be attached

## Significance
Connects prebiotic chemistry to evolutionary roots of purine metabolism.

## Related
- [[L-101-0045B_Prebiotic_Chemistry_HCN_Adenine_CGPT-0445]]
- [[Meteoritic_Nucleobases_Panspermia_Z-101-0455]]

## Support State
Support attached: partial

## Promotion Notes
Split into stricter atomic descendants if origins-of-life cluster expands.
```

---

## Navigation

- **Index:** [[03-Zettels-Conscious]] — All working zettels
- **MOC:** [[MOC-Zettelkasten-Workflow]] — Zettel creation guidance
- **Related:** [[Template_LitNote]], [[Template_Daily]]

---

## Final Instruction

RON,

Create notes that are:
**honest, structured, connected, supportable, refinable, promotable.**

A weak zettel is vague.
A false zettel is overconfident.
A good zettel knows its current level and strengthens the system.

That is the standard.
