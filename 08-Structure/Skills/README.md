---
uid: SKILLS-README
type: readme
description: Skills system — reusable capabilities
---

# Skills

> **Reusable capabilities that compound over time**

Every solution becomes a skill. Skills evolve: v1.0 → v1.1 → v2.0 → stable.

---

## Quick Start

### Use a Skill
1. Check [[Skill-Index]] for available skills
2. Read skill documentation
3. Run executable script (if available)
4. Follow verification steps

### Create a Skill
1. Complete task successfully
2. Extract reusable pattern
3. Copy [[Template-Skill]]
4. Add to [[Skill-Index]]

---

## Folder Structure

```
Skills/
├── scripts/              ← Executable skill scripts
│   ├── skill-extraction-v1.0.sh
│   ├── skill-moc-consolidation-v1.0.sh
│   ├── skill-batch-fix-v1.0.sh
│   └── skill-zettel-alignment-v1.0.sh
├── examples/             ← Example inputs/outputs
│   ├── extraction/
│   ├── moc-consolidation/
│   ├── batch-fix/
│   └── zettel-alignment/
├── Skill-Index.md        ← Master skill directory
├── Template-Skill.md     ← Skill creation template
└── README.md            ← This file
```

---

## Available Skills

| Skill | Category | Script | Example |
|-------|----------|--------|---------|
| FORG Extraction | Extraction | ✅ | ✅ |
| MOC Consolidation | Synthesis | ✅ | ✅ |
| Batch Fix | Coding | ✅ | ✅ |
| Zettel Alignment | Extraction | ✅ | ✅ |

---

## Skill Quality

| Level | Criteria |
|-------|----------|
| **Draft** | Documented, not tested |
| **Ready** | Tested 1-2 times |
| **Stable** | Tested 5+ times, no changes needed |
| **Deprecated** | Superseded by newer version |

---

_Last updated: 2026-04-20_
