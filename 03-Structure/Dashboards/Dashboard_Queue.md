```dataview
TABLE file.mtime as "Modified", evidence_tier as "Evidence", status as "Status"
FROM "01-Process/_staging"
WHERE file.mtime >= date(today) - dur(7 days)
SORT file.mtime DESC
```

## Staging Queue Overview

| Status | Count |
|--------|-------|
| Draft | `=length(filter(this.file.inlinks, (x) => contains(x.path, "_staging")))` |
| Ready for Review | `=length(filter(this.file.inlinks, (x) => contains(x.path, "_review")))` |

## Next Actions
- Review oldest staging notes first
- Move approved notes to `02-Atomic/`
- Update MOCs after promotion
