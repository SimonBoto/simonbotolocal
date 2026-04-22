---
uid: ISSUE-037
type: issue
title: "Connection Tracking with Anchors — Bidirectional Link Architecture"
date: 2026-04-21
status: completed
priority: P1
---

# ISSUE-037: Connection Tracking with Anchors

## Problem Statement

Current vault has **implicit connections** that Obsidian tracks automatically, but we lack **explicit anchor-based navigation** for:
- Tracing knowledge from source → extraction → synthesis
- Visualizing bidirectional relationships
- Ensuring no orphaned knowledge

## Goal

Implement a **3-directional anchor system** in LitNotes:

```
                    ┌─────────────────┐
                    │   SOURCE        │
                    │ (INBOX/CGPT)    │
                    └────────┬────────┘
                             │
                             ▼ UP
                    ┌─────────────────┐
                    │   LITNOTE       │◄──────┐
                    │   (Anchor Hub)  │       │
                    └────────┬────────┘       │
              DOWN ▼         │         ▼ SIDEWAYS
                    ┌────────┴────────┐       │
                    │   ZETTELS       │       │
                    │   (Atomic)      │       │
                    └─────────────────┘       │
                                              │
                    ┌─────────────────┐       │
                    │   REFERENCES    │───────┘
                    │   (Citations)   │
                    └─────────────────┘
```

## Proposed Anchor System

### 1. UP — Source Connection
```yaml
source-inbox: [[INBOX-Article-20-Artificial-Sweeteners]]
source-litnote: [[CGPT_0064_Ofev_MOA_CGPT-0064]]
source-anchor: "#source"  # Link to source section
```

### 2. DOWN — Zettel Extraction
```yaml
zettel-anchors:
  - "[[Nintedanib_Drug_Overview_Framework_Z-001-0583A|Nintedanib Overview]] #zettel-1"
  - "[[FGFR_Inhibition_Mechanism_Framework_Z-001-0583B|FGFR Mechanism]] #zettel-2"
zettel-count: 6
```

### 3. SIDEWAYS — Reference Citations
```yaml
reference-anchors:
  - "[[Steffen_2023_R-002-0041]] #ref-1"
  - "[[Chen_2026_R-002-0038]] #ref-2"
reference-count: 2
```

## Implementation Plan

### Phase 1: Design (Week 1)
- [ ] Define anchor YAML schema
- [ ] Create template v5.0 with anchor sections
- [ ] Design Obsidian CSS for anchor visualization

### Phase 2: Pilot (Week 2)
- [ ] Implement in 10 LitNotes
- [ ] Test navigation flow
- [ ] Gather feedback

### Phase 3: Batch Update (Week 3-4)
- [ ] FORG batch process: Add anchors to all 220 LitNotes
- [ ] Validate anchor integrity
- [ ] Update MOCs to use anchor navigation

### Phase 4: Verification (Week 5)
- [ ] Run connection audit
- [ ] Fix orphaned anchors
- [ ] Document new workflow

## Technical Requirements

### YAML Schema v5.0
```yaml
---
uid: L-XXX-XXXX
type: litnote
anchors:
  up:
    source-inbox: "[[...]] #source"
    source-litnote: "[[...]] #source-lit"
  down:
    zettels:
      - "[[Z-...]] #zettel-N"
    count: N
  sideways:
    references:
      - "[[R-...]] #ref-N"
    count: N
---
```

### Body Anchor Sections
```markdown
## 🔼 Source
[[INBOX-...]] #source-anchor

## 🔽 Zettels Extracted
- [[Z-...]] #zettel-1
- [[Z-...]] #zettel-2

## ↔️ References
- [[R-...]] #ref-1
- [[R-...]] #ref-2
```

## Benefits

1. **Traceability** — Click any anchor to navigate full knowledge chain
2. **Completeness** — Visual confirmation of extraction coverage
3. **Auditability** — Automated checks for orphaned knowledge
4. **Navigation** — Rapid traversal: source → litnote → zettels → synthesis

## Related

- [[ISSUE-036]] — LitNote Comprehensive Audit (completed)
- [[MOC-LitNote-Architecture]] — Design patterns
- Template_LitNote_v5.0.md (to be created)

## Owner

RON + FORG collaboration

## Timeline

Target: 4-5 weeks
Start: After USER approval

---
*Created: 2026-04-21*
*Status: Awaiting approval*
