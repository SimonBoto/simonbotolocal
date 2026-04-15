---
uid: S-001-0012
type: synthesis
title: Weekly Consolidation Ritual
date: 2026-04-08
aliases: [S-001-0012]
domain: 001
tags: [synthesis, ritual, weekly, consolidation, zettelkasten]
parent-index: "[[04-Synthesis-Index]]"
parent-moc: "[[MOC-Metabolomics]]"
status: active
---

# Weekly Consolidation Ritual

> Curate noise into signal. Sundays, 20:00 EET (or when we remember).

## Purpose

Transform weekly operational churn into lasting knowledge structure.

**Duration:** 30–45 minutes  
**Frequency:** Weekly (Sunday evening)  
**Skip phrase:** "skip weekly" — no guilt, resume next Sunday

---

## Phase 1: Daily Notes → MEMORY.md (10 min)

### Input
- `memory/YYYY-MM-DD.md` (last 7 days)
- `08-Structure/Daily/2026/YYYY-MM-DD.md` (last 7 days)

### Process
1. Review each daily note
2. Extract lessons → add to [[RON-Recent-Lessons_RON-SYS-011]]
3. Extract system changes → update [[RON-Evergreen-Rules_RON-SYS-010]]
4. Identify patterns → flag for synthesis

### Output
- Updated evergreen rules (if new mistakes)
- Rotated lessons (move >30 days to archive)
- Synthesis candidates flagged

---

## Phase 2: Zettel Promotion (15 min)

### Input
- `03-Zettels/Conscious/` — zettels >30 days old

### Criteria for Promotion to Subconscious
- [ ] Stable content (no edits in 30 days)
- [ ] Well-connected (2+ incoming links)
- [ ] Referenced in synthesis or MOC
- [ ] No pending questions or flags

### Process
1. List zettels >30 days old
2. Check criteria for each
3. Move qualified zettels to `03-Zettels/Subconscious/`
4. Update `status: subconscious` in YAML
5. Update index files

### Output
- Promoted zettels (moved to Subconscious)
- Remaining conscious zettels (still evolving)

---

## Phase 3: Synthesis Opportunities (15 min)

### Input
- Cross-cutting patterns from Phase 1
- Domain saturation review
- Permanent questions status

### Process
1. Review [[tracking/PERMANENT_QUESTIONS]]
2. Check if any approaching synthesis threshold
3. Review [[tracking/SYNTHESIS_TRIGGERS]]
4. Identify new MOC candidates

### Output
- New synthesis documents (if threshold met)
- Updated MOCs (if new connections)
- Flagged questions for next week

---

## Checklist

### Pre-Ritual
- [ ] Git status clean (or commit)
- [ ] 7 daily notes available
- [ ] No urgent blockers

### Phase 1
- [ ] Review 7 workspace daily notes
- [ ] Review 7 vault daily notes
- [ ] Extract lessons → RON-Recent-Lessons
- [ ] Extract rules → RON-Evergreen-Rules

### Phase 2
- [ ] List conscious zettels >30 days
- [ ] Check promotion criteria
- [ ] Move qualified zettels
- [ ] Update indexes

### Phase 3
- [ ] Review permanent questions
- [ ] Check synthesis triggers
- [ ] Flag new opportunities
- [ ] Update COMMAND.md if priorities shift

### Post-Ritual
- [ ] Git commit: "Weekly consolidation YYYY-MM-DD"
- [ ] Update 02-HANDOFF.md if needed

---

## Related Systems

| System | Connection |
|--------|------------|
| Daily Notes | Input to Phase 1 |
| Evergreen Rules | Output from Phase 1 |
| Recent Lessons | Output from Phase 1 |
| Zettel Promotion | Phase 2 execution |
| Synthesis Triggers | Phase 3 input |
| Permanent Questions | Phase 3 review |
| Git Commit Discipline | Post-ritual required |

---

## Skip Conditions

**OK to skip when:**
- Vacation mode
- Deep work week (no daily notes)
- User explicitly says "skip weekly"

**Don't skip when:**
- >14 days since last consolidation
- Major system changes made
- New evergreen rules identified

---

## Metrics

Track weekly:
- Zettels reviewed: ___
- Zettels promoted: ___
- Lessons extracted: ___
- Rules added: ___
- Synthesis created: ___

---

## Related

- [[RON-Evergreen-Rules_RON-SYS-010]] — Rules maintained by this ritual
- [[RON-Recent-Lessons_RON-SYS-011]] — Lessons rotated by this ritual
- [[00-MISSION]] — Why we consolidate
- [[01-PIPELINE]] — Where consolidation fits in workflow
