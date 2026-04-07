---
uid: TEMPLATE-LIT-003
type: template
title: Template — LitNote (Master v3.0)
description: "Unified LitNote template for manual and agent extraction. Combines v2.0 structure, FORG completeness, and L-001-0631 optimal formatting."
date: 2026-04-07
version: 3.0
---

# LitNote Master Template v3.0

> Use this for both manual extraction AND FORG agent extraction.

---

## YAML Frontmatter Template

```yaml
---
uid: L-XXX-XXXX
type: lit-note
title: "Lit — {{Source Title}}"
aliases:
  - L-XXX-XXXX
  - {{Short-Alias}}
authors: "{{Author1, Author2}}"
year: {{YYYY}}
journal: "{{Journal or ChatGPT Archive}}"
doi: {{DOI or N/A}}
pmid: {{PMID or N/A}}
pmcid: {{PMCID or N/A}}
tier: {{GOLD|SILVER|BRONZE}}
relevance: {{High|Medium|Low}} — {{context}}
status: extracted
parent-moc: "[[MOC-Topic]]"
parent-index: "[[01-Literature-Index]]"
extraction-date: "{{YYYY-MM-DD}}"
source-inbox: "[[{{Source_File}}]]"
zettel-count: {{N}}
reference-count: {{N}}
extraction-quality: {{GOLD|SILVER|BRONZE}}
tags:
  - lit-note
  - {{topic}}
  - {{cgp if ChatGPT}}
---
```

---

## Body Structure Template

```markdown
# {{Source Title}}

> **Source:** {{Source Type}} {{Source_ID}} ({{Date}})  
> **Core Claim:** {{One sentence — what does this source establish?}}

---

## Core Concepts Extracted

### 1. {{Concept Name}}

**Category:** {{Enzyme/Pathway/Mechanism/Process}}

**Key Process:**
```
{{Reaction, formula, or structured data}}
```

**Mechanism/Steps:**
1. {{Step 1}}
2. {{Step 2}}
3. {{Step 3}}

**Purpose/Significance:** {{Why this matters}}

**Zettel:** [[Z-XXX-XXXX_Title]]

---

### 2. {{Next Concept}}

**Category:** {{Classification}}

[Same structure as above]

---

### 3. {{Next Concept}}

[Same structure]

---

## Zettels Created
1. [[Z-XXX-XXXX_Title]] — {{Brief description}}
2. [[Z-XXX-XXXX_Title]] — {{Brief description}}
3. [[Z-XXX-XXXX_Title]] — {{Brief description}}

---

## Snowball References

| Citation | Key Finding | Relevance | Zettel |
|----------|-------------|-----------|--------|
| {{Author}} ({{Year}}) | {{Finding}} | {{High/Med/Low}} | [[Z-XXX-XXXX]] |

---

## References Used

| Reference | PMID/DOI | Finding | Confidence |
|-----------|----------|---------|------------|
| {{Author}} ({{Year}}) | {{PMID}} | {{Key finding}} | {{High/Med/Low}} |

---

## Related References
- [[MOC-Topic]] — Parent MOC
- [[Z-XXX-XXXX_Related]] — Related zettel
- [[L-XXX-XXXX_Related]] — Related LitNote

---

## Status Checklist
- [x] Source read completely
- [x] YAML standardized (type: lit-note, source-inbox, zettel-count, reference-count, tags)
- [x] Core claim articulated (one sentence)
- [x] Core concepts numbered (1, 2, 3...)
- [x] Subsection headers used (**Category**, **Mechanism**, **Purpose**)
- [x] Zettel links use FULL format with titles
- [x] Snowball references documented
- [x] QMD duplicate check completed
- [ ] RON review pending

---

## Source Reference
This literature note was extracted from: [[{{Source_File}}]]

*Literature note processed: {{YYYY-MM-DD}} | {{Agent/Version}}*  
*Zettels extracted: {{N}} | Status: extracted*
```

---

## Usage Instructions

### For Manual Extraction:
1. Copy this template
2. Fill in {{variables}}
3. Number concepts sequentially
4. Complete status checklist

### For FORG Agent:
1. Use as system prompt
2. Replace {{variables}} with extracted data
3. Number concepts automatically
4. Auto-generate status checklist

---

## Version History

| Version | Date | Changes |
|---------|------|---------|
| v1.0 | Legacy | Basic structure |
| v2.0 | 2026-03 | Added snowball, core claim |
| v3.0 | 2026-04-07 | Consolidated FORG + L-001-0631 + v2.0 |

---

*Template: LitNote Master v3.0 | Unified for human + agent use*
