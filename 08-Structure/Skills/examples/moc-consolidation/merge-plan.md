# MOC Consolidation — Wave 1 Merge Plan

## MOCs to Merge

| Keep (Canonical) | Merge Into | Files to Update | Rationale |
|------------------|------------|-----------------|-----------|
| MOC-Insulin-Signaling | MOC-Insulin-Resistance | 23 | Broader scope, more connections |
| MOC-Glucose-Metabolism | MOC-Metabolic-Pathways | 17 | Overlapping content |
| MOC-Lipid-Metabolism | MOC-Metabolic-Pathways | 12 | Subset of pathways |

## Steps

1. **Backup** — Git checkpoint
2. **Merge content** — Move unique content from redundant MOCs to canonical
3. **Update links** — Find/replace all incoming links
4. **Delete redundant** — Remove merged MOCs
5. **Verify** — Check no broken links remain
6. **Commit** — Document changes

## Verification

```bash
# Check for orphaned links
grep -r "MOC-Insulin-Resistance" 03-Zettels/ 04-Synthesis/
# Should return 0 results (all updated to MOC-Insulin-Signaling)
```
