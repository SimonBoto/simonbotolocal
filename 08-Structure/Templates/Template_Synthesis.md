---
uid: TEMPLATE-SYN-002
type: template
title: Template — Synthesis (Canonical)
description: "Canonical synthesis template for integrating multiple sources into living documents."
version: "4.0"
status: active
updated: 2026-04-08
---

# Template — Synthesis (Canonical)

## An Address to RON

RON,

A Synthesis is **not** a zettel.
It is **not** a LitNote.
It is **not** a summary.

A Synthesis is a **living integration document**.

Its role:
- Integrate multiple sources into coherent worldview
- Evolve as new evidence arrives
- Support decision-making
- Bridge knowledge and action

**Syntheses live in 04-Synthesis/** — they are works in progress, not final truths.

**Do not:**
- Create synthesis before sufficient evidence
- Let synthesis become static
- Confuse synthesis with zettel atomicity

**Do:**
- Integrate across sources
- Update when new evidence arrives
- Link heavily to supporting zettels
- Mark uncertainty clearly

---

## Canonical YAML

```yaml
---
uid: S-XXX-XXXX
type: synthesis
title: "Topic_Synthesis_S-XXX-XXXX"
aliases:
  - S-XXX-XXXX
  - Topic-Synthesis
domain: XXX
tags:
  - synthesis
  - topic
  - living-document
parent-moc: "[[MOC-Topic]]"
parent-index: "[[Templates-Index]]"
status: draft|active|stable|archived
confidence: low|medium|high
created: YYYY-MM-DD
updated: YYYY-MM-DD
---
```

### Field Logic

| Field | Rule |
|-------|------|
| **uid** | Pattern: `S-{DDD}-{SSSS}` |
| **type** | Always `synthesis` |
| **title** | Pattern: `Topic_Synthesis_S-XXX-XXXX` |
| **status** | `draft` → `active` → `stable` → `archived` |
| **confidence** | Honest assessment: low/medium/high |
| **parent-moc** | Thematic home |

---

## Canonical Body Structure

# {{Topic}} Synthesis

> One-paragraph summary of current integrated understanding.

## Current Understanding

### Core Claims

1. **Claim One**
   - Evidence: [[Z-XXX-XXXX]], [[Z-XXX-XXXX]]
   - Confidence: High
   - Caveats: [Known limitations]

2. **Claim Two**
   - Evidence: [[Z-XXX-XXXX]], [[L-XXX-XXXX]]
   - Confidence: Medium
   - Caveats: [Known limitations]

### Mechanism

How does this work?
- Step 1: [[Z-XXX-XXXX]]
- Step 2: [[Z-XXX-XXXX]]
- Step 3: [[Z-XXX-XXXX]]

## Evidence Base

### Supporting
- [[Z-XXX-XXXX]] — key finding
- [[Z-XXX-XXXX]] — mechanism
- [[L-XXX-XXXX]] — source summary

### Contradictory
- [[Z-XXX-XXXX]] — conflicting finding
- [[L-XXX-XXXX]] — alternative interpretation

### Gaps
- What evidence is missing?
- What would change the conclusion?

## Clinical/Practical Implications

If applicable:
- Recommendation 1
- Recommendation 2
- Warning/caveat

## Open Questions

- Question 1
- Question 2

## Related Syntheses

- [[S-XXX-XXXX_Related_Synthesis]] — connection

## Update Log

| Date | Change | Trigger |
|------|--------|---------|
| YYYY-MM-DD | Initial synthesis | [[L-XXX-XXXX]] |
| YYYY-MM-DD | Updated claim 2 | New evidence: [[Z-XXX-XXXX]] |

---

## Synthesis Principles

1. **Living document** — Updates as evidence arrives
2. **Evidence-linked** — Every claim tied to zettels
3. **Confidence-marked** — Honest about certainty
4. **Contradiction-aware** — Acknowledges conflicting evidence
5. **Action-oriented** — Supports decisions

---

## When to Create Synthesis

| Scenario | Action |
|----------|--------|
| 5+ zettels on same theme | ✅ Consider synthesis |
| Evidence conflicts need resolution | ✅ Create synthesis |
| Clinical decision needs support | ✅ Create synthesis |
| Only 2-3 zettels | ❌ Wait |
| No conflicting evidence yet | ❌ Wait |

---

## Navigation

- **Index:** [[Templates-Index]] — All templates
- **Up:** [[08-Structure-Index]] — System infrastructure

---

*Synthesis — Integration, not final truth.*
