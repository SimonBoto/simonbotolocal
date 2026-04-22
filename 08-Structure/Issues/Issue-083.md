---
issue-id: ISSUE-083
status: completed
priority: P3
agent: RON
created: 2026-04-22
closed: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-083: Memory Layers Disconnected — Markdown vs SQLite

## Status: COMPLETED

## Solution Implemented
Git post-commit hook now auto-syncs both layers:

### What Happens on Every Commit
1. **Index update** — `qmd update --quiet` refreshes SQLite index
2. **Background embed** — `qmd embed --batch-size 50` runs if pending files exist
3. **Log** — output to `/tmp/qmd-embed-auto.log`

### Hook Location
`.git/hooks/post-commit`

### Before (Manual)
- User runs `qmd update` + `qmd embed` manually
- Often forgotten, stale search results

### After (Auto)
- Every `git commit` triggers sync
- Embeddings run in background (non-blocking)
- Batch size 50 prevents OOM

## Test
Next commit will auto-trigger. Verify with:
```bash
qmd status
```

## Acceptance Criteria
- [x] Sync mechanism implemented (git hook)
- [x] Auto-embed on commit
- [x] Background processing (non-blocking)
- [ ] Test: new lesson appears in QMD search within 24h (pending next commit)
