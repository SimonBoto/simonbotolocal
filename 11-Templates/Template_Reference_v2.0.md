---
aliases: [Template-Reference, Ref-Note]
tags: [template, reference, literature, citation, zettelkasten]
version: 2.0
---

# Template: Reference Note v2.0

**Purpose:** Complete bibliographic record with extraction-ready content
**Target Length:** 300-600 words
**Location:** `66-Literature/Refs/`
**Filename:** `Ref_Author_Year_TitleKeyword_YYYYMMDD_XXX_000000.md`

---

## YAML Frontmatter

```yaml
---
uid: {{YYYYMMDD}}{{HHMMSS}}
type: reference
title: {{FULL_TITLE}}
authors: {{AUTHORS}}
year: {{YYYY}}
doi: {{DOI}}
pmid: {{PMID}}
pmcid: {{PMCID}}
journal: {{JOURNAL}}
tier: {{1|2|3}}  # 1=RCT/Mechanistic, 2=Review/Observational, 3=Opinion/News
status: ref  # ref → extracted → linked
confidence: high  # high | medium | low
aliases: [{{Author}}_{{Year}}_{{Keyword}}]
tags: [ref, {{TOPIC}}, {{METHOD}}, phd]
parent-moc: [[55-MOCs/Literature]] | [[55-MOCs/{{TOPIC_MOC}}]]
source-type: {{paper | review | book | web | clinic}}
extraction-date: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. TL;DR (2-3 sentences)
**The single most important takeaway.**

Example:
> Elevated urinary adipic acid correlates with insulin resistance and carnitine deficiency, offering early detection potential for metabolic dysfunction.

---

### 2. Abstract (Paste or Summarize)
**Original abstract or concise summary.**

---

### 3. Key Findings (Extractable to Atomics)
| Finding | Evidence | Relevance |
|---------|----------|-----------|
| {{Claim 1}} | {{Data/stats}} | {{Why it matters}} |
| {{Claim 2}} | {{Data/stats}} | {{Why it matters}} |
| {{Claim 3}} | {{Data/stats}} | {{Why it matters}} |

**Minimum:** 2 findings  
**Ideal:** 3-5 findings

---

### 4. Relevance (Why This Matters for PhD)
**Connect to METHAP/PhD objectives:**

- **Biomarker potential:** Does this suggest a measurable marker?
- **Mechanism insight:** Does this explain a pathway?
- **Study design:** Does this inform our protocol?
- **Gap addressed:** Does this fill a literature hole?

---

### 5. Key Quote (Verbatim, Citation-Ready)
> "{{Direct quote from paper}}" (Section, Page)

**Use for:** Direct citation in papers, presentations, atomics

---

### 6. Methods (If Applicable)
| Aspect | Detail |
|--------|--------|
| **Design** | RCT, cohort, case-control, review |
| **Population** | N=, inclusion/exclusion |
| **Intervention** | (if applicable) |
| **Outcomes** | Primary, secondary |
| **Analysis** | Stats methods |

---

### 7. Links (To Atomics This Enables)
- [[{{Atomic_1}}]] — {{Relationship}}
- [[{{Atomic_2}}]] — {{Relationship}}
- [[{{Atomic_3}}]] — {{Relationship}}

**Populate after atomic extraction.**

---

### 8. Cited In (Reverse Links)
- [[{{Lit_Note_1}}]] — {{Context}}
- [[{{MOC_1}}]] — {{Context}}

**Auto-populated via Obsidian backlinks.**

---

### 9. Our Use (Application)
**How we apply this in practice:**

**METHAP Trial:**
- {{Specific application to study design}}
- {{Biomarker inclusion rationale}}
- {{Protocol modification}}

**Clinic:**
- {{Patient screening application}}
- {{Treatment guidance}}
- {{Monitoring protocol}}

**Research:**
- {{Next study inspiration}}
- {{Collaboration opportunity}}

---

### 10. Limitations & Critical Notes
**What to watch out for:**
- {{Sample size issues}}
- {{Confounding factors}}
- {{Generalizability limits}}
- {{Conflicts of interest}}

---

### 11. RON Ledger
- **Input:** {{Source type, search query, or citation}}
- **Extraction time:** {{Minutes}}
- **Atomics generated:** {{N}} ([[{{Atomic_1}}]], [[{{Atomic_2}}]])
- **Quality:** {{gold | good | mid | minimal}}
- **Next action:** {{Re-extract, expand, or link}}

---

## Quality Checklist

- [ ] Complete YAML (DOI/PMID preferred)
- [ ] TL;DR captures essence
- [ ] 2+ key findings with data
- [ ] Relevance to PhD stated
- [ ] Key quote extracted
- [ ] Methods summarized (if original research)
- [ ] Our Use section complete
- [ ] RON Ledger filled

---

*Template: Reference Note v2.0 | Use for complete literature capture*
