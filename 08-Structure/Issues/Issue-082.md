---
issue-id: ISSUE-082
status: open
priority: P2
agent: RON
created: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-082: Audit Zettel Sourcing — 6:1 Ratio (1,634 Zettels / 259 LitNotes)

## Problem
1,634 zettels on 259 LitNotes = 6.3:1 ratio. Either:
- (a) Lots of synthesis zettels (legitimate)
- (b) Unsourced zettels (quality risk)

## Evidence
- Zettels: ~1,634
- LitNotes: 259
- Ratio: 6.3:1
- Healthy ratio: 3-5:1

## Action
Audit random sample of 30 zettels:
- [ ] Check `source-litnote` field exists
- [ ] Verify source-litnote links to real LitNote
- [ ] Check body has `[[LitNote]]` link
- [ ] Flag unsourced zettels

## Method
```bash
cd ~/Workspaces/TheOptimizedBrain/03-Zettels/Conscious
ls | shuf | head -30 | xargs grep -L "source-litnote"
```

## Owner
RON

## Acceptance Criteria
- [ ] 30 zettels audited
- [ ] Sourcing rate calculated (% with valid source)
- [ ] Unsourced zettels flagged
- [ ] Fix plan for unsourced
