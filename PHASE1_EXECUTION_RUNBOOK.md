# Phase 1 Execution Runbook — v4.0 Infrastructure
## READY TO EXECUTE — Trigger: "Execute Phase 1"

**Status:** PREPARED  
**Estimated Time:** 35 minutes  
**Risk:** LOW (creates empty folders only)  
**Downtime:** ZERO

---

## What Phase 1 Does

Creates v4.0 folder structure alongside existing v3.0:
- Empty folders (00-09 structure)
- Updated templates (Zettel v4.0, Synthesis v4.0)
- No files moved, no disruption
- Git commit: "v4.0 infrastructure (Phase 1)"

---

## Step-by-Step Execution Commands

### Step 1: Create Folder Structure (10 min)

```bash
# Navigate to vault
cd /home/simon/Workspaces/TheOptimizedBrain/

# Create 01-References/
mkdir -p 01-References/01a-Hub
mkdir -p 01-References/01b-Zotero
mkdir -p 01-References/01c-Other

# Create 02-LiteratureNotes/
mkdir -p 02-LiteratureNotes

# Create 03-Zettels/ (with conscious/subconscious)
mkdir -p 03-Zettels/03a-Conscious
mkdir -p 03-Zettels/03b-Subconscious

# Create 04-Synthesis/
mkdir -p 04-Synthesis

# Create 05-Structure/ (consolidated)
mkdir -p 05-Structure/05a-Templates
mkdir -p 05-Structure/05b-MOCs
mkdir -p 05-Structure/05c-Indexes
mkdir -p 05-Structure/05d-Projects

# 06-Dashboards/ already exists
# Create 07-Archive/ (if not exists)
mkdir -p 07-Archive
# 09-System/ already exists

echo "✅ Folder structure created"
```

---

### Step 2: Create Template_Zettel_v4.0.md (5 min)

**File:** `05-Structure/05a-Templates/Template_Zettel_v4.0.md`

```markdown
---
uid: Z-{DDD}-{SSSS}
type: zettel | zettel-claim | zettel-mech | zettel-cont | zettel-q
title: {{Concise Title}}
aliases: [Z-{DDD}-{SSSS}, {{ShortSlug}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [zettel, {{topic}}, {{subtopic}}]
status: conscious  # ← conscious (03a/) or subconscious (03b/)
parent-moc: [[MOC-{{DDD}}]]
source: [[{{SourceLitNote}}]]
confidence: high | medium | low
created: {{YYYY-MM-DD}}
---

# {{Title}}

{{Single idea, 50-200 words, written as if for print. No context required.}}

{{Key details: bullets, mini-table, or key-value pairs}}

## Links (2-5 required)

- **Upstream/Prerequisite:** [[{{Related1}}]] — Why this matters
- **Parallel/Related:** [[{{Related2}}]] — Connected concept  
- **Downstream/Consequence:** [[{{Related3}}]] — What this enables

## Context

**Also relevant to:** [[MOC-{{SecondaryDomain}}]] (optional)

**Emerges from:** [[{{SourceLitNote}}]]
**Supports:** [[{{Synthesis}}]]

---

*UID: Z-{DDD}-{SSSS} | Domain: {{DDD}} | Status: conscious/subconscious*
```

**Copy command:**
```bash
cat > 05-Structure/05a-Templates/Template_Zettel_v4.0.md << 'EOF'
---
uid: Z-{DDD}-{SSSS}
type: zettel | zettel-claim | zettel-mech | zettel-cont | zettel-q
title: {{Concise Title}}
aliases: [Z-{DDD}-{SSSS}, {{ShortSlug}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [zettel, {{topic}}, {{subtopic}}]
status: conscious
parent-moc: [[MOC-{{DDD}}]]
source: [[{{SourceLitNote}}]]
confidence: high | medium | low
created: {{YYYY-MM-DD}}
---

# {{Title}}

{{Single idea, 50-200 words, written as if for print. No context required.}}

{{Key details: bullets, mini-table, or key-value pairs}}

## Links (2-5 required)

- **Upstream/Prerequisite:** [[{{Related1}}]] — Why this matters
- **Parallel/Related:** [[{{Related2}}]] — Connected concept  
- **Downstream/Consequence:** [[{{Related3}}]] — What this enables

## Context

**Also relevant to:** [[MOC-{{SecondaryDomain}}]] (optional)

**Emerges from:** [[{{SourceLitNote}}]]
**Supports:** [[{{Synthesis}}]]

---

*UID: Z-{DDD}-{SSSS} | Domain: {{DDD}} | Status: conscious/subconscious*
EOF
```

