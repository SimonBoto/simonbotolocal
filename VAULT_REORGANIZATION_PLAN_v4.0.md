# Vault Reorganization Plan v4.0
## Major Architectural Refactor

**Status:** PLANNING PHASE — Do not execute yet  
**Impact:** HIGH — Affects subagent workflow, all new notes  
**Goal:** Intuitive hierarchy, conscious/subconscious zettel flow, consolidated structure

---

## 1. The Philosophy Behind v4.0

### Current Problem (v3.0)
- **Scattered structure:** Templates in 11-, MOCs in 55-, System in 99-
- **No zettel lifecycle:** Created → MOC, no review stage
- **Literature fragmented:** 66a/66b/66c is confusing
- **Numbering arbitrary:** Historical baggage

### v4.0 Solution
```
Knowledge Flow:
00-Inbox → 02-LitNotes → 03-Zettels/conscious → 03-Zettels/subconscious
                                             ↓
                                      04-Synthesis
                                             ↓
                                      05-Structure/MOCs
```

**Key Innovation:** Conscious → Subconscious zettel promotion

---

## 2. Proposed Folder Structure

```
TheOptimizedBrain/
│
├── 00-Inbox/                          ← Fleeting notes (unchanged)
│   └── [process and delete]
│
├── 01-References/                     ← Source management (NEW)
│   ├── 01a-Hub/                       ← Bibliographic cards
│   │   └── Author_Year_Title_[R-{DDD}-{SSSS}].md
│   ├── 01b-Zotero/                    ← Raw Zotero exports
│   │   └── [automatic exports]
│   └── 01c-Other/                     ← Non-academic sources
│       └── [websites, videos, podcasts]
│
├── 02-LiteratureNotes/                ← Source processing (was 66b)
│   └── Author_Year_Topic_[L-{DDD}-{SSSS}].md
│       ← Long extracts, contain zettels to be extracted
│
├── 03-Zettels/                        ← Atomic knowledge (THE CORE)
│   ├── 03a-Conscious/                 ← New/working zettels
│   │   └── [newly created, under review]
│   │   └── Title_[Z-{DDD}-{SSSS}].md
│   └── 03b-Subconscious/              ← Reviewed/permanent zettels
│       └── [absolute truth, never modify]
│       └── Title_[Z-{DDD}-{SSSS}].md
│   ← Promotion: Conscious → Subconscious after review
│
├── 04-Synthesis/                      ← Living documents (was 66c-TechRefs)
│   └── Topic_Synthesis_[S-{DDD}-{SSSS}].md
│       ← Evolving knowledge, aggregates zettels
│
├── 05-Structure/                      ← Navigation & organization (CONSOLIDATED)
│   ├── 05a-Templates/                 ← Was 11-Templates/
│   │   └── Template_{Type}_v{X.X}.md
│   ├── 05b-MOCs/                      ← Was 55-MOCs/
│   │   └── MOC-{DDD}.md
│   ├── 05c-Indexes/                   ← Master indexes
│   │   └── IDX-{Domain}.md
│   └── 05d-Projects/                  ← Was 01-Projects/
│       └── PRJ-{SSSS}/
│
├── 06-Dashboards/                     ← Status & overview (unchanged)
│   └── [unchanged]
│
├── 07-Archive/                        ← Legacy & deprecated
│   └── [versioned archives]
│
└── 09-System/                         ← System documentation (unchanged)
    └── UID_SYSTEM_v2.0.md
    └── [other system docs]
```

---

## 3. The Conscious/Subconscious Innovation

### The Problem with Current Zettels
All zettels mixed together:
- New, unreviewed zettels
- Mature, trusted zettels
- No quality gradient

### Conscious → Subconscious Flow

```
NEW ZETTEL (extracted from LitNote)
    ↓
03a-Conscious/                         ← "Working memory"
├── Reviewed after creation
├── Linked to existing
├── May have errors/uncertainty
├── Open to modification
└── Status: conscious (aware, malleable)
    ↓
REVIEW PROCESS (periodic)
├── Read for clarity
├── Verify links
├── Check sources
├── Confirm accuracy
└── PROMOTE
    ↓
03b-Subconscious/                      ← "Long-term memory"
├── Never modify (only add links)
├── Absolute truth (as current understanding)
├── Immutable core
└── Status: subconscious (integrated, permanent)
```

### Promotion Criteria
A zettel graduates to subconscious when:
- [ ] 30+ days old
- [ ] Reviewed by you
- [ ] No factual doubts
- [ ] Well-linked (3+ connections)
- [ ] Source verified

**Philosophy:** Subconscious zettels are your "ground truth" — the bedrock of your knowledge base.

---

## 4. Naming Conventions v4.0

### References (01-References/)
```
{R-Hub}    Author_Year_Title_[R-{DDD}-{SSSS}].md
{R-Zotero} [auto-generated from Zotero]
{R-Other}  Source_Topic_[R-000-{SSSS}].md
```

