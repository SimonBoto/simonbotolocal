```dataview
LIST
FROM "02-Atomic"
WHERE length(file.inlinks) = 0
SORT file.name ASC
LIMIT 50
```

## Orphan Notes Requiring Connections

These atomic notes have **no incoming links**. They need to be connected to:
- Other atomic notes (see also)
- MOCs (structural placement)
- Reference notes (source context)

## Connection Strategy
1. Check if note content relates to existing MOCs
2. Search for similar keywords in other notes
3. Add bidirectional [[links]]
4. Update MOC indexes
