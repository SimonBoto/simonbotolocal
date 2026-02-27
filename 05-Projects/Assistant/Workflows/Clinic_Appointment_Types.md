---
uid: AST-WFL-0001
type: project-note
project: Assistant
folder: Workflows
title: "Clinic Appointment Types & Workflow"
date: 2026-02-25
tags: [assistant, workflow, clinic, appointments]
parent-index: [[05-Projects/Assistant/ASSISTANT_INDEX]]
---

# 🏥 Clinic Appointment Types

**System:** Desknet  
**Workflow:** Templates manually adapted

---

## Appointment Types

| Type | Description |
|------|-------------|
| **Initial assessment** | First patient visit |
| **Follow up assessment** | Return patient visit |
| **Result email preparation** | Drafting metabolomics reports |
| **Result phone call** | Post-email discussion |
| **Explanation of Metabolomics** | Educational session |
| **Metabolomics treatment & guidance** | Protocol planning |
| **Arranged phone call** | Scheduled callbacks |

---

## Phone Batch System

**Daily slot:** 1 hour within protected 2-hour block
**Process:**
1. All requested calls collected throughout day
2. Batched into 1-hour window
3. Tracked: duration + outcome

**Purpose:** Minimize context switching, consolidate admin

---

## Workflow Opportunities

Potential automation/improvement areas:
- [ ] Result email templates in Obsidian → export to Desknet
- [ ] Phone call outcome logging
- [ ] Follow-up scheduling triggers
- [ ] Preparation checklists by appointment type

---

*Captured: 2026-02-25*
