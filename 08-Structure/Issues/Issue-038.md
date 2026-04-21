---
uid: ISSUE-038
type: issue
title: ".openclaw Directory Cleanup — Archive Old Backups & Preserve JUNIOR"
date: 2026-04-21
status: open
priority: P2
---

# ISSUE-038: .openclaw Directory Cleanup

## Problem Statement

The `~/.openclaw/` directory contains 1.2GB+ of data with mixed value:
- Old backups from February (superseded)
- JUNIOR agent workspace (active project)
- Browser cache (can be cleaned)
- Experiment workspaces (need review)

## Assessment

| Folder | Size | Status | Recommendation |
|--------|------|--------|----------------|
| `browser/` | 732M | Browser cache | Clean if needed |
| `archive/` | 254M | Old backups | **Delete Feb backups** |
| `Philosophy/` | 8.2M | JUNIOR agent + research | **Move to vault** |
| `agents/` | 191M | Active sessions | Keep |
| `workspace-forg/` | 6.4M | FORG workspace | Keep |
| `workspace-scout/` | 500K | SCOUT workspace | Keep |

## Archive/ Contents (Review Needed)

| Folder | Date | Action |
|--------|------|--------|
| `.openclaw_backup_20260219T184520Z` | Feb 19 | **Delete** — 2+ months old |
| `workspacebackup 19.2` | Feb 19 | **Delete** — superseded |
| `workspace-grok` | Feb 26 | **Review** — experiment value? |
| `workspace-minimax` | Feb 26 | **Review** — experiment value? |
| `workspace-old-20260409` | Apr 9 | **Keep** — recent backup |
| `workspace-scout` | Feb 26 | **Review** — experiment value? |

## Philosophy/ Contents (Preserve)

| Component | Status |
|-----------|--------|
| JUNIOR agent workspace | Active — complete agent with 5 aspects |
| 5 research synthesis docs | Knowledge work — move to vault |
| phInbox | Awaiting Leonardo book |

## Proposed Actions

### Phase 1: Safe Deletions
- [ ] Delete `archive/.openclaw_backup_20260219T184520Z`
- [ ] Delete `archive/workspacebackup 19.2`
- [ ] Clean `browser/` cache if needed

### Phase 2: Content Preservation
- [ ] Move `Philosophy/` → `~/Workspaces/TheOptimizedBrain/07-Projects/Philosophy/`
- [ ] Preserve JUNIOR agent structure
- [ ] Integrate 5 research docs into vault

### Phase 3: Experiment Review (Optional)
- [ ] Review `workspace-grok/` — any valuable experiments?
- [ ] Review `workspace-minimax/` — any valuable experiments?
- [ ] Review `workspace-scout/` — any valuable experiments?

## Safety Notes

- **JUNIOR is an active agent project** — preserve carefully
- **Recent backup (Apr 9)** — keep for safety
- **February backups** — safe to delete (2+ months old)

## Related

- [[ISSUE-037]] — Anchor system (completed)
- [[ISSUE-036]] — LitNote audit (completed)
- [[07-Projects/Agents/JUNIOR]] — If moved to vault

## Owner

RON + Simos decision on experiment workspaces

---
*Created: 2026-04-21*
*Status: Awaiting decision on experiment folders*
