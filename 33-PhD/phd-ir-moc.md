#atomic
---
uid: 20260211220200
tags: [#moc #phd-ir]
---
---
uid: 20260211222401
tags: [#moc #phd-ir #phd-biomarker]
status: active
aliases: [PhD_IR_Hub]
parent-moc: [[22-Dashboards/DASHBOARD_Home]]
---

# PhD_IR_MOC

**IR Biomarkers Hub** (urine OA/FFA GC-MS).

## Atomic Notes
```dataview
LIST FROM "33-PhD/Atomic"
WHERE contains(tags, "#phd-biomarker") OR contains(tags, "#insulin-resistance")
SORT file.ctime DESC
```

## Literature
```dataview
LIST FROM "66-Literature/Atomic_Lit" AND "33-PhD"
WHERE contains(parent-moc, this.file.path)
```

## Orphans
```dataview
LIST FROM "33-PhD/Atomic" WHERE !parent-moc
```

[[33-PhD/Zettel_Suberic_IR_Biomarker]] | [[33-PhD/Zettel_Adipic_IR_Early_Pattern_1]] | [[88-Mocs/Zettel_Biomarkers_MOC]] | [[1Literature/MOC_Literature]] | [[22-Dashboards/Daily_Note]] | Graph: #phd-biomarker | [[33-PhD/Analysis_Plan]] | [[88-Mocs/Zettel_Metabolomics_Protocols_MOC]]