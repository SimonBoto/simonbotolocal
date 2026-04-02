---
uid: "{{T}}-{{DDD}}-{{SSSS}}"
type: "zettel | zettel-claim | zettel-mech | zettel-cont | zettel-q"
title: "{{Concise Title}}"
aliases: ["{{UID}}", "{{ShortSlug}}"]
domain: "{{DDD}}"
domain-name: "{{DomainName}}"
tags: ["zettel", "{{topic}}", "{{subtopic}}"]
parent-moc: ""
related: ["[[{{Related_Zettel}}_{{Z-XXX-XXXX}}]"]
source: ""
confidence: "high | medium | low"
created: "{{YYYY-MM-DD}}"
extraction-date: "{{YYYY-MM-DD}}"
---

# {{Title}}

{{Single idea, 50-200 words, written as if for print. No context required.}}

{{Key details: bullets, mini-table, or key-value pairs}}

## Links (Contextual — Link WHEN Useful)

**ALWAYS Link (FULL FILENAME REQUIRED):**
- `[[Adipic_Acid_Early_IR_Biomarker_Z-001-0041]]` — NEVER use bare `[[Z-001-0041]`
- Parent MOC: `` — navigation
- Cross-domain bridges: Insulin zettel → Vitamin D mechanism

**CRITICAL RULE:**
Bare UIDs like `[[Z-001-0041]` create empty Obsidian notes because filenames include titles.
Always use full format: `[[Title_Z-001-0041]` or `[[Title_Z-001-0041]|display text]`

**Verification:** `grep -r '\[\[Z-[0-9]\{4\}-[0-9]\{4\}\]\]' 01-Literature/ 03-Zettels/` should return nothing.

**Use Plain Text WHEN:**
- Generic concepts: "insulin resistance" (not ``)
- Flow narrative: reading should be smooth
- Already linked nearby: no duplicate links

**Examples:**
- `[[Adipic_Acid_Early_IR_Biomarker_Z-001-0041]]|adipic acid]` — specific, useful
- "Insulin resistance develops gradually" — plain, readable

## Related Zettels

- [[{{Related_Zettel_1}}_{{Z-XXX-XXXX}}] — {{Connection}}
- [[{{Related_Zettel_2}}_{{Z-XXX-XXXX}}] — {{Connection}}

## Synthesis Links

- [[{{Synthesis_Title}}_{{S-XXX-XXXX}}] — {{How this zettel contributes}}

## Context

**Also relevant to:**  (optional)

**Emerges from:** 
**Supports:**  or 

---

*UID: {{UID}} | Domain: {{DDD}} | Created: {{YYYY-MM-DD}}*

---

## Naming Discipline (v2.2 Protocol)

**MANDATORY:** `Title_Z-001-0041.md` (no brackets)
- **T:** Type (Z=zettel, S=synthesis, L=LitNote)
- **DDD:** Domain (001=Insulin, 101=Pharmacometabolomics)
- **SSSS:** Sequence (0001, 0002...)

**Continuity guaranteed through:**
1. UID uniqueness (no duplicates)
2. Searchable naming (find instantly)
3. Contextual linking (graph grows organically)

---

## Status Footer (NOT in YAML)

Status: conscious | Reviewed: {{YYYY-MM-DD}} | Promoted to Subconscious: {{YYYY-MM-DD}}
---
parent-index: [[08 Structure Index]], [[Templates Index]]
