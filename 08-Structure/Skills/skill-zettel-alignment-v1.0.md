---
name: Zettel Template Alignment
version: v1.0
category: extraction
agent: RON
created: 2026-04-15
status: stable
uses: 5
---

# Skill: Zettel Template Alignment

> Mass-upgrade zettels to new template version

## Purpose
Bring legacy zettels into compliance with current template standards.

## When to Use
- Template vX.Y released
- >100 zettels non-compliant
- New required fields added
- Quarterly standardization

## When NOT to Use
- <20 zettels (manual OK)
- Template in draft
- Active extraction ongoing
- No clear standard defined

## Steps

### 1. Audit Current State
```bash
# Count non-compliant zettels
grep -L "status-checklist" 03-Zettels/Conscious/*.md | wc -l
```

### 2. Define Upgrade Path
| From | To | Action |
|------|-----|--------|
| v3.0 | v4.1 | Add Status Checklist, Source section |
| No Core Principle | v4.1 | Add ## Core Principle |
| No Body structure | v4.1 | Add Mechanism/Significance |

### 3. Batch by Category
- **GOLD** (10%): Complex, manual review
- **SILVER** (25%): Medium, batch + spot check
- **BRONZE** (65%): Standard, full batch

### 4. Execute Batch
```bash
# Add Core Principle to 355 zettels
# Add Body structure to 385 zettels
# Fix YAML in 555 zettels
```

### 5. Verify Sample
- Spot check 5% of each tier
- Verify links still work
- Confirm YAML valid

### 6. Commit per Batch
```bash
git add .
git commit -m "zettel alignment: [tier] — [N] files — [change]"
```

## Verification
- [ ] Target count processed
- [ ] Sample verified
- [ ] No broken links
- [ ] Git commits clean

## Common Failures

| Failure | Cause | Fix | Source |
|---------|-------|-----|--------|
| Partial upgrades | Interrupted batch | Resume from checkpoint | ISSUE-006 |
| Wrong tier assignment | Misjudged complexity | Escalate to GOLD | ISSUE-006 |
| Link breakage | Template change | Verify with grep | ISSUE-006 |
| YAML drift | No validation | YAML lint check | Error P005 |

## Evolution Log

| Version | Date | Change |
|---------|------|--------|
| v1.0 | 2026-04-15 | 1,565 zettels → v4.1 compliant |

## Related

- Used in: ISSUE-006
- Template: [[Template_Zettel]]
