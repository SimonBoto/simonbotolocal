<!-- NEW_NAME: MOC-Metabolomics-Protocols.md -->
#atomic
---
uid: 20260214141600
tags: [moc #protocol #metabolomics #phd clinic]
status: active
parent-moc: [[88-Mocs/Zettel_Biomarkers_MOC]]
aliases: [Metabolomics_Protocols_MOC]
---

# Zettel_Metabolomics_Protocols_MOC

**Clinical & PhD Protocols Hub** (GC-MS/OA targeted metabolomics).

## Key Protocols
- [[44-Clinic/Protocol_Clinical_IR_Preanalytics]] #plasma OA/FFA, fasting standards
- [[44-Clinic/Protocol_MC_Patient_Flow]] clinic workflow
- [[44-Clinic/Protocol_MC_Diet_Proposal_Update]] #intervention

## Dictionary & References
- [[44-Clinic/Dictionary_Metabolomics]]
- [[44-Clinic/Zettel_Metabolomics]]

## Dataview
```dataview
LIST FROM "44-Clinic" 
WHERE contains(tags, "#protocol") 
  OR contains(tags, "#metabolomics")
SORT file.ctime DESC
```

## PhD Cohorts\n- [[33-PhD/Zettel_IR_Cohort_N50]]\n\nLinks: [[88-Mocs/Zettel_Biomarkers_MOC]] | [[88-Mocs/MOC_Clinic]] | [[22-Dashboards/Zettel_KANBAN_PhD_Progress]]