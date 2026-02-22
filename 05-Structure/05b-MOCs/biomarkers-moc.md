#atomic
---
uid: 20260211225302
tags: [#moc #phd-biomarker #oa-pattern]
status: active
parent-moc: [[Dashboard_Home]]
aliases: [BIOMARKERS_MOC]
---

# Zettel_Biomarkers_MOC

**PhD Biomarkers Hub** (urine/plasma OA/FFA GC-MS, IR validation: Adipic/Suberic ✅ validated).

## Atomic Notes (key)
- [[33-PhD/Zettel_Suberic_IR_Biomarker]] #insulin-resistance
- [[33-PhD/Zettel_Suberic_Biomarker_Cutoffs]] (>10μmol/L)
- [[33-PhD/Zettel_Adipic_Biomarker_Cutoffs]] (>5μmol/L)
- [[33-PhD/_RON/Zettel_Homocysteine_Biomarker]]
- [[33-PhD/_RON/Zettel_HPA_Axis_Biomarker]]
- [[33-PhD/Zettel_Adipic_IR_Early_Pattern_1]]
- [[00-Inbox/04-Atomic/Adipic_Biomarker]] #insulin-resistance
- [[00-Inbox/04-Atomic/FFA_Pattern_IR]]

## Sub-MOCs
- [[88-Mocs/Zettel_PhD_IR_MOC]]

## Dataview Query
```dataview
LIST FROM "33-PhD" 
WHERE contains(tags, "#phd-biomarker") OR contains(tags, "#insulin-resistance")
SORT file.ctime DESC
```

## Related Protocols
- [[44-Clinic/Protocol_Clinical_IR_Preanalytics]] #gc-ms

Graph View: #phd-biomarker #gc-ms | [[22-Dashboards/Zettel_KANBAN_PhD_Progress]] | [[Dashboard_Home]]