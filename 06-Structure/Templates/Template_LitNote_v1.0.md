---
uid: "{{YYYYMMDD}}{{HHMM}}"
type: "lit-note"
title: "Lit — {{Paper Title}}"
authors: "{{Author Names}}"
year: "{{YYYY}}"
journal: "{{Journal Name}}"
doi: "{{DOI}}"
pmid: "{{PMID}}"
pmcid: "{{PMCID}}"
tier: "{{1|2|3}}"
tier-classification: "{{GOLD|SILVER|BRONZE}}"
relevance: "{{High|Medium|Low}} — {{Why relevant}}"
status: "{{stub|processing|extracted|complete}}"
parent-moc: ""
extraction-date: "{{YYYY-MM-DD}}"
---

# Lit: {{Author}} {{Year}} — {{Short Title}}

## Source
- **Full citation:** {{Full Citation}}
- **PMID:** {{PMID}}
- **PMCID:** {{PMCID}}
- **DOI:** {{DOI}}
- **Link:** {{URL}}

## Core Concepts Extracted

### 1. {{Concept 1}}
> "{{Direct quote from paper}}"

**Zettel extracted:** [[{{Zettel_Title}}_[{{Zettel_UID}}].md]]
*CRITICAL: Use FULL filename, never bare UID like `[[Z-001-0001]]`*

### 2. {{Concept 2}}
> "{{Direct quote from paper}}"

**Zettel extracted:** [[{{Zettel_Title}}_[{{Zettel_UID}}].md]]

### 3. {{Concept 3}}
> "{{Direct quote from paper}}"

**Zettel extracted:** [[{{Zettel_Title}}_[{{Zettel_UID}}].md]]

## Key Figures & Data
- {{Figure 1 description}}
- {{Figure 2 description}}
- {{Figure 3 description}}

## My Notes

**Synthesis:** {{Your interpretation of how this fits the broader picture}}

**Connection to METHAP/PhD:** {{How this applies to your specific work}}

**Questions:**
- {{Question 1}}
- {{Question 2}}
- {{Question 3}}

## Zettels Created from This Source
1. [[{{Zettel_1_Title}}_[{{Zettel_1_UID}}].md]] — {{Zettel_1_description}}
2. [[{{Zettel_2_Title}}_[{{Zettel_2_UID}}].md]] — {{Zettel_2_description}}
3. [[{{Zettel_3_Title}}_[{{Zettel_3_UID}}].md]] — {{Zettel_3_description}}

## Related References
-  — {{Connection}}
-  — {{Connection}}
-  — {{Connection}}

---

*Literature note processed: {{YYYY-MM-DD}}*  
*Zettels extracted: {{N}}*  
*Status: {{status}}*

---

## Post-Extraction Verification Checklist
- [ ] All zettel links use FULL format: `[[Title_[Z-001-0001].md]]`
- [ ] No bare UIDs: `[[Z-001-0001]]` → will create empty notes
- [ ] Verify with: `grep -r '\[\[Z-[0-9]\{4\}-[0-9]\{4\}\]\]' this_file.md` (should return nothing)
- [ ] Concept count matches "Zettels Created from This Source" list
