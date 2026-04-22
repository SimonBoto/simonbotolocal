---
issue-id: ISSUE-082
status: pending
priority: P2
agent: RON
created: 2026-04-22
updated: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-082: Audit Zettel Sourcing — 112 Placeholder Sources Need Real Academic Links

## Problem
112 zettels have `source-litnote: legacy-no-source` — placeholder, not real academic sources.

## Evidence (from ISSUE-077 audit)
- Total zettels: 1,341
- With source-litnote field: 1,341 (100%)
- Real sources: ~1,229
- **Placeholder (`legacy-no-source`): 112**
- Missing entirely: 0

## Audit Results (30-sample)
- Valid YAML: 26/30 (86%)
- Has source-litnote: 30/30 (100%)
- Has parent-moc: 29/30 (96%)
- Has wiki links: 0/30 (0%) — FIXED by FORG batch job (+21 links)

## The 112 Placeholder Zettels
Need real academic sources. FORG can:
- List all 112
- Attempt web search for sources
- Create LitNotes if sources found
- CANNOT evaluate scientific validity (needs RON/SAGE)

## Action Pending
- [ ] List all 112 placeholder zettels
- [ ] Categorize by topic/domain
- [ ] Batch research sources (FORG + web search)
- [ ] RON validates sources
- [ ] Update zettels with real source-litnote

## Owner
RON (with FORG assistance)

## Acceptance Criteria
- [ ] 112 placeholder zettels identified
- [ ] Real sources found for >50%
- [ ] Remaining flagged for manual research
- [ ] Ratio improves from 6.3:1 toward 3-5:1
