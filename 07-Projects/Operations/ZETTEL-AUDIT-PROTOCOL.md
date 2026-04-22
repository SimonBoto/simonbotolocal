---
uid: ZETTEL-AUDIT-001
type: protocol
title: "Zettel Audit Protocol — Inverted Extraction"
date: 2026-04-22
status: active
---

# Zettel Audit Protocol

> **Instead of source → LitNote → zettels**
> **We do: zettels → find source → create LitNote → verify**
>
> **This is archaeology. We're excavating our own knowledge.**

---

## The Inverted Process

### Traditional (What We Do Now)
```
Source (paper/CGPT)
    ↓
LitNote (structured summary)
    ↓
Zettels (atomic claims)
```

### Inverted (What We Need)
```
Phantom zettel (no source)
    ↓
Read content → identify core claim
    ↓
Find original source (if possible)
    ↓
Create LitNote (retroactive)
    ↓
Verify zettel links to LitNote
    ↓
Connect to MOC
```

---

## Audit Steps

### Step 1: Read & Classify

For each phantom zettel:

```yaml
---
uid: Z-XXX-XXXX
type: zettel
audit-status: phantom
audit-date: 2026-04-22
---
```

**Questions:**
1. What is the core claim? (1 sentence)
2. What domain? (insulin, biomarker, supplement, etc.)
3. Does it cite a source? (paper, CGPT, conversation)
4. Is it connected to other zettels?
5. Is it still relevant?

### Step 2: Find Source

| Source Type | How to Find |
|-------------|-------------|
| **ChatGPT conversation** | Search CGPT folder for matching topic |
| **Scientific paper** | Search title/claim in PubMed/Google Scholar |
| **Book/course** | Check your reading list |
| **Our conversation** | Search session history |
| **Unknown** | Mark as "source needed" |

### Step 3: Create Retroactive LitNote

If source found:
```markdown
---
uid: L-XXX-XXXX
type: litnote
title: "Retroactive_L-XXX-XXXX"
source-origin: "[paper title/CGPT ID/conversation]"
extraction-date: 2026-04-22
retroactive: true
zettel-count: N
---

# Retroactive LitNote

> **Created from existing zettels.**
> **Original extraction date unknown.**

## Core Claim
[Main finding]

## Zettels Extracted
1. [[Zettel_1_Z-XXX-XXXX]]
2. [[Zettel_2_Z-XXX-XXXX]]

## Source
[Link to original]
```

### Step 4: Verify & Connect

- [ ] Zettel YAML updated with `source-litnote`
- [ ] LitNote links to zettels
- [ ] Both link to MOC
- [ ] Related zettels connected

---

## Batch Processing

### Batch Size: 10 zettels

**Time per batch:** 15-20 minutes

**Process:**
```
1. List 10 phantoms
2. Read each (1 min)
3. Classify (30 sec)
4. Find source (2 min) — skip if hard
5. Create LitNote (3 min) — only if source found
6. Update zettel (1 min)
7. Connect to MOC (1 min)
```

### Priority Order

1. **Domain you know best** (insulin, biomarkers)
2. **Recent zettels** (easier to remember source)
3. **Well-connected zettels** (high value)
4. **Isolated zettels** (may be orphans)

---

## Faulty Link Detection

### Check for:

| Fault | Example | Fix |
|-------|---------|-----|
| **Bare UID** | `[[Z-001-0001]]` | `[[Title_Z-001-0001]]` |
| **Broken link** | `[[NonExistent]]` | Remove or fix |
| **Self-link** | Zettel links to itself | Remove |
| **Circular** | A→B→A | Flag for review |
| **Orphan** | No links in, no links out | Connect or archive |

### Automated Check

```bash
# Find zettels with no links
grep -L "\[\[" 03-Zettels/Conscious/*.md

# Find zettels not linked from anywhere
# (complex — needs full graph analysis)
```

---

## Condensation Strategy

### When to Condense Multiple Zettels

| Condition | Action |
|-----------|--------|
| 3+ zettels on same sub-topic | Create synthesis |
| Zettels contradict each other | Create contradiction note |
| Zettels are outdated | Archive, create summary |
| Zettels are duplicates | Merge, redirect |

### Condensation Format

```markdown
---
uid: S-XXX-XXXX
type: synthesis
title: "Topic_Synthesis_S-XXX-XXXX"
condensed-from: [Z-001-0001, Z-001-0002, Z-001-0003]
---

# Topic Synthesis

> **Condensed from 3 zettels on [sub-topic]**

## Core Claims
1. [Main finding from zettels]
2. [Secondary finding]

## Source Zettels
- [[Zettel_1_Z-001-0001]] — [brief description]
- [[Zettel_2_Z-001-0002]] — [brief description]
- [[Zettel_3_Z-001-0003]] — [brief description]

## Update Log
- 2026-04-22: Condensed from phantom zettels
```

---

## Progress Tracking

| Date | Phantoms Reviewed | Sources Found | LitNotes Created | Condensed |
|------|-------------------|---------------|------------------|-----------|
| 2026-04-22 | 0 | 0 | 0 | 0 |

**Target: 50 phantoms/week**
**ETA completion: 13 weeks (3 months)**

---

## Tools

| Tool | Use |
|------|-----|
| `qmd search "claim"` | Find related zettels |
| `grep -r "Z-XXX-XXXX"` | Find links to zettel |
| `head -20 zettel.md` | Quick read |
| `git log -- zettel.md` | Find creation date |

---

## The Goal

**Every zettel has:**
- ✅ Clear source (LitNote or marked "source needed")
- ✅ Parent MOC
- ✅ Related zettels
- ✅ Valid links

**No more phantoms. All knowledge connected.**

---

*Protocol: ZETTEL-AUDIT-001*
*Date: 2026-04-22*
*Method: Inverted extraction — archaeology for knowledge*
