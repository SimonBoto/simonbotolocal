---
issue-id: ISSUE-080
status: open
priority: P0
agent: RON/FORG
created: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-080: Inbox Crisis — 757 Unprocessed Items (46% of Vault)

## Problem
757 items in 00-Inbox vs 1,634 zettels = 46% of vault mass is unprocessed. FORG produces faster than RON curates.

## Evidence
- 00-Inbox/Fleeting/ChatGPT/: 673 conversations
- 00-Inbox/Fleeting/: articles, notes, threads
- 00-Inbox/Processed/: only 29 files
- Ratio: Inbox/Zettels = 46% (healthy: <20%)

## Root Cause
Pipeline imbalance: FORG extracts 100 zettels/hour, RON reviews 10/hour = 10:1 bottleneck

## Options
1. **Batch review** — RON audits 10 at a time, not 1
2. **Lower QC bar** — FORG → vault directly, RON samples
3. **Scheduled FORG runs** — process inbox in batches without RON blocking
4. **Archive old inbox** — items >90 days → archive without processing

## Cost Impact
- Current: Inbox growth triggers expensive RON sessions
- Fixed: Batch processing reduces per-item cost

## Owner
RON (strategy), FORG (execution)

## Acceptance Criteria
- [ ] Inbox <200 items (target: <100)
- [ ] Processing rate > creation rate
- [ ] Pipeline documented
