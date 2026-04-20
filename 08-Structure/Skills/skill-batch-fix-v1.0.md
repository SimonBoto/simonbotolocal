---
name: Batch Fix Protocol
version: v1.0
category: coding
agent: RON
created: 2026-04-15
status: stable
uses: 1
---

# Skill: Batch Fix Protocol

> Systematic regex-based fixes across hundreds of files

## Purpose
Fix systematic errors (syntax, format, links) across large batches of files.

## When to Use
- >50 files with same error
- Regex pattern identifiable
- Fix is unambiguous
- Git checkpoint available

## When NOT to Use
- <10 files (manual faster)
- Fix requires judgment per file
- No git checkpoint
- Uncertain of pattern scope

## Steps

### 1. Identify Pattern
```bash
# Find all occurrences
grep -r "pattern" 03-Zettels/ | wc -l

# Sample 5 files to verify
head -5 sample.txt
```

### 2. Create Fix Script
```bash
# Example: Fix lit-note → litnote
find 01-Literature/ -name "*.md" -exec sed -i 's/lit-note/litnote/g' {} \;
```

### 3. Git Checkpoint
```bash
git add .
git commit -m "checkpoint: before batch fix [pattern]"
```

### 4. Execute Fix
```bash
# Run fix
# Check first few files
head -20 01-Literature/L-001-0001.md
```

### 5. Verify
```bash
# Confirm pattern fixed
grep -r "old-pattern" 01-Literature/ | wc -l
# Should be 0

# Check for unintended changes
git diff --stat
```

### 6. Commit
```bash
git add .
git commit -m "batch fix: [description] — [N] files"
```

## Verification
- [ ] Pattern eliminated
- [ ] No unintended changes
- [ ] Git diff reasonable
- [ ] Sample files verified

## Common Failures

| Failure | Cause | Fix | Source |
|---------|-------|-----|--------|
| Over-replacement | Greedy regex | Use word boundaries: `\b` | ISSUE-006 |
| Missed files | Wrong path | Verify find scope | ISSUE-006 |
| Unintended changes | No checkpoint | Always checkpoint first | ISSUE-006 |
| Partial fixes | Interrupted batch | Resume from git checkpoint | ISSUE-006 |

## Evolution Log

| Version | Date | Change |
|---------|------|--------|
| v1.0 | 2026-04-15 | 555 zettels, 140 LitNotes, 220 links fixed |

## Related

- Used in: ISSUE-006, ISSUE-008
- Safety: AGENTS.md Pre-Task Checklist
