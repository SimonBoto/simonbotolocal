---
aliases: [Template-Index, Dashboard-Template]
tags: [template, index, dashboard, navigation, v4.1]
version: 2.1
---

# Template: Index / Dashboard v2.1

**Purpose:** Navigation hub, dashboard, or table of contents  
**Target Length:** 300-600 words (plus Dataview queries)  
**Output Location:** `08-Dashboards/` (for dashboards) or `06-Structure/MOCs/` (for MOCs)  
**Status:** active → archived

---

## YAML Frontmatter (v4.1)

```yaml
---
uid: {{YYYYMMDD}}{{HHMM}}
type: index
title: {{Index Title}}
aliases: [{{ShortName}}]
tags: [index, {{type}}, {{domain}}, navigation]
parent-moc: [[{{ParentMOC}}]]
status: active  # active → archived
confidence: high
update-frequency: {{daily | weekly | monthly}}
last-updated: {{YYYY-MM-DD}}
---
```

---

## Structure

### 1. Purpose Statement (1 sentence)
**What this index tracks and why:**

Example:
> Central hub for PhD metabolomics research tracking biomarkers, literature, and progress.

---

### 2. Quick Stats
| Metric | Value | Trend |
|--------|-------|-------|
| **Atomics** | {{N}} | {{↑↓→}} |
| **Refs** | {{N}} | {{↑↓→}} |
| **Gaps** | {{N}} | {{↑↓→}} |
| **Last update** | {{Date}} | — |

---

### 3. Sections/Child MOCs
| Section | Description | Link |
|---------|-------------|------|
| **{{Section 1}}** | {{What it contains}} | [[{{MOC_1}}]] |
| **{{Section 2}}** | {{What it contains}} | [[{{MOC_2}}]] |
| **{{Section 3}}** | {{What it contains}} | [[{{MOC_3}}]] |

---

### 4. Dataview Queries (Auto-Populated)

#### Recent Additions
```dataview
LIST
FROM "{{Scope}}"
WHERE file.ctime > date(today) - dur(7 days)
SORT file.ctime DESC
LIMIT 10
```

#### By Status
```dataview
TABLE status, confidence
FROM "{{Scope}}"
WHERE status
SORT status ASC
```

#### By Tag
```dataview
LIST
FROM #{{tag}}
SORT file.name ASC
```

---

### 5. Priority Actions
| Priority | Action | Owner | Due |
|----------|--------|-------|-----|
| {{High/Med/Low}} | {{Task}} | {{Who}} | {{Date}} |
| {{High/Med/Low}} | {{Task}} | {{Who}} | {{Date}} |

---

### 6. Quick Links
| Category | Links |
|----------|-------|
| **Key Atomics** | [[{{Atomic_1}}]] | [[{{Atomic_2}}]] |
| **Active Refs** | [[{{Ref_1}}]] | [[{{Ref_2}}]] |
| **Templates** | [[{{Template_1}}]] | [[{{Template_2}}]] |
| **External** | [{{Name}}]({{URL}}) |

---

### 7. Navigation
- **↑ Parent:** [[{{Parent_MOC}}]]
- **→ Siblings:** [[{{Sibling_1}}]] | [[{{Sibling_2}}]]
- **↓ Children:** [[{{Child_1}}]] | [[{{Child_2}}]]

---

### 8. RON Ledger
- **Input:** {{What triggered creation}}
- **Structure designed:** {{YYYY-MM-DD}}
- **Queries validated:** {{YYYY-MM-DD}}
- **Update cycle:** {{Frequency}}

---

## Variations

### For Dashboards (22-Dashboards/)
Add:
- Kanban boards
- Progress bars
- Heat maps
- Burndown charts

### For MOCs (55-MOCs/)
Add:
- Conceptual groupings
- Thematic clusters
- Knowledge relationships
- Learning paths

### For Project Tracking
Add:
- Milestone table
- Deliverable checklist
- Resource allocation
- Risk register

---

## Quality Checklist

- [ ] Purpose clear
- [ ] Stats current
- [ ] Navigation intuitive
- [ ] Dataview queries working
- [ ] Links validated
- [ ] Update cycle defined

---

*Template: Index Note v2.0 | Use for dashboards and navigation hubs*