### Literature Notes (02-LiteratureNotes/)
```
Author_Year_KeyTopic_[L-{DDD}-{SSSS}].md

Examples:
GutierrezRodelo_2017_IR_Mechanisms_[L-001-0001].md
Ames_2006_Triage_Theory_[L-000-0002].md
```

### Zettels (03-Zettels/)
```
03a-Conscious/    Title_[Z-{DDD}-{SSSS}]-c.md     ← -c suffix = conscious
03b-Subconscious/ Title_[Z-{DDD}-{SSSS}].md       ← no suffix = permanent

Examples:
Insulin_Receptor_[Z-001-0001]-c.md     ← conscious
Insulin_Receptor_[Z-001-0001].md       ← subconscious (promoted)
```

### Synthesis (04-Synthesis/)
```
Topic_Synthesis_[S-{DDD}-{SSSS}].md

Examples:
Insulin_Signaling_Synthesis_[S-001-0001].md
Adipic_Acid_Metabolism_[S-101-0001].md
```

### Structure (05-Structure/)
```
05a-Templates/    Template_{Type}_v{X.X}.md
05b-MOCs/         MOC-{DDD}.md
05c-Indexes/      IDX-{Domain}.md
05d-Projects/     PRJ-{SSSS}/
```

---

## 5. Knowledge Flow v4.0

### The Complete Pipeline

```
SOURCE DISCOVERY
    ↓
00-Inbox/                    ← Quick capture
    ↓
[Process within 24-48h]
    ↓
01-References/01a-Hub/       ← Bibliographic card
    ↓
READING + NOTE-TAKING
    ↓
02-LiteratureNotes/          ← Source extraction
    ← Contains: quotes, thoughts, raw notes
    ← Links to: 01-References/01a-Hub/
    ↓
ZETTEL EXTRACTION
    ↓
03a-Conscious/               ← New atomic zettels
    ← 50-200 words
    ← 3 links minimum
    ← MOC assigned
    ↓
[Time + Review]
    ↓
PROMOTION
    ↓
03b-Subconscious/            ← Permanent knowledge
    ← Never modify
    ← Absolute truth
    ↓
SYNTHESIS
    ↓
04-Synthesis/                ← Living documents
    ← Aggregates subconscious zettels
    ← Evolves with new sources
    ← Tracks "source evolution"
    ↓
NAVIGATION
    ↓
05-Structure/05b-MOCs/       ← Entry points
    ← Links to: 03b zettels, 04 synthesis
    ← Updated automatically
```

---

## 6. Migration Strategy from v3.0 → v4.0

### Phase 1: Infrastructure (GREEN ops)
**Risk:** LOW | **Time:** 30 min | **Downtime:** None

1. Create new folder structure alongside existing
2. Copy (not move) templates to 05-Structure/05a-Templates/
3. Create empty 03a-Conscious/, 03b-Subconscious/, 04-Synthesis/
4. Git commit: "feat: v4.0 folder structure (parallel)"

### Phase 2: Migrate 17 Zettels (YELLOW ops)
**Risk:** MEDIUM | **Time:** 1 hour

