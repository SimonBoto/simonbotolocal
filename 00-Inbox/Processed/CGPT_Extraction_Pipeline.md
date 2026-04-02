# CGPT Archive Extraction Pipeline

**Total conversations:** 675  
**Goal:** Extract all valuable knowledge  
**Method:** Batch processing (10 conversations per session)  
**Timeline:** ~68 sessions at current pace

---

## The Pipeline Architecture

### Stage 1: Inventory & Triage (One-time setup)
- [ ] Catalog all 675 conversations with metadata
- [ ] Assign extraction priority scores
- [ ] Group by theme for batch efficiency
- [ ] Identify duplicates/low-value for SKIP

### Stage 2: Batch Processing (Ongoing)
Each batch = 10 conversations:
1. **Pre-read** (10 min): Scan for content quality
2. **Extract** (60-90 min): Create LitNotes + zettels
3. **Commit** (5 min): Git checkpoint
4. **Log** (5 min): Update progress tracker

### Stage 3: Quality Assurance
- Weekly: Review extraction quality
- Monthly: Assess zettel network integrity
- Quarterly: Re-prioritize remaining queue

---

## Metadata Schema for Each Conversation

```yaml
uid: CGPT-XXXX
title: "..."
messages: N
date: YYYY-MM-DD
themes: [theme1, theme2]
quality_score: 1-5  # Content density/novelty
priority: P0/P1/P2/P3/SKIP
status: pending/extracted/skipped
parent-moc: [[MOC-CGPT-Archive]]
estimated_zettels: N
estimated_litnotes: N
domain: 001/101/etc
notes: "..."
```

---

## Batching Strategy

### Option A: Theme-Based (Recommended)
**Group by subject, extract related conversations together:**
- Batch 1-5: Adipic acid (all 4 + related)
- Batch 6-15: Vitamin D (all VitD conversations)
- Batch 16-25: Metabolism/Krebs/glycolysis
- Batch 26-35: Amino acids/proteins
- Batch 36-45: Clinical protocols/IRB
- etc.

**Advantage:** Cross-references emerge naturally, MOCs build coherently

### Option B: Size-Based
- Short conversations (<10 messages) = quick wins
- Medium (10-30) = standard extraction
- Long (>30) = deep work sessions

### Option C: Priority-Only (Current)
- Only extract P0/P1
- Risk: Never get to P2/P3 valuable content

---

## Quality Thresholds

### Extract If:
- ≥5 messages with substantive content
- Novel mechanisms or insights
- Clinical applications
- Research-relevant for PhD
- Cross-links to existing zettels

### Skip If:
- <5 messages of general knowledge
- Tech support/administrative
- Duplicates of extracted content
- Personal/non-clinical Greek language

---

## Progress Tracking

### Session Log Template
```
Date: YYYY-MM-DD
Batch: #N (Theme)
Conversations: CGPT-XXXX, ...]
LitNotes created: N
Zettels created: N
Commits: N
Time: X hours
Quality check: Pass/Fail
Notes: ...
```

### Running Totals
- Conversations extracted: X/675
- LitNotes total: X
- Zettels total: X
- Estimated completion: X weeks at current pace

---

## Resource Management

### Per Session (2-3 hours):
- 10 conversations maximum
- Focus on ONE theme per session
- Quality > speed
- Stop when fatigue hits

### Weekly Target:
- 2-3 deep work sessions
- 20-30 conversations processed
- ~50-80 zettels created

### Sustainability:
- Take breaks between batches
- Review and consolidate periodically
- Don't burn out on low-value content

---

## First Batches (Ready to Start)

### Batch #1: Adipic Acid Foundation
1. CGPT-0413 (67 messages) - Oxalic acid
2. CGPT-0505 - Vitamin C to oxalate
3. CGPT-0549 - Ascorbate chemistry
4. CGPT-0586 - Fatty acid metabolism
5-10. Find 6 more chemistry/metabolism related

### Batch #2: IRB & Clinical Prep
1. CGPT-0189 - Sirolimus toxicity
2. CGPT-0359 - Compliance/approval
3. CGPT-0131 - Medical ethics
4-10. Find 7 more clinical trial related

### Batch #3: Vitamin D Deep Dive
(Find all 20+ VitD conversations, rank by quality)

---

## Success Metrics

### Completion:
- [ ] 100 conversations (15%)
- [ ] 250 conversations (37%)
- [ ] 500 conversations (74%)
- [ ] 675 conversations (100%)

### Quality:
- Zero orphaned zettels
- All cross-references functional
- MOCs maintained and growing
- Clinical utility confirmed

---

## Next Actions

### Immediate (Tonight/Tomorrow):
1. **Catalog first 50 conversations** with metadata
2. **Assign batch themes** for next 10 sessions
3. **Create tracking spreadsheet**

### This Week:
1. **Complete Batch #1** (Adipic acid)
2. **Complete Batch #2** (IRB prep)
3. **Catalog next 100 conversations**

### This Month:
1. **50 conversations extracted**
2. **150+ zettels created**
3. **Full pipeline operational**

---

*Goal: Extract all 675 systematically, 10 at a time, with quality.*

---

## Connection to Vault

- Up: [[MOC-CGPT-Archive]]
- Related: [[MOC-Research-Methods]], [[MOC-PhD-Research]]
