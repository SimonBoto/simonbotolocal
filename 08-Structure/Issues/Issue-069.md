---
id: ISSUE-069
title: "Optimize Supplement Zettels — Clinical Decision Support Tools"
assignee: RON
energy: 4h / $2.00
priority: P1
status: active
created: 2026-04-22
parent: none
spawned: []
---

# Issue-069: Optimize Supplement Zettels

## Success Criteria
- [ ] All 69 supplement zettels have consistent YAML structure
- [ ] Each supplement has clear clinical indication (when to prescribe)
- [ ] Each has contraindications/precautions section
- [ ] Each has drug interaction warnings
- [ ] Each links to relevant condition zettels (IR, deficiency, etc.)
- [ ] MOC-Supplements updated with prescribing logic
- [ ] Quick-reference format for clinic use

## Context
Supplements are the PRIMARY clinical tool used with patients (before diets, before medication changes). Currently 69 supplement zettels exist but they need optimization for rapid clinical decision-making.

**Current state:** Product-focused (brand, price, ingredients)
**Target state:** Patient-focused (indications, contraindications, interactions, dosing logic)

## Optimization Areas

### 1. YAML Standardization
| Field | Current | Target |
|-------|---------|--------|
| `type` | supplement | supplement (keep) |
| `status` | subconscious | conscious (active tools) |
| `clinical_priority` | missing | Add: [first-line/second-line/adjunct] |
| `prescribing_logic` | missing | Add: brief indication |
| `contraindications` | missing | Add: key precautions |
| `drug_interactions` | missing | Add: major interactions |

### 2. Body Structure
Add standard sections:
```markdown
## Clinical Indications
- Primary: [condition]
- Secondary: [condition]
- Adjunct: [condition]

## Contraindications & Precautions
- [List]

## Drug Interactions
- [List]

## Prescribing Logic
When to choose this over alternatives:
- [Decision tree]

## Related Conditions
- [[Condition_Zettel]] #condition
- [[Deficiency_Zettel]] #deficiency
```

### 3. MOC-Supplements Enhancement
- Add prescribing flowchart
- Group by clinical indication (not just category)
- Add "first-line for X" quick reference

## Progress Log
- [2026-04-22] Issue created — 69 supplement zettels identified
- [ ] Audit current structure
- [ ] Define optimization template
- [ ] Batch update via FORG
- [ ] RON review
- [ ] MOC update

## Blockers
None

## Notes
**Priority order:**
1. High-frequency prescriptions (Magnesium, VitD, B-Complex, Omega-3)
2. Condition-specific (Berberine for IR, Ashwagandha for stress)
3. Specialty/niche (Agnus Castus, Anoson, etc.)

**Goal:** Walk into clinic, open MOC-Supplements, know exactly what to prescribe for each patient presentation.