---

### Step 3: Create Template_Synthesis_v4.0.md (15 min)

**File:** `05-Structure/05a-Templates/Template_Synthesis_v4.0.md`

```markdown
---
uid: S-{DDD}-{SSSS}
type: synthesis
title: {{Topic}} — Synthesis
aliases: [S-{DDD}-{SSSS}, {{ShortSlug}}]
domain: {{DDD}}
domain-name: {{DomainName}}
tags: [synthesis, {{topic}}, evolving]
parent-moc: [[MOC-{{DDD}}]]
status: evolving | mature | stable
created: {{YYYY-MM-DD}}
last-updated: {{YYYY-MM-DD}}
---

# {{Topic}} — Synthesis

> **Living document:** This synthesis evolves as new sources are processed.  
> **Domain:** {{DDD}} ({{DomainName}})  
> **Last synthesis:** {{YYYY-MM-DD}}

---

## 1. Core Definition

**Current understanding:** {{One paragraph synthesis in your own words}}

**Key entities:**
- [[{{Zettel1}}]] — {{brief description}}
- [[{{Zettel2}}]] — {{brief description}}
- [[{{Zettel3}}]] — {{brief description}}

---

## 2. Source Evolution

### Initial Understanding ({{FirstSource}})
**Source:** [[{{LitNote1}}]]
**Key insight:** {{Original understanding}}
**Zettels extracted:** {{count}}
**Impact:** {{How it shaped understanding}}

### Update 1 ({{Date}})
**Source:** [[{{LitNote2}}]]
**New finding:** {{What changed}}
**Synthesis:** {{How understanding evolved}}

### Pending Updates
- {{Future source or research direction}}

---

## 3. Zettel Catalog

Zettels that constitute this synthesis:

| UID | Zettel | Type |
|-----|--------|------|
| Z-{{DDD}}-0001 | [[{{Zettel1}}]] | {{type}} |
| Z-{{DDD}}-0002 | [[{{Zettel2}}]] | {{type}} |

---

## 4. Clinical/Practical Connections

**Biomarkers:**
- [[{{Biomarker}}]] — {{connection}}

**Protocols:**
- [[{{Protocol}}]] — {{application}}

**Metabolomics relevance:**
{{How this manifests in metabolomics data}}

---

## 5. Open Questions

| Question | Current Understanding | Research Needed |
|----------|----------------------|-----------------|
| {{Q1}} | {{Current}} | {{Needed}} |
| {{Q2}} | {{Current}} | {{Needed}} |

---

## 6. Related Synthesis

| Synthesis | Topic | Connection |
|-----------|-------|------------|
| [[{{RelatedSynth1}}]] | {{Topic}} | {{Connection}} |
| [[{{RelatedSynth2}}]] | {{Topic}} | {{Connection}} |

---

## 7. Updates Log

| Date | Update | Source |
|------|--------|--------|
| {{YYYY-MM-DD}} | Initial creation | {{Source}} |

---

*Document type: Living synthesis*  
*UID: S-{DDD}-{SSSS} | Domain: {{DDD}} | Status: evolving*
```

---

### Step 4: Create Placeholder README Files (5 min)

