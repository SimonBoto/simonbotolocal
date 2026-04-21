# Template Assessment — Major Issue Identified

## **THE PROBLEM: 3 Different LitNote Templates**

| Template | Location | Purpose | Status |
|----------|----------|---------|--------|
| **Template_LitNote_v1.0.md** | 08-Structure/Templates/ | Legacy | ⚠️ Outdated |
| **Template_LitNote_v2.0.md** | 08-Structure/Templates/ | Current standard | ✅ Active |
| **FORG litnote-template.md** | workspace-forg/templates/ | FORG agent | 🔄 Needs alignment |

---

## **TEMPLATE COMPARISON**

### YAML Frontmatter

| Field | v1.0 (Legacy) | v2.0 (Standard) | FORG (Current) |
|-------|---------------|-----------------|----------------|
| uid | `{{YYYYMMDD}}{{HHMM}}` | `{{L-XXX-XXXX}}` | `L-XXX-XXXX` ✅ |
| type | `lit-note` | `lit-note` | `lit-note` ✅ |
| title | `Lit — {{Paper Title}}` | `Lit — {{Source Title}}` | `"[TITLE]"` ⚠️ Different format |
| aliases | ❌ Missing | ✅ Present | ✅ Present |
| authors | `"{{Author}}"` | `"{{Author1, Author2}}"` | `[AUTHOR]` ⚠️ No quotes |
| year | `{{YYYY}}` | `{{YYYY}}` | `YYYY` ✅ |
| journal | `{{Journal}}` | `{{Journal}}` | `[JOURNAL]` ✅ |
| doi | ❌ Missing | `{{DOI}}` | `N/A` ✅ |
| pmid | ❌ Missing | `{{PMID}}` | `N/A` ✅ |
| pmcid | ❌ Missing | ❌ Missing | `N/A` ✅ Added by FORG |
| tier | ❌ Missing | `{{GOLD\|SILVER\|BRONZE}}` | `[GOLD/SILVER/BRONZE]` ✅ |
| relevance | ❌ Missing | `{{Why this matters}}` | `[High/Medium/Low]` ✅ |
| status | ❌ Missing | `extracting` | `extracted` ⚠️ Different |
| parent-moc | ❌ Missing | `"[[MOC-Example]]"` | `"[[MOC-Topic]]"` ✅ |
| parent-index | ❌ Missing | ❌ Missing | `"[[01-Literature-Index]]"` ✅ Added |
| extraction-date | ❌ Missing | `{{YYYY-MM-DD}}` | `"YYYY-MM-DD"` ✅ |
| source-inbox | ❌ Missing | `"[[Inbox_{{Title}}]]"` | `"[[SOURCE_FILE]]"` ✅ |
| zettel-count | ❌ Missing | `{{N}}` | `[N]` ✅ |
| reference-count | ❌ Missing | `{{N}}` | `[N]` ✅ |
| extraction-quality | ❌ Missing | `{{GOLD\|SILVER\|BRONZE}}` | ❌ Missing |
| tags | ❌ Missing | ✅ Present | ✅ Present |

**Verdict:** FORG's YAML is **more complete** than v2.0 standard.

---

### Body Structure

| Section | v1.0 (Legacy) | v2.0 (Standard) | FORG (Current) | L-001-0631 (Optimal) |
|---------|---------------|-----------------|----------------|----------------------|
| **Source** | ✅ Basic | ✅ Detailed | ✅ Detailed | ✅ Detailed |
| **Core Claim** | ❌ Missing | ✅ One sentence | ❌ Missing | ❌ Missing |
| **Core Concepts** | ❌ Missing | ❌ Missing | ✅ Has it | ✅ Numbered (1,2,3,4) |
| **Zettels Extracted** | ❌ Missing | ✅ Structured | ✅ Has it | ✅ Has it |
| **References Used** | ❌ Missing | ✅ Table | ❌ Missing | ❌ Missing |
| **Snowball** | ❌ Missing | ✅ Table | ❌ Missing | ❌ Missing |
| **Status Checklist** | ❌ Missing | ✅ At bottom | ✅ Added | ✅ Has it |
| **Source Reference** | ❌ Missing | ❌ Missing | ✅ Added | ✅ Has it |

**Verdict:** v2.0 has **snowball/references** FORG lacks. L-001-0631 has **numbered concepts**.

---

## **CRITICAL DIFFERENCES**

### 1. **Concept Numbering**
- **v2.0:** No core concepts section
- **FORG:** Has core concepts but **not numbered**
- **L-001-0631:** ✅ Numbered (1, 2, 3, 4)
- **Action:** FORG should number concepts

### 2. **Snowball References**
- **v2.0:** ✅ Has snowball table
- **FORG:** ❌ Missing
- **L-001-0631:** ❌ Missing
- **Action:** Add to FORG template

### 3. **References Used Table**
- **v2.0:** ✅ Has table
- **FORG:** ❌ Missing
- **L-001-0631:** ❌ Missing
- **Action:** Optional — adds overhead

### 4. **Core Claim**
- **v2.0:** ✅ "One sentence — what does this source establish?"
- **FORG:** ❌ Missing
- **L-001-0631:** ❌ Missing
- **Action:** Add to FORG

---

## **CONSOLIDATION PLAN**

### Master Template Should Include:

**From v2.0 (Standard):**
- Snowball references table
- Core claim section
- References used table (optional)
- Pre-flight checklist

**From FORG (Agent-optimized):**
- Complete YAML (pmcid, parent-index)
- Status checklist
- Source Reference section
- Protocol log

**From L-001-0631 (Optimal):**
- Numbered core concepts (1, 2, 3, 4)
- Subsection headers (**Category**, **Mechanism**)
- Horizontal rules (---)
- Code blocks for reactions

---

## **RECOMMENDATION**

### Option A: Consolidate to ONE Master Template
Update `Template_LitNote_v2.0.md` with:
1. ✅ FORG's complete YAML
2. ✅ L-001-0631's numbered concepts
3. ✅ v2.0's snowball table
4. ✅ FORG's status checklist

Delete v1.0 (legacy). Update FORG to use v2.0.

### Option B: Two Templates
- **v2.0** — Human manual extraction (snowball, references)
- **FORG** — Agent-optimized (protocol log, automated)

**My recommendation: Option A** — Single source of truth.

---

## **IMMEDIATE ACTION**

Shall I:
1. **Consolidate v2.0** with FORG + L-001-0631 features?
2. **Delete v1.0** (legacy)?
3. **Update FORG** to match consolidated template?

This resolves the "major issue" of multiple templates.
