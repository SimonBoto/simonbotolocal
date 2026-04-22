---
issue-id: ISSUE-085
status: open
priority: P2
agent: RON
created: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-085: Pipeline Imbalance — FORG Produces 10x Faster Than RON Reviews

## Problem
FORG extracts ~100 zettels/hour. RON reviews ~10/hour. Creates perpetual backlog.

## Evidence
- Inbox: 757 items (growing)
- Zettels: 1,634 (growing)
- LitNotes: 259 (growing)
- Backlog ratio: 46%

## Root Cause
RON is bottleneck. Single-threaded QC gate.

## Solutions (Ranked)

### Option A: Lower QC Bar (Fastest)
- FORG → vault directly
- RON samples 10% for audit
- Trust FORG for 90%

### Option B: Batch Review
- RON reviews 10 at a time
- Batch accept/reject
- Reduces context switching

### Option C: Parallel Review
- Multiple RON instances (if possible)
- Or: RON + FORG both review, compare

### Option D: Tiered QC
- FORG: First pass (automated)
- RON: Second pass (sample)
- SAGE: Third pass (disputes only)

## Recommendation
**Option A (Lower QC Bar)** — FORG is already 98% accurate. Sampling 10% catches errors without bottleneck.

## Owner
RON (decision), Simos (approval)

## Acceptance Criteria
- [ ] Decision on QC level
- [ ] Pipeline throughput measured
- [ ] Backlog starts decreasing
- [ ] Quality metrics tracked
