---
name: MOC Consolidation
version: v1.0
category: synthesis
agent: RON
created: 2026-04-15
status: stable
uses: 3
---

# Skill: MOC Consolidation

> Merge overlapping MOCs, update all links, reduce navigation friction

## Purpose
Consolidate redundant MOCs into canonical ones, preserving all connections.

## When to Use
- MOC count >100
- Overlapping themes identified
- Navigation complaints
- Quarterly cleanup

## When NOT to Use
- MOCs have distinct purposes
- Active projects depend on structure
- No time for link verification

## Steps

### 1. Identify Candidates
```bash
# List all MOCs
ls 08-Structure/MOCs/MOC-*.md | wc -l

# Find overlapping themes
grep -l "insulin" 08-Structure/MOCs/MOC-*.md
```

### 2. Plan Merges
| Keep | Merge Into | Update Links |
|------|------------|--------------|
| MOC-Insulin-Signaling | MOC-Insulin-Resistance | 23 files |
| MOC-Glucose-Metabolism | MOC-Metabolic-Pathways | 17 files |

### 3. Execute Wave
```bash
# Wave 1: Merge 26 → 12
# Update all incoming links
# Verify no broken links
```

### 4. Verify
```bash
# Check for broken links
grep -r "MOC-Old-Name" 03-Zettels/ 04-Synthesis/

# Should return 0 results
```

### 5. Commit
```bash
git add .
git commit -m "MOC consolidation wave X: [N] → [M] MOCs"
```

## Verification
- [ ] All old MOCs removed
- [ ] Links updated
- [ ] No orphans created
- [ ] Navigation improved

## Common Failures

| Failure | Cause | Fix | Source |
|---------|-------|-----|--------|
| Broken links | Missed references | `grep -r` before commit | ISSUE-007 |
| Orphan zettels | Lost parent-moc | Reassign to new MOC | ISSUE-007 |
| Wrong merge | Similar names | Verify content before merge | ISSUE-007 |
| Invented MOCs | Didn't verify existence | `ls MOCs/MOC-*.md` first | Error P007 |

## Evolution Log

| Version | Date | Change |
|---------|------|--------|
| v1.0 | 2026-04-15 | 134 → 79 MOCs, 3 waves |

## Related

- Used in: ISSUE-007
- Tool: `moc-audit.sh` (weekly integrity check)