1. **All 17 insulin zettels → 03a-Conscious/**
   - Add `-c` suffix to filenames
   - Update YAML: status: conscious
   - Update MOC-001 links
   
2. **LitNote → 02-LiteratureNotes/**
   - Move: `66-Literature/66b-LitNotes/` → `02-LiteratureNotes/`
   
3. **TechRef → 04-Synthesis/**
   - Move: `66-Literature/66c-TechRefs/` → `04-Synthesis/`
   - Rename: `Insulin_Signaling_TechRef_[T-001-0001].md` → `Insulin_Signaling_Synthesis_[S-001-0001].md`
   
4. Git commit: "refactor: Migrate insulin domain to v4.0 structure"

### Phase 3: Archive Legacy (YELLOW ops)
**Risk:** LOW | **Time:** 15 min

1. Move 77-Archive/Legacy_20260222/ → 07-Archive/v3.0-Legacy_20260222/
2. Delete empty 66-Literature/ folder
3. Delete old 11-Templates/, 55-MOCs/ (after confirming copies in 05-Structure/)
4. Git commit: "chore: Archive v3.0 structure, clean empty folders"

### Phase 4: Update System Docs (YELLOW ops)
**Risk:** LOW | **Time:** 30 min

1. Update SYSTEM_README_v3.0.md → SYSTEM_README_v4.0.md
2. Update UID_SYSTEM_v2.0.md with new folder paths
3. Update Template_Zettel_v2.0.md with conscious/subconscious variants
4. Git commit: "docs: Update system documentation for v4.0"

### Phase 5: Subagent Coordination (CRITICAL)
**Before migration:**
- Notify subagent of structure change
- Provide new folder paths
- Update subagent's working context

**After migration:**
- Verify subagent creates notes in correct locations
- Monitor for 48h

---

## 7. Comparison: v3.0 vs v4.0

| Aspect | v3.0 | v4.0 | Benefit |
|--------|------|------|---------|
| **Zettel lifecycle** | None | Conscious → Subconscious | Quality gradient, review process |
| **Templates** | 11-Templates/ | 05-Structure/05a-Templates/ | Consolidated structure |
| **MOCs** | 55-MOCs/ | 05-Structure/05b-MOCs/ | With other navigation |
| **Literature** | 66a/66b/66c | 01-References/, 02-LitNotes/ | Clearer separation |
| **Synthesis** | 66c-TechRefs/ | 04-Synthesis/ | Top-level, prominent |
| **Numbering** | Scattered (11,55,66,77,99) | Sequential (00-09) | Intuitive, logical |
| **Archive** | 77-Archive/ | 07-Archive/ | Fits sequence |
| **System** | 99-System/ | 09-System/ | Almost last (archive is last) |

---

## 8. Subagent Impact Assessment

### What Changes for Subagent

**Current (v3.0):**
- Creates zettels in: `04-Zettels/`
- Creates litnotes in: `66-Literature/66b-LitNotes/`
- Creates techrefs in: `66-Literature/66c-TechRefs/`
- Uses templates from: `11-Templates/`

**New (v4.0):**
- Creates zettels in: `03a-Conscious/` (NEW PATH)
- Creates litnotes in: `02-LiteratureNotes/` (NEW PATH)
- Creates synthesis in: `04-Synthesis/` (NEW PATH)
- Uses templates from: `05-Structure/05a-Templates/` (NEW PATH)

### Coordination Required

**Option A: Hard cutover**
- Pause subagent
- Execute migration
- Update subagent config
- Resume

**Option B: Gradual transition**
- Subagent continues v3.0
- New work uses v4.0
- Periodic consolidation
- Full cutover later

**Recommendation:** Option A (clean break)

---

## 9. Open Questions

### Q1: Should we keep the "-c" suffix?
**Options:**
- A: `Title_[Z-001-0001]-c.md` (explicit)
- B: `Title_[Z-001-0001].md` in 03a-Conscious/ (implicit via folder)
- C: YAML flag only (invisible)

**Recommendation:** B — folder implies status, keeps filenames clean

### Q2: What promotes a zettel to subconscious?
**Options:**
- A: Time-based (30 days)
- B: Manual review (you decide)
- C: Link threshold (3+ links)
- D: Hybrid (time + manual)

**Recommendation:** D — 30 days + your approval

### Q3: Synthesis naming — "Synthesis" or "TechRef"?
**Options:**
- A: `Topic_Synthesis_[S-001-0001].md`
- B: `Topic_TechRef_[T-001-0001].md` (current)
- C: `Topic_LivingDoc_[L-001-0001].md`

**Recommendation:** A — "Synthesis" is clearer than "TechRef"

### Q4: Projects in 05-Structure/ or separate?
**Options:**
- A: `05-Structure/05d-Projects/` (consolidated)
- B: `08-Projects/` (separate, top-level)

**Recommendation:** A — projects are structural (they organize work)

---

## 10. Execution Checklist

**Before executing:**
- [ ] You approve this plan
- [ ] Subagent notified of upcoming change
- [ ] Git status clean (nothing uncommitted)
- [ ] Backup verified (git push to remote)
- [ ] Time allocated (2-3 hours)

**Migration phases:**
- [ ] Phase 1: Infrastructure (create folders)
- [ ] Phase 2: Migrate insulin domain
- [ ] Phase 3: Archive legacy
- [ ] Phase 4: Update docs
- [ ] Phase 5: Subagent coordination

**Post-migration:**
- [ ] All 17 zettels accessible in new location
- [ ] Links working (MOC → zettels)
- [ ] Templates functional
- [ ] Subagent creating notes correctly
- [ ] You can find everything

---

## 11. Rollback Plan

If v4.0 doesn't work:

```bash
# Restore v3.0 from git
git checkout v3.0-final

# Or manually:
# - Restore 02-Atomic/ from 77-Archive/
# - Restore 66-Literature/ from 77-Archive/
# - Delete v4.0 folders
```

**Risk mitigation:** Git preserves all history. Zero risk of data loss.

---

## Summary

v4.0 creates a **knowledge lifecycle**:

```
References → LitNotes → Conscious → Subconscious → Synthesis
   (sources)   (processing)  (working)   (truth)     (integration)
```

**Key improvements:**
1. ✅ Intuitive 00-09 numbering
2. ✅ Conscious/subconscious quality gradient
3. ✅ Consolidated structure (05-Structure/)
4. ✅ Clearer literature pipeline
5. ✅ Prominent synthesis layer

**Ready to execute?** Say "Execute v4.0 migration" or ask questions.
