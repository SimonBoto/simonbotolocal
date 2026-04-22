---
issue-id: ISSUE-083
status: open
priority: P3
agent: RON
created: 2026-04-22
source: SAGE Vault Assessment
---

# ISSUE-083: Memory Layers Disconnected — Markdown vs SQLite

## Problem
Dual-layer memory system exists but layers don't sync:
- Layer 1: Human-readable Markdown (MEMORY.md, daily notes)
- Layer 2: Machine-searchable SQLite/Vectors (QMD, LanceDB)

## Evidence
- MEMORY.md updated manually
- QMD indexes exist but unclear if current
- DREAMS.md exists but consolidation unclear
- No automated sync between layers

## Impact
- Search finds stale results
- Memory recall misses recent lessons
- Agent orientation outdated

## Fix Options
1. **Auto-index on commit** — git hook triggers qmd reindex
2. **Daily sync job** — cron runs qmd embed + index
3. **Real-time sync** — file watcher triggers on save

## Owner
RON

## Acceptance Criteria
- [ ] Sync mechanism documented
- [ ] Test: new lesson appears in QMD search within 24h
- [ ] DREAMS.md consolidation verified
- [ ] Memory layers diagram created
