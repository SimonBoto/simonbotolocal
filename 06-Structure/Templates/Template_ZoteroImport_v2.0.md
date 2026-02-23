---
aliases: [Template-Zotero-Import]
tags: [template, reference, zotero, v4.1]
version: 2.1
---

# Template: Zotero Import v2.1

**Purpose:** Auto-generated from Zotero library import  
**Target Length:** Variable (auto-populated)  
**Output Location:** `01-References/Zotero/`  
**Filename:** `Zotero_{{CiteKey}}_[R-{{DDD}}-{{SSSS}}].md`

---

## YAML Frontmatter (v4.1)

```yaml
---
uid: R-{{DDD}}-{{SSSS}}
type: reference
zotero-key: {{item.key}}
title: {{item.title}}
authors: {{item.creators}}
year: {{item.date}}
journal: {{item.publicationTitle}}
doi: {{item.DOI}}
pmid: {{item.extra}}
citekey: {{item.citekey}}
tags: [ref, {{item.itemType}}, zotero]
parent-moc: [[MOC-References]]
status: ref
confidence: medium
source: zotero-import
extraction-date: {{YYYY-MM-DD}}
---
```

---

# {{item.title}}

## 📋 Bibliography
{{bibliography}}

## 🔑 Citekey
`@{{item.citekey}}`

## 📝 Abstract
{{item.abstractNote}}

## 💡 Key Insights
- 
- 
- 

## 🔗 Connections
- [[ ]]
- [[ ]]

## 🏷️ Tags
{{item.tags}}

## 📚 Related References
- 

---
*Imported from Zotero on {{YYYY-MM-DD}}*
