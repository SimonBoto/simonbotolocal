---
uid: PROTOCOL-WEEKLY-001
type: protocol
title: Weekly Consolidation Ritual (Optimized v2.0)
description: "40-min Sunday ritual: daily notes → lessons → zettel promotion → vault health. Feeds MEMORY.md, evergreen rules, synthesis."
version: "2.0"
date: 2026-04-21
status: active
schedule: "Sundays 20:00 EET"
skip-phrase: "skip weekly"
duration: "40-50 minutes"
---

# Weekly Consolidation Ritual v2.0

> **Quick Reference:** Daily notes → Lessons → Zettels → Health → Synthesis

---

## Meta

| Field | Value |
|-------|-------|
| **When** | Sundays 20:00 EET (or your call) |
| **Duration** | 40-50 minutes |
| **Skip** | "skip weekly" — no guilt |
| **Don't skip if** | >14 days since last, major changes, new rules |

---

## Phase 1: Daily Notes → Lessons (10 min)

### Input
- Last 7 daily notes (`08-Structure/Daily/2026/`)
- Workspace daily notes (`~/.openclaw/workspace/memory/`)

### Process
1. Review each daily note
2. Extract to [[RON-Recent-Lessons_RON-SYS-011]]:
   - Mistakes → new evergreen rules
   - Insights → lessons
   - Patterns → synthesis candidates
3. Update [[RON-Evergreen-Rules_RON-SYS-010]] if needed

### Output
- [ ] Lessons added
- [ ] Rules updated (if new mistakes)
- [ ] Candidates flagged

---

## Phase 2: Zettel Promotion (15 min)

### Input
- `03-Zettels/Conscious/` — zettels >30 days old

### Criteria (ALL must pass)
- [ ] No edits in 30 days
- [ ] 2+ incoming links
- [ ] Referenced in synthesis/MOC
- [ ] No pending flags

### Process
1. List candidates: `find 03-Zettels/Conscious -mtime +30 -name "*.md"`
2. Check criteria for each
3. Move qualified: `mv` to `03-Zettels/Subconscious/`
4. Update YAML: `status: subconscious`
5. Update index

### Output
- [ ] Zettels promoted
- [ ] Indexes updated

---

## Phase 3: Vault Health Check (10 min)

### Metrics

| Metric | Target | Check |
|--------|--------|-------|
| Orphan zettels | <150 | `find 03-Zettels -name "*.md" | xargs grep -L "source-litnote" | wc -l` |
| Broken links | <500 | Obsidian graph view |
| MOC count | ~79 | `ls 08-Structure/MOCs/*.md | wc -l` |
| Git status | Clean | `git status --short` |

### Process
1. Run metrics
2. Flag yellow/red items
3. Queue urgent for Monday
4. Queue non-urgent for next session

### Output
- [ ] Health logged
- [ ] Flags noted

---

## Phase 4: Synthesis Opportunities (5 min)

### Input
- Patterns from Phase 1
- [[tracking/PERMANENT_QUESTIONS]]
- [[tracking/SYNTHESIS_TRIGGERS]]

### Process
1. Check synthesis thresholds
2. Review permanent questions
3. Identify new MOC candidates

### Output
- [ ] New synthesis (if threshold met)
- [ ] MOCs updated
- [ ] Questions flagged

---

## Post-Ritual

- [ ] Git commit: `Weekly consolidation YYYY-MM-DD`
- [ ] Update [[02-HANDOFF]] if priorities shifted
- [ ] Log metrics:
  - Zettels reviewed: ___
  - Zettels promoted: ___
  - Lessons extracted: ___
  - Rules added: ___

---

## Quick Commands

```bash
# Find promotion candidates
find 03-Zettels/Conscious -mtime +30 -name "*.md"

# Count orphans
grep -rL "source-litnote" 03-Zettels/Conscious/*.md | wc -l

# Git checkpoint
git add -A && git commit -m "Weekly consolidation $(date +%Y-%m-%d)"
```

---

## Related

- [[RON-Evergreen-Rules_RON-SYS-010]] — Rules maintained
- [[RON-Recent-Lessons_RON-SYS-011]] — Lessons rotated
- [[00-MISSION]] — Why we consolidate
- [[01-PIPELINE]] — Where it fits

---

*Ritual v2.0 — Optimized for speed, clarity, and execution.*
