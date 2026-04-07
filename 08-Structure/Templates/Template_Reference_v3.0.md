---
uid: "{{R-XXX-XXXX}}"
type: reference
title: "{{Full Title}}"
aliases: ["{{ShortSlug}}"]  # Never bare UID — creates shadow notes
authors: "{{Author1, Author2, et al.}}"
year: "{{YYYY}}"
journal: "{{Journal Name}}"
doi: "{{DOI}}"
pmid: "{{PMID}}"
zotero: "zotero://select/items/{{ZOTERO_KEY}}"
tier: "{{1|2|3}}"
tier-classification: "{{GOLD|SILVER|BRONZE}}"
domain: "{{001|101}}"
tags: ["reference", "{{topic}}"]
parent-moc: "[[MOC-Research-Methods]]"
status: "{{pending|extracted|complete}}"
extraction-date: "{{YYYY-MM-DD}}"
quality-score: "{{high|medium|low}}"

# Science Workflow Tracking
litnote-source: "[[{{LitNote_Title}}_{{L-XXX-XXXX}}]]"  # Which LitNote extracted this
duplicate-of: ""  # UID of canonical reference if this is a duplicate
cited-in: []  # List of zettels/syntheses that cite this: [[Zettel_...]]
conflicts-with: []  # Contradictory references: [[Reference_...]]
---

# {{Short Title}}

> **{{Citation}}**  
> {{Authors}} ({{Year}}). *{{Journal}}*.  
> DOI: [{{DOI}}](https://doi.org/{{DOI}}) | PMID: [{{PMID}}](https://pubmed.ncbi.nlm.nih.gov/{{PMID}}) | [Zotero]({{zotero}})

---

## 🎯 Why This Matters

{{2-3 sentences on relevance — METHAP, clinical practice, or PhD}}

---

## 📝 Abstract

{{Full abstract from PubMed or paper}}

---

## 💡 Key Findings

- **{{Finding 1}}** — {{Implication}}
- **{{Finding 2}}** — {{Implication}}
- **{{Finding 3}}** — {{Implication}}

---

## 🔗 Connections

### Extracted Zettels
- [[{{Zettel_Title}}_{{Zettel_UID}}]] — {{Description}}

### Supports Claims
- [[{{Zettel_Title}}_{{Zettel_UID}}]] — {{How it supports}}

### Methods Source
- [[{{Zettel_Title}}_{{Zettel_UID}}]] — {{Methodology}}

### Related References
- [[{{Reference_Title}}_{{Reference_UID}}]] — {{Connection}}

---

## 🔍 Duplicate Detection

**Check performed:** {{YYYY-MM-DD}}  
**Result:** {{unique|duplicate of [[...]]|uncertain}}  
**Method:** PMID cross-check | Zotero duplicate detector | Manual review

**If duplicate:**
- Canonical version: [[{{Canonical_Ref}}]]
- This version: {{redirect|merge|delete}}

---

## ✅ Extraction Status

- [ ] Abstract reviewed
- [ ] Key findings extracted
- [ ] Zettels created
- [ ] Connections verified
- [ ] Synthesis integrated
- [ ] Duplicate check completed

**Status:** {{status}} | **Priority:** P{{0|1|2}} | **Quality:** {{quality-score}}

---

*Added: {{YYYY-MM-DD}} | Last reviewed: {{YYYY-MM-DD}}*

---

## Post-Processing Checklist

- [ ] PMID verified via PubMed
- [ ] DOI resolves correctly
- [ ] Zotero link functional
- [ ] Abstract complete
- [ ] At least 1 zettel connection
- [ ] Parent MOC assigned
- [ ] Tier classified (GOLD/SILVER/BRONZE)
- [ ] Quality score assigned
- [ ] **Duplicate check completed** (PMID search in vault)
- [ ] **Cited-in field updated** (track which zettels use this)
---
parent-index: [[08-Structure-Index]], [[Templates-Index]]
