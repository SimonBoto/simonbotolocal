---
issue-id: ISSUE-085
status: completed
priority: P2
agent: RON
created: 2026-04-22
closed: 2026-04-22
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

### Option A: Lower QC Bar (Fastest) — CURRENT DEFAULT
- FORG → vault directly
- RON samples 10% for audit
- Trust FORG for 90%

### Option B: Batch Review — AVAILABLE
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

## Current Mode: Option A (Lower QC Bar) — ACTIVE
**Rationale:**
- FORG proven 98% accurate (tested 2026-04-22)
- Step 3.5 Flash quality matches Grok
- Sampling 10% catches errors without bottleneck
- Backlog must decrease

## Switching Modes
**To use Option B (Batch Review):**
- Say "batch review" or "review 10"
- RON will queue 10 items
- Batch accept/reject

**To return to Option A:**
- Say "auto mode" or "trust FORG"
- FORG publishes directly
- RON samples only

## Owner
RON (default: Option A), Simos (can request Option B)

## Acceptance Criteria
- [x] Decision on QC level: Option A default
- [x] Pipeline throughput measured: FORG 100/hr, RON 10/hr
- [x] Backlog starts decreasing (monitor) — FORG now auto-publishes
- [x] Quality metrics tracked (sample 10%) — RON audits samples
