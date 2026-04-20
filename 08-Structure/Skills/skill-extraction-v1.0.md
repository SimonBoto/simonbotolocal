---
name: FORG Extraction Pipeline
version: v1.0
category: extraction
agent: FORG
created: 2026-04-07
status: stable
uses: 47
---

# Skill: FORG Extraction Pipeline

> Bulk LitNote extraction with 83% cost savings vs RON

## Purpose
Process multiple sources into standardized LitNotes and zettels using FORG (Qwen Plus), validated by RON.

## When to Use
- 5+ sources to process
- Cost-sensitive batch work
- Standardized extraction (not novel domains)
- FORG available and queue clear

## When NOT to Use
- Single source (use RON direct)
- Complex synthesis required
- Final quality review
- Novel domain without examples

## Steps

### 1. Pre-Process (RON)
```bash
# Remove content before YAML frontmatter
# Check for duplicate sections
# Verify source files exist
```

### 2. Create BATCH Task (RON)
Create `workspace-forg/pending/BATCH_XX_TASK.md`:
```yaml
---
batch_id: XX
target_files: 5
timeout: 5min
model: qwen/qwen-plus
---

## Task
Process [N] LitNotes from [source]

## Standards
- YAML v3.0 compliant
- parent-index: "[[03-Zettels-Conscious]]"
- source-litnote format: "[[Title_L-XXX-XXXX]]"
- Full zettel links: "[[Title_Z-XXX-XXXX]]"

## Verification
- [ ] All YAML valid
- [ ] No duplicate sections
- [ ] Links use full format
```

### 3. Spawn FORG (RON)
```bash
# FORG processes 5 files in ~5 minutes
# Cost: ~$0.10 per batch
```

### 4. Post-Process (RON)
- Check for duplicate sections
- Verify YAML validity
- Validate link formats
- Sample check 20% of outputs

### 5. Commit
```bash
git add .
git commit -m "FORG Batch XX: [N] LitNotes — [topic]"
```

## Verification
- [ ] All files processed
- [ ] YAML validates
- [ ] Links work
- [ ] Cost within budget ($0.10/batch)

## Common Failures

| Failure | Cause | Fix | Source |
|---------|-------|-----|--------|
| Duplicate sections | FORG merge artifact | Post-process check | ISSUE-008 |
| YAML errors | Content before `---` | Pre-process removal | ISSUE-008 |
| Wrong link format | UID before title | Regex fix: `\[\[Z-` → `\[\[Title_Z-` | ISSUE-008 |
| Invented MOCs | No verification | `ls MOCs/MOC-*.md` before assignment | Error P005 |
| Shadow links | Bare UIDs | Full format: `[[Title_Z-XXX-XXXX]]` | Error P005 |
| Template drift | No batch verification | Spot check 20% | Error P005 |
| Timeout | >5 files or complex source | Reduce batch to 3-4 | ISSUE-008 |

## Evolution Log

| Version | Date | Change |
|---------|------|--------|
| v1.0 | 2026-04-07 | Initial validation — 98 LitNotes processed |
| v1.0 | 2026-04-20 | Documented as skill — 47 FORG commits verified |

## Related

- Parent: [[skill-extraction-v1.1]] (biomarker focus)
- Used in: ISSUE-008 (FORG Pilot 002)
