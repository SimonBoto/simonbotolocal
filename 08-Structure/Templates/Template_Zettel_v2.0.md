---
uid: TEMPLATE-ZET-003
type: template
title: "Template — Zettel (Unified)"
description: "Single zettel template for all atomic knowledge"
version: "2.0"
---

<!--
PRE-FLIGHT CHECKLIST:
- [ ] parent-moc exists: ls 08-Structure/MOCs/MOC-*.md | grep {{MOC}}
- [ ] source-litnote uses full filename
- [ ] All [[links]] have closing ]]
- [ ] No bare UIDs: [[Z-001-0001]] → [[Title_Z-001-0001]]
- [ ] VERIFY BEFORE LINKING: ls 03-Zettels/Conscious/{{filename}}.md

CRITICAL: NEVER create links to imaginary notes. Shadow notes pollute the vault.
-->

---
uid: "{{Z-XXX-XXXX}}"
type: zettel
title: "{{Atomic Claim}}"
aliases: ["{{ShortSlug}}"]
domain: "{{001|101|XXX}}"
tags: [zettel, "{{topic}}"]
parent-index: "[[03-Zettels-Conscious]]"
parent-moc: "[[MOC-Example]]"  # ⚠️ VERIFY exists
source-litnote: "[[Lit_{{Title}}_{{L-XXX-XXXX}}]]"  # If from LitNote
reference: "[[{{Author}}_{{Year}}_R-XXX-XXXX]]"  # Primary evidence
confidence: high
created: "{{YYYY-MM-DD}}"
extraction-date: "{{YYYY-MM-DD}}"
status: conscious
---

# Core Claim
{{Single atomic claim — one idea, stated clearly}}

## Evidence

### Primary Source
> "{{Direct quote}}" ([[{{Author}}_{{Year}}_R-XXX-XXXX|{{Author, Year}}]])

### Supporting Data
| Finding | Value | Context |
|---------|-------|---------|
| {{Metric}} | {{Value}} | {{Context}} |

## Clinical Implication
{{Practical application — how this changes practice or understanding}}

## METHAP Relevance
{{Connection to PhD/clinic integration — why this matters for your work}}

---

## Links — Two Types

### Structural (Navigation)
- **Up:** [[MOC-Example]] — Thematic entry (⚠️ VERIFY exists)
- **Source:** [[Lit_{{Title}}_{{L-XXX-XXXX}}]] — Origin (if applicable)
- **Reference:** [[{{Author}}_{{Year}}_R-XXX-XXXX]] — Evidence
- **Index:** [[03-Zettels-Conscious]] — Container

### Semantic (Thinking)
<!-- Add 2-3 during 30-day review — NOT at creation -->
<!-- - [[Related_Zettel_Z-XXX-XXXX]] — Connection description -->

---

## Synthesis Links
- [[{{Synthesis_Title}}_{{S-XXX-XXXX}}]] — {{How this contributes}}

---

*Z-XXX-XXXX | Created: {{YYYY-MM-DD}} | Domain: {{001|101}} | Status: conscious*

---

## Naming Discipline
**MANDATORY:** `Title_Z-001-0041.md` (no brackets in filename)
- **T:** Type (Z=zettel, S=synthesis, L=LitNote, B=biomarker, R=reference)
- **DDD:** Domain (001=Insulin, 101=Pharmacometabolomics)
- **SSSS:** Sequence (0001, 0002...)

**Verification:** `grep -r '\[\[Z-[0-9]\{4\}-[0-9]\{4\}\]\]' this_file.md` should return nothing.
