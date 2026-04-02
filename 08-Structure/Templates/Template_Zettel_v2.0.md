---
uid: "{{T}}-{{DDD}}-{{SSSS}}"
type: "zettel | zettel-claim | zettel-mech | zettel-cont | zettel-q"
title: "{{Concise Title}}"
aliases: ["{{ShortSlug}}"]  # Never use bare UID here - creates shadow notes
domain: "{{DDD}}"
domain-name: "{{DomainName}}"
tags: ["zettel", "{{topic}}", "{{subtopic}}"]
# Structural links (for navigation - digital necessity)
parent-index: "[[03-Zettels-Conscious]]"
# Semantic links (for thinking - Luhmann-style)
parent-moc: "[[MOC-Example]]"  # Change to actual thematic MOC
related: []  # Add 2-3 lateral connections during review
source: ""
confidence: "high | medium | low"
created: "{{YYYY-MM-DD}}"
extraction-date: "{{YYYY-MM-DD}}"
---

# {{Title}}

{{Single idea, 50-200 words, written as if for print. No context required.}}

{{Key details: bullets, mini-table, or key-value pairs}}

## Links — Two Types (Digital Zettelkasten)

### 1. Structural Links (Navigation)
**Purpose:** Findability in digital space  
**Style:** Hierarchical, folder-based  
**Examples:**
- `parent-index: [[03-Zettels-Conscious]]` — container
- `parent-moc: [[MOC-Insulin-Signaling]]` — thematic entry point

### 2. Semantic Links (Thinking)
**Purpose:** Lateral thinking, serendipity  
**Style:** Content-based, Luhmann-style  
**Examples:**
- Content: "This connects to [[Adipic_Acid_Early_IR_Biomarker_Z-001-0041]]" — idea connection
- Inline: "This contrasts with [[Lipotoxicity_Pathway_IR_Z-001-0029]]"

**CRITICAL RULE:**
Bare UIDs like `[[Z-001-0041]` create empty notes. Always use full format: `Title_Z-001-0041`

**Verification:** `grep -r '\[\[Z-[0-9]\{4\}-[0-9]\{4\}\]\]' 03-Zettels/` should return nothing.

## Related Zettels (Lateral Connections — Luhmann-Style)

**Goal:** 2-3 lateral connections to *content-related* notes (not hierarchical)

- {{Related_Zettel_1_Z-XXX-XXXX}} — {{Connection: how ideas relate}}
- {{Related_Zettel_2_Z-XXX-XXXX}} — {{Connection: contrast or support}}

**Principle:** These create the "thinking graph" — serendipity through connection

## Synthesis Links

- [[{{Synthesis_Title}}_{{S-XXX-XXXX}}]] — {{How this zettel contributes}}

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
