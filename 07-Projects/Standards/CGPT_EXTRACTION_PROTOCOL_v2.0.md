---
uid: PROTOCOL-002-0001
type: protocol
title: CGPT Archive Extraction Protocol v2.0
domain: 001
domain-name: Protocols
tags: [protocol, chatgpt-extraction, archive, zettelkasten, quality-assurance]
parent-moc: 
status: active
created: 2026-03-03
updated: 2026-03-03
changes: "v2.0 — Post-correction protocol. Enforces template compliance, eliminates bare UID links, fixes YAML drift."
---

# CGPT Archive Extraction Protocol v2.0

**Purpose:** Extract knowledge from ChatGPT archive conversations with 100% template compliance.

**Scope:** Converting CGPT conversations → LitNotes → Zettels

**Prerequisites:**
- MASTER_INVENTORY.md exists and is current
- Git workspace clean (<5 uncommitted files)
- Templates cached (read once at start)

---

## PRE-FLIGHT CHECKLIST (Mandatory)

### □ 1. Template Verification
```bash
# Verify templates exist and are readable
ls /home/simon/Workspaces/TheOptimizedBrain/06-Structure/Templates/Template_LitNote_v1.0.md
ls /home/simon/Workspaces/TheOptimizedBrain/08-Structure/Templates/Template_Zettel.md
```

### □ 2. Git Status Check
```bash
cd /home/simon/Workspaces/TheOptimizedBrain
git status --short | wc -l
# MUST BE: <5 uncommitted files
```

### □ 3. MOC Existence Verification
Before setting `parent-moc: `, verify:
```bash
ls /home/simon/Workspaces/TheOptimizedBrain/06-Structure/MOCs/MOC-XXX.md
# If missing → Create MOC first OR use existing alternative
```

### □ 4. UID Sequence Check
```bash
# Identify next available UID for domain
grep -r "^uid: Z-001" /home/simon/Workspaces/TheOptimizedBrain/03-Zettels/Conscious/*.md | tail -5
```

