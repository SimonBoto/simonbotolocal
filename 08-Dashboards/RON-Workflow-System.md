---
aliases: [RON-Workflow-System, Extraction-Workflows, Muscle-Brain-System]
tags: [workflow, system, automation, ron, optimization]
version: 2.0
---

# RON Workflow System — Three Tiers

**Purpose:** Optimized extraction workflows for different atomic types and contexts
**Speed Range:** 5 min (Muscle) → 60 min (Brain) → 0 min automated (System)

---

## Tier 1: MUSCLE — Rapid Extraction

**When to Use:**
- Literature binge (10+ papers)
- Conference notes
- Quick capture during reading
- Batch processing

**Model:** `openrouter/x-ai/grok-4.1-fast`
**Time:** 5-10 minutes per atomic
**Output Quality:** Seed status (raw, needs review)

### Workflow Steps

#### 1. Trigger (Hub or Proactive)
```
Hub: "Extract from this paper"
OR Proactive: Inbox scan detects new PDF
```

#### 2. Spawn Muscle Agent
```bash
sessions_spawn task="
  Read paper at path/to/paper.pdf
  Extract exactly 3 atomics:
  1. Main claim (1 sentence + 2-3 sources)
  2. Key method (procedure summary)
  3. Clinical implication (so what?)
  Use minimal YAML (uid, tags, source)
  Save to 00-Inbox/fleeting/ as seeds
" model=openrouter/x-ai/grok-4.1-fast runTimeoutSeconds=300
```

#### 3. Output Generated (Auto)
Files created:
- `00-Inbox/fleeting/Fleeting_PaperTitle_Claim_YYYYMMDD.md`
- `00-Inbox/fleeting/Fleeting_PaperTitle_method_YYYYMMDD.md`
- `00-Inbox/fleeting/Fleeting_PaperTitle_implication_YYYYMMDD.md`

#### 4. Hub Review Required
Hub options:
- **Delete** → Trash (not valuable)
- **Expand** → Promote to Atomic (use Tier 2)
- **Merge** → Combine with existing atomic
- **Queue** → Leave for batch review

### Muscle Tier Best Practices

**DO:**
- Use for high-volume intake
- Capture the 20% most important from each source
- Generate seeds, not finished atomics
- Batch 5-10 papers per spawn

**DON'T:**
- Expect polished output
- Use for complex mechanisms
- Skip Hub review
- Create orphans (always link to source)

---

## Tier 2: BRAIN — Deep Processing

**When to Use:**
- Complex mechanisms
- Protocol design
- Critical claims needing verification
- Synthesis across multiple sources

**Model:** `moonshot/kimi-k2.5` (you, directly)
**Time:** 30-60 minutes per atomic
**Output Quality:** Mature status (fully linked, publication-ready)

### Workflow Steps

#### 1. Hub Initiates (Explicit)
```
Hub: "Create deep atomic on adipic mechanism"
```

#### 2. Research Phase (Brain)
- Search existing atomics (`grep -r "adipic" 33-Atomic/`)
- Fetch related literature (`web_search`)
- Check contradictions (`memory recall`)

#### 3. Synthesis Phase (Brain + Hub)
- Draft using [[Template_Atomic_Claim_20260219]]
- Verify claims (cross-check sources)
- Add mechanisms (step-by-step)
- Create ASCII diagram if needed

#### 4. Connection Phase (Brain)
**Mandatory:**
- Link to ≥2 existing atomics (incoming)
- Link to ≥2 related atomics (outgoing)
- Update parent MOC
- Add to [[MOC-Insulin-Signaling]] if relevant

#### 5. Refinement (Brain)
- Word count check: 300-800 words
- Tag standardization: 5-7 tags max
- YAML completeness: All fields filled
- Bidirectional link verification

#### 6. Output
File: `33-Atomic/Name_Descriptor_YYYYMMDD.md`
Status: `mature`
Git commit: Immediate

### Brain Tier Best Practices

**DO:**
- Verify every claim
- Cite primary sources
- Create diagrams for complexity
- Anticipate counter-arguments
- Leave open questions

**DON'T:**
- Rush (this is the quality tier)
- Skip verification
- Create orphans
- Over-tag (>7 tags)

---

## Tier 3: SYSTEM — Automated Harvesting

**When to Use:**
- RSS feed monitoring
- Recurring PubMed searches
- Daily literature alerts
- Background intelligence gathering

**Model:** Cron jobs + scripts
**Time:** 0 minutes (automated)
**Output Quality:** Fleeting notes (queue for review)

### Workflow Architecture

