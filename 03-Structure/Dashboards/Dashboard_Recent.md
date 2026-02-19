```dataview
TABLE file.mtime as "Modified", wordcount as "Words"
FROM "02-Atomic"
WHERE file.mtime >= date(today) - dur(7 days)
SORT file.mtime DESC
LIMIT 20
```

## Recent Activity (7 Days)

**Notes created/modified:** `=length(filter(this.file.inlinks, (x) => x.file.mtime >= date(today) - dur(7 days)))`

**Total words added:** Sum of word counts from recent notes

## Sprint Progress
- **Phase:** [Current phase]
- **Batch:** [X of Y]
- **Notes processed:** [Count]
- **Target completion:** [Date]
