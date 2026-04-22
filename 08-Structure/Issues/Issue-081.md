---
issue-id: ISSUE-081
status: open
priority: P1
agent: RON
created: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-081: Subconscious Layer is Empty — Promotion Pipeline Broken

## Problem
03-Zettels/Subconscious/ has 0 files. The promotion layer (Conscious → Subconscious) is completely unused.

## Evidence
```bash
ls ~/Workspaces/TheOptimizedBrain/03-Zettels/Subconscious/
# Returns: empty
```

## What Should Happen
Per Weekly Consolidation Ritual:
1. Zettels >30 days old
2. Criteria: 2+ links, referenced, no flags
3. Move Conscious → Subconscious

## Why It Matters
- Subconscious is the "trusted knowledge base"
- Without promotion, all zettels stay in working memory
- Creates clutter and reduces signal-to-noise

## Fix Options
1. **Automated promotion** — cron job runs weekly
2. **RON manual** — during Sunday ritual
3. **FORG batch** — process eligible zettels

## Owner
RON

## Acceptance Criteria
- [ ] Subconscious has >50 zettels
- [ ] Promotion criteria documented
- [ ] Weekly ritual includes promotion step
- [ ] Eligible zettels identified (2+ links, >30 days)
