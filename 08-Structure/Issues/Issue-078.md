---
issue-id: ISSUE-078
status: open
priority: P4
agent: RON/FORG
created: 2026-04-22
source: SAGE Assessment
---

# ISSUE-078: Consider Collapsing SCOUT to Mode (Not Separate Agent)

## Problem
SCOUT (free Nemotron) has produced only 548KB vs FORG's 6.8MB — 12x productivity gap. Separate agent adds maintenance overhead.

## Options
1. **Keep SCOUT** as separate agent (status quo)
2. **Collapse to mode** — RON/FORG invokes Nemotron as model choice for exploration
3. **Schedule SCOUT** — Run autonomously on cron without RON supervision

## Trade-offs
| Option | Pros | Cons |
|--------|------|------|
| Keep | Clear separation | Maintenance overhead |
| Collapse | Simpler architecture | Less clear ownership |
| Schedule | True automation | Risk of unsupervised runs |

## Owner
RON (recommendation), Simos (decision)

## Acceptance Criteria
- [ ] Decision documented
- [ ] If collapsed: migrate SCOUT workspace
- [ ] If scheduled: define cron job
