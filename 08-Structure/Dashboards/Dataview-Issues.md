---
uid: DASHBOARD-DATAVIEW-001
type: dashboard
title: "Live Issue Dashboard"
date: 2026-04-22
---

# 📊 Live Issue Dashboard

> Auto-updates as issues change. Refresh Obsidian to see latest.

## Active Issues (P0)

```dataview
TABLE id, priority, status, assignee
FROM "08-Structure/Issues"
WHERE status = "active" AND priority = "P0"
SORT created DESC
```

## All Active Issues

```dataview
TABLE id, priority, status, assignee, energy
FROM "08-Structure/Issues"
WHERE status = "active"
SORT priority ASC, created DESC
```

## Recently Completed

```dataview
TABLE id, completed-date
FROM "08-Structure/Issues"
WHERE status = "completed"
SORT created DESC
LIMIT 5
```

## Issue Stats

```dataview
WITHOUT ID
concat("Total: ", length(rows)) as Count
count
FROM "08-Structure/Issues"
GROUP BY status
```
