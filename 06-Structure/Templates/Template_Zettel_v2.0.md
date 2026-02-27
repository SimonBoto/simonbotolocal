---
uid: {{T}}-{{DDD}}-{{SSSS}}
type: zettel | zettel-claim | zettel-mech | zettel-cont | zettel-q
title: {{Concise Title}}
aliases: [{{UID}}, {{ShortSlug}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [zettel, {{topic}}, {{subtopic}}]
parent-moc: [[MOC-{{DDD}}]]
source: [[{{SourceLitNote}}]]
confidence: high | medium | low
created: {{YYYY-MM-DD}}
---

# {{Title}}

{{Single idea, 50-200 words, written as if for print. No context required.}}

{{Key details: bullets, mini-table, or key-value pairs}}

## Links (Contextual — Link WHEN Useful)

**ALWAYS Link:**
- UID references: `[[Z-001-0041]]` — naming safety, duplicate prevention
- Parent MOC: `[[MOC-Insulin-Signaling]]` — navigation
- Cross-domain bridges: Insulin zettel → Vitamin D mechanism

**Use Plain Text WHEN:**
- Generic concepts: "insulin resistance" (not `[[insulin resistance]]`)
- Flow narrative: reading should be smooth
- Already linked nearby: no duplicate links

**Examples:**
- `[[Adipic_Acid_Early_IR_Biomarker_[Z-001-0041]|adipic acid]]` — specific, useful
- "Insulin resistance develops gradually" — plain, readable

## Context

**Also relevant to:** [[MOC-{{SecondaryDomain}}]] (optional)

**Emerges from:** [[{{SourceLitNote}}]]
**Supports:** [[{{TechRef}}]] or [[{{Composite}}]]

---

*UID: {{UID}} | Domain: {{DDD}} | Created: {{YYYY-MM-DD}}*

---

## Naming Discipline (v2.0 Protocol)

**MANDATORY:** `Title_[Z-001-0041].md`
- **T:** Type (Z=zettel, S=synthesis, L=LitNote)
- **DDD:** Domain (001=Insulin, 101=Pharmacometabolomics)
- **SSSS:** Sequence (0001, 0002...)

**Continuity guaranteed through:**
1. UID uniqueness (no duplicates)
2. Searchable naming (find instantly)
3. Contextual linking (graph grows organically)
