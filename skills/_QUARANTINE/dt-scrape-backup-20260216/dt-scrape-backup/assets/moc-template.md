---
uid: {{YYYYMMDDHHMMSS}}
tags: [#moc #dt-clinic #{{TOPIC}} #phd-biomarker]
parent-moc: [[55-MOCs/Literature]] | [[22-Dashboards/PhD_IR_MOC]]
aliases: [MOC_DT_{{SLUG}}]
status: atomic
confidence: high
source: [[66-Literature/{{LIT_SLUG}}_YYYYMMDD_001]]
---

# MOC_DT_{{SLUG}}_YYYYMMDD_500

**Overview**: DT clinic zettel cluster: {{X}} refs + {{Y}} atomics (VitD/IR/adipic hooks).

**Lit-Full**: [[66-Literature/{{LIT_SLUG}}_YYYYMMDD_001]]

**References**: {{LIST [[REFS]]}}

**Atomics (Dynamic Zettels)**: {{LIST [[ATOMICS BY GROUP e.g. Claims | Biomarkers | Protocols]}}}

**Dataview**: `LIST FROM "33-Atomic" WHERE contains(tags, "#dt-clinic") AND contains(file.name, "{{SLUG}}")`

**Next MOCs**: [[MOC_VitD_IR]] | [[MOC_Adipic_HiddenHunger]].
**RON**: Pipeline: {{Y}} strong unique zettels → PhD graph.