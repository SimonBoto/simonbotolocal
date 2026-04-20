---
uid: TEMPLATE-ISSUE
type: template
title: Issue Template
date: 2026-04-20
---

# Issue Template

## Metadata Block (Required)

```yaml
---
id: ISSUE-XXX
title: Clear, actionable title
assignee: RON | FORG | SCOUT
energy: Xh / $X.XX  # estimated time and cost
priority: P0 | P1 | P2 | icebox
status: backlog | active | blocked | completed
created: YYYY-MM-DD
parent: ISSUE-YYY | none  # if spawned from another issue
spawned: [ISSUE-ZZZ] | []  # issues created from this one
---
```

## Success Criteria

Define "done" in verifiable terms:

- [ ] Criterion 1 (measurable)
- [ ] Criterion 2 (measurable)
- [ ] Criterion 3 (measurable)

## Context

Why this issue exists. Links to relevant zettels, conversations, or sources.

## Progress Log

Chronological updates. Each entry timestamped.

- [HH:MM] What was done
- [HH:MM] What was done
- [HH:MM] Blocker encountered

## Blockers

What's stopping progress. If none, write "None."

## Notes

Free-form thoughts, discoveries, decisions.

---

## Examples

### Example 1: FORG Extraction Task

```yaml
---
id: ISSUE-042
title: Batch extract 5 insulin resistance papers
assignee: FORG
energy: 2h / $0.50
priority: P0
status: active
created: 2026-04-20
parent: none
spawned: []
---

## Success Criteria
- [ ] 5 LitNotes created with valid YAML
- [ ] 10-15 zettels extracted
- [ ] All internal links verified
- [ ] Git commit with descriptive message

## Context
Part of insulin signaling deep dive. Papers from 2024-2025, focus on mechanisms.

## Progress Log
- [18:00] Started batch
- [18:30] 3/5 papers processed, on track
- [19:15] Completed all 5 papers

## Blockers
None

## Notes
Paper #3 (Gutierrez-Rodelo 2017) had complex tables — extracted key data but skipped full replication.
```

### Example 2: RON Review Task

```yaml
---
id: ISSUE-041
title: Review FORG batch ISSUE-042
assignee: RON
energy: 30m / $0.20
priority: P0
status: completed
created: 2026-04-20
parent: ISSUE-042
spawned: []
---

## Success Criteria
- [ ] All 5 LitNotes reviewed
- [ ] Zettel quality validated
- [ ] YAML structure correct
- [ ] Links verified

## Progress Log
- [19:20] Started review
- [19:35] LitNotes approved (minor typos fixed)
- [19:45] Zettels approved (12/15 accepted, 3 sent back)
- [19:50] Completed

## Blockers
None

## Notes
3 zettels need more context on adipic acid pathway. Created ISSUE-043 for FORG to revisit.
```

---

_See also: [Issue-Active.md](./Issue-Active.md) | [Issue-Completed.md](./Issue-Completed.md) | [Index-Issues.md](./Index-Issues.md)_

_Last updated: 2026-04-20 (v1.0)_
