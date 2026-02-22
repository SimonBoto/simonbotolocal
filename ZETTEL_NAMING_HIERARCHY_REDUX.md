# Zettel Naming & Hierarchy Redesign
## Addressing Your Concerns

---

## 1. The Naming Problem

### Current Naming (You Dislike)
```
Z_INSULIN_HORMONE_STRUCTURE_20260222_002_001002.md
```
**Problems:**
- Code soup at the start (Z_ prefix)
- Date/metadata before message
- Have to read far to understand content
- Not human-friendly in graph view

### Your Desire
> "Core message clear first. Then codes and UI ok."

### Proposed Solutions

#### Option A: Statement-First Naming
```
Insulin_is_a_51aa_peptide_hormone_[Z_001].md
Insulin_receptor_is_tetrameric_[Z_002].md
IRS_serine_phosphorylation_causes_IR_[Z_003].md
```

**Pros:** Crystal clear in any view, readable, self-describing  
**Cons:** Long filenames, spaces in names (can be escaped), hard to type

#### Option B: Compressed Statement + UID
```
Insulin_51aa_peptide_hormone_001.md
INSR_tetrameric_tyrosine_kinase_002.md
IRS_SerPhos_causes_IR_003.md
```

**Pros:** Shorter, no spaces, message first, UID at end  
**Cons:** Abbreviations needed, still somewhat long

#### Option C: Short Descriptive + UID Suffix
```
Insulin_hormone_[Z_001].md
Insulin_receptor_structure_[Z_002].md
IRS_serine_phosphorylation_IR_[Z_003].md
```

**Pros:** Medium length, message clear, brackets contain code  
**Cons:** Still has code at end (but secondary)

#### Option D: Title Case Message (RECOMMENDED)
```
Insulin_Hormone_Structure_[Z_001].md
Insulin_Receptor_Tetramer_[Z_002].md
IRS_Serine_Phosphorylation_Causes_IR_[Z_003].md
GLUT4_Vesicle_Translocation_[Z_011].md
```

**Pros:**
- Message immediately clear
- Obsidian readable (title case)
- Bracketed UID for machine reference
- Can sort by UID if needed
- Links work: `[[Insulin_Receptor_Tetramer_[Z_002]]]`

**Cons:** Still have code, but it's at the END

---

## 2. My Recommendation

**Go with Option D** but with one refinement — the UID goes in ALIASES, not filename:

### New Naming Convention

```markdown
Filename: Insulin_Receptor_Tetramer.md
YAML: uid: 001
Aliases: [Z_001, INSR_tetramer]
```

**But you want UID for sorting/tracking...**

### Compromise: Invisible UID System

```markdown
Filename: Insulin_Receptor_Tetramer.md
Obsidian display: "Insulin Receptor Tetramer"
YAML:
  uid: 001
  seq: 001
  date: 20260222
  
Internal reference: [[Z_001]] → resolves to → Insulin_Receptor_Tetramer.md
```

**How it works:**
- Human sees: "Insulin Receptor Tetramer"
- Machine tracks: uid 001
- Links use: `[[Z_001]]` (alias resolves to file)
- Sorting: By YAML seq field

---

## 3. The Real Question: Do We Need UIDs in Filenames?

**Current thinking:** UID in filename ensures:
- Unique identification
- Sorting by creation order
- No collisions
- Folgezettel-style sequence

**Alternative:**
- Filename = human readable
- YAML = machine metadata
- Alias `Z_001` = link target
- Database (Obsidian) = sorting/tracking

**Risk:** If you move files, YAML stays but Obsidian tracks. If you export, need YAML.

**Verdict:** Keep UID in filename for portability, but put it at the END.

---

## 4. Final Naming Proposal

```
{Descriptive_Title}_[Z_{UID}].md

Examples:
Insulin_Hormone_Structure_[Z_001].md
Insulin_Receptor_Tetramer_[Z_002].md
INSR_Autophosphorylation_Mechanism_[Z_003].md
IRS_Protein_Recruitment_[Z_005].md
PI3K_Activation_Mechanism_[Z_007].md
Akt_Substrate_Phosphorylation_[Z_010].md
GLUT4_Vesicle_Translocation_[Z_011].md
IRS_Serine_Phosphorylation_Causes_IR_[Z_008].md

Benefits:
✓ Message first (human readable)
✓ Code at end (machine reference)
✓ Brackets group the "code part"
✓ Still sortable by UID if needed
✓ Clear in Obsidian graph view
✓ Clear in file explorer
```

---

## 5. Migration Strategy

