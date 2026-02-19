```dataview
TABLE length(rows) as "Count"
FROM "02-Atomic"
GROUP BY evidence_tier
SORT length(rows) DESC
```

## Evidence Tier Distribution

| Tier | Count | Description |
|------|-------|-------------|
| RCT | `=length(filter(this.file.inlinks, (x) => x.evidence_tier = "rct"))` | Randomized controlled trials |
| Mechanistic | `=length(filter(this.file.inlinks, (x) => x.evidence_tier = "mechanistic"))` | In-vitro/animal studies |
| Observational | `=length(filter(this.file.inlinks, (x) => x.evidence_tier = "observational"))` | Epidemiological/cohort |
| Needs_Evidence | `=length(filter(this.file.inlinks, (x) => x.evidence_tier = "needs-evidence"))` | Claims requiring verification |

## Quality Assessment
- **High confidence:** >50% RCT or Mechanistic
- **Medium confidence:** Balanced mix
- **Needs work:** >30% Needs_Evidence