```bash
# README for 03a-Conscious
cat > 03-Zettels/03a-Conscious/README.md << 'EOF'
# 03a-Conscious — Working Zettels

**Status:** Working memory, under review  
**Rules:** 
- Modifiable
- May have errors/uncertainty
- Review after 30 days
- Promote to subconscious when mature

**Promotion criteria:**
- [ ] 30+ days old
- [ ] Reviewed by you
- [ ] No factual doubts
- [ ] Well-linked (3+ connections)
- [ ] Source verified
EOF

# README for 03b-Subconscious
cat > 03-Zettels/03b-Subconscious/README.md << 'EOF'
# 03b-Subconscious — Permanent Zettels

**Status:** Long-term memory, ground truth  
**Rules:**
- NEVER MODIFY (only add links)
- Absolute truth (as of promotion date)
- Immutable core
- Foundation for synthesis

**⚠️ WARNING:** These are your bedrock. Add new understanding as NEW zettels, don't edit these.
EOF

# README for 04-Synthesis
cat > 04-Synthesis/README.md << 'EOF'
# 04-Synthesis — Living Knowledge

**Purpose:** Evolving synthesis documents that aggregate zettels  
**Status:** Always evolving, never "finished"  
**Contains:**
- Core definitions
- Source evolution history
- Zettel catalogs
- Clinical connections
- Open questions

**Naming:** `Topic_Synthesis_[S-{DDD}-{SSSS}].md`
EOF

echo "✅ README files created"
```

---

### Step 5: Git Commit (5 min)

```bash
cd /home/simon/Workspaces/TheOptimizedBrain/

# Add new structure
git add 01-References/ 02-LiteratureNotes/ 03-Zettels/ 04-Synthesis/ 05-Structure/
git add 07-Archive/

# Commit
git commit -m "feat: v4.0 infrastructure (Phase 1)

New folder structure (00-09):
- 01-References/ (Hub, Zotero, Other)
- 02-LiteratureNotes/ (source processing)
- 03-Zettels/03a-Conscious/ (working)
- 03-Zettels/03b-Subconscious/ (permanent)
- 04-Synthesis/ (living documents)
- 05-Structure/ (Templates, MOCs, Indexes, Projects)
- 07-Archive/ (legacy storage)

Templates created:
- Template_Zettel_v4.0.md (with status field)
- Template_Synthesis_v4.0.md (living document)
- README files for Conscious/Subconscious/Synthesis

Status: Phase 1 complete. Ready for Phase 2 (migration)."

echo "✅ Phase 1 committed"
```

---

## Post-Phase 1 State

**What exists:**
```
TheOptimizedBrain/
├── 00-Inbox/ (existing)
├── 01-References/ (NEW — empty)
├── 02-LiteratureNotes/ (NEW — empty)
├── 03-Zettels/ (NEW — empty, with READMEs)
├── 04-Synthesis/ (NEW — empty, with README)
├── 05-Structure/05a-Templates/ (NEW — 2 templates)
├── 06-Dashboards/ (existing)
├── 07-Archive/ (NEW — empty)
├── 09-System/ (existing)
├── 04-Zettels/ (existing — 17 zettels, v3.0)
├── 11-Templates/ (existing — v3.0)
├── 55-MOCs/ (existing — v3.0)
└── 66-Literature/ (existing — v3.0)
```

**Parallel systems:** v3.0 and v4.0 coexist

---

## Next: Phase 2 (Migration)

**Trigger:** "Execute Phase 2"  
**Duration:** 1 hour  
**Actions:**
- Move 17 insulin zettels to 03-Zettels/03a-Conscious/
- Move LitNote to 02-LiteratureNotes/
- Move Synthesis to 04-Synthesis/
- Update all internal links
- Git commit

---

## Rollback (If Needed)

```bash
# Simply delete v4.0 folders, keep v3.0
cd /home/simon/Workspaces/TheOptimizedBrain/
rm -rf 01-References/ 02-LiteratureNotes/ 03-Zettels/ 04-Synthesis/ 05-Structure/ 07-Archive/
git checkout HEAD~1  # Revert commit
```

**Data loss:** ZERO (v3.0 untouched)

---

## Execution Checklist

**Before Phase 1:**
- [ ] Git status clean
- [ ] No uncommitted work
- [ ] Time allocated (35 min)
- [ ] Decision: Proceed

**During Phase 1:**
- [ ] Run Step 1 (folders)
- [ ] Run Step 2 (Zettel template)
- [ ] Run Step 3 (Synthesis template)
- [ ] Run Step 4 (READMEs)
- [ ] Run Step 5 (commit)

**After Phase 1:**
- [ ] Verify folders exist
- [ ] Verify templates created
- [ ] Verify commit successful
- [ ] Ready for Phase 2

---

**Document Status:** READY TO EXECUTE  
**Trigger Phrase:** "Execute Phase 1"  
**Last Updated:** 2026-02-22
