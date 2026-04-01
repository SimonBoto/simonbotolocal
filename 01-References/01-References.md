---
uid: IDX-01
folder: 01-References
type: index
title: "01-References — Source Management"
aliases: [References, Sources, Bibliography]
tags: [index, references, sources, bibliography, navigation, folder]
parent-index: [[00-MISSION]]
child-folders: "[[01-References-Hub]], [[01-References-Other]], [[01-References-Zotero]], [[01-References-Assets]]"
status: active
---

# 📚 01-References — Source Management

**Purpose:** Bibliographic cards and source tracking. Every knowledge claim traces back to a source.

> *"Sources are the foundation. Zettels are the structure."*

---

## 📁 Subfolders

| Folder | Purpose | Contents |
|--------|---------|----------|
| **[[01-References-Hub\|Hub/]]** | Bibliographic cards | Author_Year_Title.md with full citation |
| **[[01-References-Other\|Other/]]** | Non-academic sources | Blogs, videos, podcasts |
| **[[01-References-Zotero\|Zotero/]]** | Zotero sync | Auto-imported from Zotero |
| **[[01-References-Assets\|Assets/]]** | Binary files | PDFs, images, data files |

### Assets Subfolders
- **Assets/PDFs/** — Source papers, e-books
- **Assets/Images/** — Diagrams, charts, photos  
- **Assets/Data/** — CSV, raw metabolomics data

---

## 🔄 Workflow

```
New Source Discovered
    ↓
Create Hub Card (if academic)
    ↓
Process to LitNote (02-Literature/)
    ↓
Extract Zettels (03-Zettels/Conscious/)
    ↓
Link Back to Hub (bidirectional)
```

---

## 📊 Current Status

| Folder | Count | Status |
|--------|-------|--------|
| Hub references | {{query: list from "01-References/Hub"}} | 🟢/🟡/🔴 |
| Zotero synced | {{query: list from "01-References/Zotero"}} | 🟢/🟡/🔴 |
| Other sources | {{query: list from "01-References/Other"}} | 🟢/🟡/🔴 |

---

## 📝 Hub Card Template

```markdown
---
uid: R-{DDD}-{SSSS}
type: ref-hub
authors: [Author, A., Author, B.]
year: 2024
title: Full Paper Title
journal: Journal Name
doi: 10.xxxx/xxxxx
zotero: [link]
tags: [reference, topic]
---

# Author_Year — Short Title

**Full Citation:** ...

## Key Claims
- Claim 1
- Claim 2

## Linked LitNotes
- [[LitNote_Author_2024]]

## Linked Zettels
- [[Zettel_Claim_1]]
- [[Zettel_Claim_2]]
```

---

## 🔗 Navigation

← **Back to [[00-Inbox]]** — Capture & Input  
→ **Next: [[02-Literature]]** — Source Processing  
↑ **Parent: [[00-MISSION]]**

**Siblings:**
[[00-Inbox]] | [[02-Literature]] | [[03-Zettels]] | [[04-Synthesis]] | [[05-Projects]] | [[06-Structure]] | [[08-Dashboards]] | [[09-System]]

---

*Every claim needs a source. Every source needs a home.*