#### 1. Sources (Inputs)
| Source | Frequency | Output |
|--------|-----------|--------|
| PubMed RSS | Daily | New abstracts |
| Google Scholar alerts | Weekly | New citations |
| Journal TOCs | Weekly | New issues |
| Twitter/X lists | Daily | Researcher updates |

#### 2. Cron Configuration
```cron
# Daily at 6 AM: PubMed check
0 6 * * * /home/simon/openclaw/scripts/pubmed-check.sh

# Weekly Sunday: Scholar alerts
0 8 * * 0 /home/simon/openclaw/scripts/scholar-check.sh

# Weekly Monday: Journal TOCs
0 9 * * 1 /home/simon/openclaw/scripts/journal-toc-check.sh
```

#### 3. Processing Script (Auto)
```bash
#!/bin/bash
# pubmed-check.sh

# Search PubMed for new papers
papers=$(pubmed_search "metabolomics insulin resistance" --since yesterday)

for paper in $papers; do
  # Create fleeting note
  cat > "00-Inbox/auto/Fleeting_PMID_${paper}_$(date +%Y%m%d).md" << EOF
---
uid: $(date +%Y%m%d%H%M%S)
tags: [fleeting, auto, pubmed, metabolomics, ir]
source: https://pubmed.ncbi.nlm.nih.gov/${paper}/
status: fleeting
---

# $(pubmed_title $paper)

**Authors:** $(pubmed_authors $paper)
**Journal:** $(pubmed_journal $paper)
**Date:** $(date +%Y-%m-%d)

## Abstract
$(pubmed_abstract $paper)

## Auto-Tagged Topics
$(auto_tag "$paper")

## Hub Review Needed
- [ ] Read full text
- [ ] Extract atomics (use Muscle or Brain tier)
- [ ] Trash if not relevant

*Auto-generated $(date)*
EOF
done

# Notify Hub
echo "$(echo $papers | wc -w) new papers in 00-Inbox/auto/" | notify
```

#### 4. Hub Review Queue
Daily dashboard shows:
- New fleeting notes (auto + muscle)
- Pending review count
- Suggested promotions (AI-ranked by relevance)

Hub action:
- 5 min morning: Scan titles, trash 80%
- 15 min weekly: Promote promising 20% to Brain tier

### System Tier Best Practices

**DO:**
- Set up broad search terms (cast wide net)
- Auto-tag by keyword matching
- Queue for review (don't auto-promote)
- Keep fleeting notes disposable

**DON'T:**
- Auto-create atomics (quality control needed)
- Let queue backlog (>50 pending = problem)
- Miss reviewing for >1 week
- Over-automate (human judgment essential)

---

## Workflow Selection Guide

| Context | Tier | Model | Time | Output |
|---------|------|-------|------|--------|
| 10 papers to process | Muscle | Grok | 10 min/paper | Seeds |
| Complex mechanism | Brain | Kimi | 60 min | Mature |
| Daily literature scan | System | Cron | 0 min | Fleeting |
| Patient observation | Brain | Kimi | 30 min | Atomic |
| Conference notes | Muscle | Grok | 5 min/note | Seeds |
| Protocol design | Brain | Kimi | 60 min | Mature |
| Weekly summary | System | Cron | 0 min | Digest |

---

## Integration Flow

```
┌─────────────────────────────────────────────────────┐
│  SYSTEM (Cron)                                      │
│  ↓ 0 min                                            │
│  00-Inbox/auto/Fleeting_*.md                        │
└─────────────────┬───────────────────────────────────┘
                  │ Hub reviews (5 min/day)
                  ↓
┌─────────────────────────────────────────────────────┐
│  MUSCLE (Spawn)                                     │
│  ↓ 10 min                                           │
│  00-Inbox/fleeting/Fleeting_*.md                    │
└─────────────────┬───────────────────────────────────┘
                  │ Hub promotes or merges
                  ↓
┌─────────────────────────────────────────────────────┐
│  BRAIN (Direct)                                     │
│  ↓ 60 min                                           │
│  33-Atomic/Mature_*.md                              │
└─────────────────────────────────────────────────────┘
```

---

## Quality Metrics

| Tier | Target Quality | Review Rate | Conversion |
|------|----------------|-------------|------------|
| System | 10% keep | Daily | 10% → Muscle/Brain |
| Muscle | 30% promote | Per batch | 30% → Brain |
| Brain | 90% mature | Immediate | 90% → Mature |

**Goal:** 80% of mature atomics come from Brain tier (quality control)

---

## Activation

**Status:** 🟢 Ready to deploy  
**Immediate Actions:**
1. Use Brain tier for current UoC PhD work
2. Setup Muscle tier for next literature binge
3. Configure System tier (cron) when you're ready

**Hub decision:** Which tier for your next task? 🦞
