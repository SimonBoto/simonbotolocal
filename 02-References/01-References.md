---
uid: IDX-01
folder: 02-References
type: index
title: "02-References — Source Management"
aliases: [References, Sources, Bibliography]
tags: [index, references, sources, bibliography, navigation, folder]
parent-index: [[00-MISSION]
child-folders: ", , , "
status: active
---

# 📚 02-References — Source Management

**Purpose:** Bibliographic cards and source tracking. Every knowledge claim traces back to a source.

> *"Sources are the foundation. Zettels are the structure."*

---

## 📁 Subfolders

| Folder | Purpose | Contents |
|--------|---------|----------|
| **** | Bibliographic cards | Author_Year_Title.md with full citation |
| **** | Non-academic sources | Blogs, videos, podcasts |
| **** | Zotero sync | Auto-imported from Zotero |
| **** | Binary files | PDFs, images, data files |

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
Process to LitNote (01-Literature/)
    ↓
Extract Zettels (03-Zettels/Conscious/)
    ↓
Link Back to Hub (bidirectional)
```

---

## 📊 Current Status

| Folder | Count | Status |
|--------|-------|--------|
| Hub references | {{query: list from "02-References/Hub"}} | 🟢/🟡/🔴 |
| Zotero synced | {{query: list from "02-References/Zotero"}} | 🟢/🟡/🔴 |
| Other sources | {{query: list from "02-References/Other"}} | 🟢/🟡/🔴 |

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
- 

## Linked Zettels
- 
- 
```

---

## 🔗 Navigation

← **Back to ** — Capture & Input  
→ **Next: ** — Source Processing  
↑ **Parent: [[00-MISSION]**

**Siblings:**
 |  |  |  |  |  |  | 

---

*Every claim needs a source. Every source needs a home.*
