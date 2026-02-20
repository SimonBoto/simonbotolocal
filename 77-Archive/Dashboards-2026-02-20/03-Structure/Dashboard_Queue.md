```dataview
TABLE file.mtime as "Modified", evidence_tier as "Evidence", status as "Status"
FROM "02-Atomic"
WHERE file.mtime >= date(today) - dur(1 days)
SORT file.mtime DESC
LIMIT 50
```

## 📊 Queue Overview

| Status | Count |
|--------|-------|
| **Total Atomics** | `=length(filter(this.file.inlinks, (x) => contains(x.path, "02-Atomic")))` |
| **Last 24h** | 220 migrated |
| **Pending Review** | 0 |

## 🎯 Next Actions
- ✅ Migration complete
- [ ] Drop new source in `00-Capture/_incoming/`
- [ ] RON will extract to `01-Process/_staging/`
- [ ] Review → approve → promote to `02-Atomic/`

## 🦚 RON v2.0 Status
**Mode:** GREEN  
**Next UID:** 000221  
**Last Update:** 2026-02-20 00:05
