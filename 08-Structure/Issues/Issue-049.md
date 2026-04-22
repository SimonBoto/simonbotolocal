---
id: ISSUE-049
title: K2.6 Intelligent Synthesis Engine — Continuous Insight Generation
assignee: RON
energy: 10h / $3.50
priority: P2
status: backlog
created: 2026-04-22
parent: none
spawned: []
---

# ISSUE-049: K2.6 Intelligent Synthesis Engine

## Success Criteria

- [ ] K2.6 analyzes 1,630 zettels weekly for semantic clustering
- [ ] Identifies 3-5 synthesis candidates per week
- [ ] Drafts synthesis documents with full source attribution
- [ ] Cross-references with existing synthesis (avoid duplication)
- [ ] Flags for human review with confidence scores
- [ ] Tracks: synthesis → zettel promotion → MOC update
- [ ] 4 synthesis documents created in pilot month
- [ ] Document synthesis protocol as reusable skill
- [ ] Integration with weekly consolidation ritual

## Context

Kimi K2.6 has MMMU-Pro 79.4% and MathVision 87.4% — excellent at pattern detection across diverse content. Current synthesis is manual and sporadic. This issue creates a continuous synthesis pipeline.

**K2.6 Advantage:**
- MMMU-Pro: 79.4% — strong visual + textual reasoning
- MathVision: 87.4% — excellent at quantitative pattern detection
- Reasoning: 96.4% AIME — better at connecting disparate concepts
- Long context: 256K — can hold entire MOC in working memory
- Agent swarm: can delegate sub-analysis to parallel instances

**Current State:**
- Zettels: ~1,630
- Synthesis documents: 19
- Orphan zettels: 312
- Synthesis rate: ~1-2 per month (manual)

## Implementation Plan

### Phase 1: Clustering Engine (3 hours)
1. K2.6 analyzes zettel corpus:
   ```
   Input: All zettels in 03-Zettels/Conscious/
   Method: Semantic clustering (LanceDB + K2.6 reasoning)
   Output: cluster-report-YYYY-MM-DD.json
   
   Cluster types:
   - Thematic: shared concepts (e.g., "insulin resistance mechanisms")
   - Temporal: related time periods (e.g., "2024 clinical trials")
   - Methodological: shared methods (e.g., "LC-MS metabolomics")
   - Contradictory: opposing claims (synthesis opportunity)
   ```

2. Cluster scoring:
   ```
   Score = (zettel_count * 0.3) + 
           (connection_density * 0.3) + 
           (novelty * 0.2) + 
           (clinical_relevance * 0.2)
   
   Threshold: Score > 7.0 → synthesis candidate
   ```

### Phase 2: Synthesis Drafting (4 hours)
1. K2.6 drafts synthesis for top 3-5 clusters:
   ```
   Template: Synthesis_v2.0.md
   
   Sections:
   - Overview: What connects these zettels
   - Key Claims: Atomic statements with evidence
   - Contradictions: Where zettels disagree
   - Gaps: What's missing
   - Implications: Clinical/research significance
   - Sources: All zettels referenced
   ```

2. Quality criteria:
   - Minimum 5 zettels referenced
   - All claims linked to source zettels
   - Contradictions explicitly noted
   - Gaps honestly flagged
   - Clinical relevance stated

### Phase 3: Review Pipeline (2 hours)
1. K2.6 self-review:
   - Cross-check against existing synthesis
   - Verify all links resolve
   - Check for hallucinated connections
   - Confidence score: 0-100

2. Human review gate:
   - Synthesis candidates flagged in weekly ritual
   - You approve/reject/modify
   - Approved → 04-Synthesis/
   - Rejected → notes for future reconsideration

### Phase 4: Integration (1 hour)
1. Weekly consolidation ritual enhancement:
   - Add "Synthesis Candidates" section
   - K2.6 presents top 3 clusters
   - You decide: approve, defer, reject

2. Documentation:
   - Create `Skill-Synthesis-Engine_v1.0.md`
   - Document: clustering, drafting, review
   - Add to Skills index

## Progress Log

- [11:40] Issue created, awaiting assignment

## Blockers

None

## Notes

**Expected Outcome:**
- 3-5 synthesis candidates per week
- 1-2 approved per month
- 12-24 new synthesis documents per year
- Cost: ~$0.50/week (K2.6 analysis only)

**Risk Mitigation:**
- Human review gate prevents low-quality synthesis
- Cross-reference with existing prevents duplication
- Confidence scores help prioritize review

**Future Enhancement:**
- Auto-update synthesis when new zettels added
- Detect synthesis decay (when new evidence contradicts)
- Synthesis-to-zettel feedback loop
- Integration with PhD writing (auto-generate chapter sections)

**Metrics:**
- Conversion rate: candidates → approved synthesis (target: 30%)
- Quality score: human rating 1-5 (target: >4)
- Time to synthesis: cluster detection → approved doc (target: <2 weeks)