### □ 5. Permanent Questions Check
Review [[PERMANENT_QUESTIONS.md] — does this extraction answer any active questions?

### □ 6. Synthesis Trigger Check
Review [[SYNTHESIS_TRIGGERS.md] — will this push any topic toward critical mass?

---

## EXTRACTION WORKFLOW

### PHASE 1: SOURCE AUDIT (5 min)
1. Read CGPT conversation completely
2. Identify extraction candidates:
   - How many distinct concepts?
   - How many LitNotes needed?
   - How many zettels per LitNote?
3. **BATCH SIZE RULE:** Max 1 LitNote + 5 zettels per batch

### PHASE 2: PLANNING (5 min)
1. Draft zettel titles and assign UIDs
2. Verify parent-moc exists
3. Confirm domain assignment (001 vs 101)
4. **Classify tier:**
   - **GOLD:** Deep extraction, 3-4 atomics, high value
   - **SILVER:** Medium upgrade, YAML + TL;DR
   - **BRONZE:** Standardization only
5. **APPROVAL GATE:** Present plan to user before creation (unless L4 pre-authorized)

### PHASE 3: CREATION (15-30 min)
**For each LitNote:**
1. Copy Template_LitNote_v1.0.md
2. Fill ALL YAML fields (no omissions):
   - `type: lit-note` (NOT `litnote`)
   - `tier: 3` (for ChatGPT sources)
   - `relevance: High|Medium|Low — [justification]`
   - `parent-moc: ` (must exist)
   - `status: extracted` (NOT `conscious`)
3. Use "Core Concepts Extracted" structure
4. All zettel links: `[[Title_Z-XXX-XXXX]`

**For each Zettel:**
1. Filename: `Title_Z-XXX-XXXX].md` (NOT `Z-XXX-XXXX_Title.md`)
2. Fill ALL YAML fields:
   - `domain-name: [Human Readable]`
   - `confidence: high|medium|low`
   - `source: `
3. All links: Full filename format
4. NO `status: conscious` in YAML (goes in footer)

### PHASE 4: VERIFICATION (5 min)
**MANDATORY CHECKS:**

```bash
# Check 1: No bare UID links
grep -r '\[\[Z-[0-9]\{3\}-[0-9]\{4\}\]\]' /path/to/new/files.md
# EXPECTED: Nothing

# Check 2: YAML type correct
grep "^type: litnote" /path/to/LitNote*.md
# EXPECTED: Nothing (should be "lit-note")

# Check 3: Filename format correct
ls | grep "Z-[0-9]\{3\}-[0-9]\{4\}_.*\.md"
# EXPECTED: Nothing (should be "Title_Z-XXX-XXXX].md")

# Check 4: Required YAML fields present
grep -L "^tier:" /path/to/LitNote*.md
grep -L "^relevance:" /path/to/LitNote*.md
grep -L "^parent-moc:" /path/to/LitNote*.md
grep -L "^domain-name:" /path/to/zettel*.md
grep -L "^confidence:" /path/to/zettel*.md
grep -L "^source:" /path/to/zettel*.md
# EXPECTED: Nothing (all should have these fields)

# Check 5: Run validation script (if available)
# ~/.openclaw/workspace/validate_extraction.sh
```

**Synthesis Trigger Check:** After verification, check if any topics reached critical mass (6+ zettels). Flag for synthesis opportunity.

### PHASE 5: COMMIT (2 min)
**Git checkpoint every 5 LitNotes or 10 zettels (whichever comes first)**

```bash
cd /home/simon/Workspaces/TheOptimizedBrain
git add -A
git commit -m "CGPT-XXXX Batch N: Description — X LitNotes + Y zettels

- LitNote L-XXX-XXXX: Title
- Zettels: Z-XXX-XXXX through Z-XXX-XXXX
- MOC: MOC-XXX updated (if applicable)
- Tier: GOLD/SILVER/BRONZE breakdown
- Status: Complete/Processing"
```

**L4 Autonomy Note:** If pre-authorized per AUTONOMY.md v2.1, proceed without approval gates. Report in daily note.

---

## YAML COMPLIANCE REFERENCE

### LitNote Required YAML
```yaml
---
uid: L-XXX-XXXX
type: lit-note  ← CRITICAL: hyphen, not space
title: Full Title
authors: ChatGPT Analysis
year: 2024
journal: ChatGPT Archive
doi: N/A
pmid: N/A
pmcid: N/A
tier: 3  ← REQUIRED
relevance: High — Justification here  ← REQUIRED
domain: XXX
tags: [litnote, topic, subtopic]
source: "]"
status: extracted  ← REQUIRED (NOT 'conscious')
parent-moc:   ← REQUIRED (must exist)
extraction-date: 2026-MM-DD
---
```

### Zettel Required YAML
```yaml
---
uid: Z-XXX-XXXX
type: zettel  ← or zettel-mech, zettel-claim, etc.
title: Concise Title
aliases: [Z-XXX-XXXX, ShortSlug]
domain: XXX
domain-name: Human Readable Name  ← REQUIRED
tags: [zettel, topic, subtopic]
parent-moc:   ← REQUIRED (must exist)
source: ""  ← REQUIRED
confidence: high  ← REQUIRED
created: 2026-MM-DD
---
```

---

## COMMON ERRORS & PREVENTION

| Error | Prevention | Check |
|-------|------------|-------|
| `type: litnote` | Use template, don't type from memory | grep "^type: litnote" |
| Missing `tier` | Template checklist | grep -L "^tier:" |
| Missing `parent-moc` | Verify MOC exists first | ls MOCs/MOC-XXX.md |
| Bare UID links | Full filename only | grep '\[\[Z-[0-9]\{3\}-[0-9]\{4\}\]\]' |
| Wrong filename | Title_Z-XXX-XXXX].md | ls \| grep "^_Z-" |
| `status: conscious` in YAML | Footer only | grep "^status: conscious" |

---

## RED FLAGS — STOP AND FIX

If any of these are found, extraction is NOT complete:

- [ ] Any `type: litnote` (must be `lit-note`)
- [ ] Any bare UID link ``
- [ ] Any missing required YAML field
- [ ] Any `status: conscious` in YAML header
- [ ] Any file named `Z-XXX-XXXX_Title.md`
- [ ] Parent-moc pointing to non-existent MOC
- [ ] Git uncommitted changes >10 files

---

## POST-EXTRACTION REPORT FORMAT

```
🦞 EXTRACTION COMPLETE — CGPT-XXXX Batch N

SUMMARY:
- LitNotes: N created
- Zettels: N created (Z-XXX-XXXX through Z-XXX-XXXX)
- MOCs updated: MOC-XXX
- Git commit: XXXXXXX

VERIFICATION:
✅ No bare UID links
✅ All YAML type = lit-note
✅ All required fields present
✅ All parent-moc valid
✅ Git committed

STATUS: Complete/Processing
NEXT: [Next batch or completion]
```

---

*Protocol: CGPT Archive Extraction v2.1*
*Created: 2026-03-03*
*Updated: 2026-04-01 — Added GOLD/SILVER/BRONZE tiers, L4 autonomy, synthesis triggers, permanent questions check*
*For: Thirtyfold Path — CGPT Archive synthesis*
*Enforced by: RON (Research & Operations Navigator)*
---
parent-index: [[08-Structure-Index]], [[Protocols-Index]]
