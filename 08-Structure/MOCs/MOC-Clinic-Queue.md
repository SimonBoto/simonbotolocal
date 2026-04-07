<!-- NEW_NAME: MOC-Clinic-Queue.md -->
#atomic
---
uid: 20260211220500
tags: [moc clinic]
---
---
uid: 20260211222402
tags: [moc clinic insulin-resistance]
status: active
aliases: [Clinic_Hub]
parent-moc: "[[MOCs-Index]]"
---

# Clinic_Queue_MOC

**Clinic Protocols/Reports** (OA patterns, low-carb).

## Atomic Notes
```dataview
LIST FROM "44-Clinic/Atomic"
WHERE contains(tags, "clinic") OR contains(tags, "oa-pattern")
SORT file.ctime DESC
```

## Literature
```dataview
LIST FROM "77-Archive/Legacy_20260222/Refs-Legacy/Atomic_Lit" AND "44-Clinic"
WHERE contains(parent-moc, this.file.path)
```

## Orphans
```dataview
LIST FROM "44-Clinic/Atomic" WHERE !parent-moc
```

 |  |  |  | 

---

## 🔗 Related MOCs

| MOC | Connection |
|-----|------------|
| MOC-Example | {{Why related}} |
| MOC-Example | {{Why related}} |


---

## 📄 Synthesis Documents

- [[{{Synthesis_Title}}_{{S-XXX-XXXX}}]] — {{Description}}


---

## 📚 Source LitNotes

| LitNote | Zettels Extracted | Status |
|---------|-------------------|--------|
| [[{{LitNote_Title}}_{{L-XXX-XXXX}}]] | {{N}} zettels | {{status}} |


---

## 🆕 Zettel Backlog

**Zettels to create:**
- [ ] {{Zettel idea}} — {{Why needed}}

**Zettels to review for promotion:**
- [ ] [[{{Zettel_Title}}_{{Z-XXX-XXXX}}]] — {{Why ready}}


---

## 📝 Status History

| Date | Status | Notes |
|------|--------|-------|
| {{YYYY-MM-DD}} | created | Initial MOC setup |

---
parent-index: [[08-Structure-Index]], [[MOCs-Index]]