### For Existing 17 Zettels

**Option 1: Rename all now** (YELLOW ops)
```bash
# Script to rename:
Z_INSR_STRUCTURE_001.md → Insulin_Receptor_Tetramer_[Z_001].md
```

**Option 2: Grandfather existing, new format forward** (GREEN ops)
- Keep 17 as-is
- All new zettels use new naming
- Update aliases to support both

**Option 3: Hybrid** (RECOMMENDED)
- Rename high-value zettels (insulin cascade)
- Leave stubs/early experiments
- Establish new convention now

---

## 6. The Hierarchy Question: Atomics vs Zettels vs LitNotes

### Current Confusion

```
66b-LitNotes/     ← Source-specific, can be long
04-Zettels/       ← Strict atomic, 50-200 words
02-Atomics/       ← Composite, 300-800 words

"Atomics feel obsolete — something between lit notes and zettels?"
```

### The Real Hierarchy (Clarified)

| Layer | Purpose | Size | Lifespan | Example |
|-------|---------|------|----------|---------|
| **66a-Refs/** | Bibliographic hub | 20-50 lines | Permanent | "Ames 2006 exists" |
| **66b-LitNotes/** | Source processing | 200-500 words | Permanent | "Ames says X about triage" |
| **04-Zettels/** | Atomic units | 50-200 words | Permanent | "Triage theory states Y" |
| **66c-TechRefs/** | Living synthesis | 500-1000 words | Evolving | "Triage theory across sources" |
| **02-Atomics/** | Clinical composites | 300-800 words | Permanent | "Adipic biomarker profile" |

### Your Point: "Atomics feel obsolete"

**You're partially right.** Here's the clarification:

**LitNotes vs Zettels:**
- LitNote: "From Ames paper, page 3, he claims X" (source-bound)
- Zettel: "Triage theory claims X" (source-agnostic, atomic)

**Zettels vs Atomics:**
- Zettel: One idea (IRS serine phosphorylation)
- Atomic: Assembled clinical picture (Adipic + IRS + mitochondria)

**The distinction:**
- **Zettels** = building blocks (pure knowledge)
- **Atomics** = clinical tools (usable for practice/PhD)

### Proposed: Merge Concepts

**Option A: Keep Both (Current)**
- Zettels: Strict atomic (building blocks)
- Atomics: Composites for clinical use

**Option B: Zettels-Only**
- All knowledge in 04-Zettels/
- Clinical assembly happens in MOCs/TechRefs
- Delete 02-Atomics/ (or archive)

**Option C: TechRef-Only for Composites**
- Zettels for atoms
- TechRefs for living synthesis
- No static composites

---

## 7. My Recommendation

### Naming (Immediate)
**Switch to message-first naming:**
```
Insulin_Receptor_Tetramer_[Z_001].md
```

Rename the 17 insulin zettels now (they're high-visibility).

### Hierarchy (Phased)
**Keep current layers but clarify roles:**

1. **66b-LitNotes/** — Temporary processing (can archive after extraction)
2. **04-Zettels/** — Permanent atomic units (the core)
3. **66c-TechRefs/** — NEW: Living synthesis documents
4. **02-Atomics/** — Gradually migrate to TechRefs or archive

**Future state:**
- Zettels = building blocks
- TechRefs = living knowledge synthesis
- No static composites needed

### Migration Plan

**Phase 1 (Now):**
- Rename 17 insulin zettels to new convention
- Create TechRef_Insulin_Signaling.md
- Keep 02-Atomics/ as-is

**Phase 2 (Next month):**
- Create TechRefs for major topics
- Migrate high-value atomics to TechRef format
- Mark 02-Atomics/ as deprecated

**Phase 3 (Post-PhD):**
- Archive or refactor remaining 02-Atomics/
- Zettels + TechRefs become standard

---

## 8. Summary of Changes

| Element | Current | Proposed |
|---------|---------|----------|
| **Zettel naming** | `Z_INSR_STRUCTURE_001.md` | `Insulin_Receptor_Tetramer_[Z_001].md` |
| **Zettel location** | `04-Zettels/` | `04-Zettels/` (keep) |
| **Living synthesis** | MOCs only | `66c-TechRefs/` (new) |
| **Static composites** | `02-Atomics/` | Migrate to TechRefs |
| **Source processing** | `66b-LitNotes/` | Keep, may archive after extraction |

**Ready to implement?** Say:
- "Rename the 17 zettels now"
- "Create TechRef_Insulin_Signaling"
- "Show me the new template"
- Or ask questions
