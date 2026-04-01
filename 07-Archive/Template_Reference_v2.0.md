---
uid: "{{R-XXX-XXXX}}"
type: "reference"
reference-type: "article" | "review" | "book" | "thesis" | "preprint" | "report" | "textbook" | "educational"
title: "{{Full Paper Title}}"
authors:
  - "{{Last FM}}"
  - "{{Last FM}}"
year: "{{YYYY}}"
journal: "{{Journal Name}}"
volume: "{{Vol}}"
issue: "{{Issue}}"
pages: "{{Pages}}"
doi: "{{DOI}}"  # Required for journal articles. Use "N/A" for books/textbooks
pmid: "{{PMID}}"  # Required for journal articles. Use "N/A" for books/textbooks
pmcid: "{{PMCID}}"
zotero-select: "zotero://select/items/{{ZOTERO_KEY}}"
zotero-key: "{{ZOTERO_KEY}}"
url: "{{URL}}"
pdf-path: "01-References/Assets/PDFs/{{FILENAME}}.pdf"
tier: "{{1|2|3}}"
relevance: |
  {{Why this matters for our work — 2-3 sentences}}
abstract: |
  {{Full abstract from PubMed or paper}}
notes: |
  {{Personal notes from Zotero reading — key insights, critiques, questions}}
tags:
  - "reference"
  - "{{topic1}}"
  - "{{topic2}}"
domains:
  - "{{001|002|003|etc}}"
status: "pending" | "processing" | "extracted" | "complete"
extraction-priority: "P0" | "P1" | "P2"
parent-moc: "[[MOC-Research-Methods]]"
connections:
  extracted-zettels:
    - "[[{{Zettel_Title}}_[{{Zettel_UID}}]]]"
    - "[[{{Zettel_Title}}_[{{Zettel_UID}}]]]"
  synthesis-links:
    - "[[{{Synthesis_Title}}_[{{Synthesis_UID}}]]]"
  related-refs:
    - "[[{{Reference_Title}}_[{{Reference_UID}}]]]"
  supports-claims:
    - "[[{{Zettel_Title}}_[{{Zettel_UID}}]]]"
  contradicts-claims:
    - "[[{{Zettel_Title}}_[{{Zettel_UID}}]]]"
  methods-source:
    - "[[{{Zettel_Title}}_[{{Zettel_UID}}]]]"
litnotes-created:
  - "[[LitNote_{{Short_Title}}_{{L-XXX-XXXX}}]]"
extraction-date: "{{YYYY-MM-DD}}"
extracted-by: "RON" | "Simos"
quality-score: "high" | "medium" | "low"
---

# {{Author}} {{Year}} — {{Short Title}}

> **{{Full Title}}**

---

## 📋 Source Metadata

| Field | Value |
|-------|-------|
| **Authors** | {{Author Names}} |
| **Year** | {{YYYY}} |
| **Journal** | {{Journal}} |
| **Volume/Issue** | {{Vol}}({{Issue}}) |
| **Pages** | {{Pages}} |
| **DOI** | [{{DOI}}](https://doi.org/{{DOI}}) |
| **PMID** | [{{PMID}}](https://pubmed.ncbi.nlm.nih.gov/{{PMID}}) |
| **Zotero** | [Open in Zotero]({{zotero-select}}) |
| **PDF** | [[{{pdf-path}}]] |

---

## 🎯 Relevance

{{Why this matters for our work — 2-3 sentences}}

---

## 📝 Abstract

{{Full abstract}}

---

## 💡 Personal Notes

{{Personal notes from Zotero reading — key insights, critiques, questions}}

---

## 🔗 Connections

### Extracted Zettels
- [[{{Zettel_Title}}_[{{Zettel_UID}}]]] — {{Description}}
- [[{{Zettel_Title}}_[{{Zettel_UID}}]]] — {{Description}}

### Synthesis Links
- [[{{Synthesis_Title}}_[{{Synthesis_UID}}]]] — {{How it fits}}

### Related References
- [[{{Reference_Title}}_[{{Reference_UID}}]]] — {{Connection type}}

### Evidence Relationships
- **Supports:** [[{{Zettel_Title}}_[{{Zettel_UID}}]]]
- **Contradicts:** [[{{Zettel_Title}}_[{{Zettel_UID}}]]]
- **Methods:** [[{{Zettel_Title}}_[{{Zettel_UID}}]]]

---

## 📚 LitNotes Created

1. [[LitNote_{{Short_Title}}_{{L-XXX-XXXX}}]] — {{Status}}

---

## ✅ Extraction Status

- [ ] Abstract reviewed
- [ ] Key concepts identified
- [ ] Zettels extracted
- [ ] Connections verified
- [ ] Synthesis integrated

**Status:** {{status}} | **Priority:** {{extraction-priority}} | **Quality:** {{quality-score}}

---

*Reference added: {{YYYY-MM-DD}}*  
*Last updated: {{YYYY-MM-DD}}*  
*Extracted by: {{extracted-by}}*

---

## Post-Processing Checklist

- [ ] PMID verified via PubMed
- [ ] DOI resolves correctly
- [ ] Zotero link functional
- [ ] Abstract complete
- [ ] At least 1 zettel connection
- [ ] Parent MOC assigned
- [ ] Tags appropriate
- [ ] Quality score assigned

---

*Template: Reference_v2.0 | Zotero-integrated | Enhanced connectivity*
