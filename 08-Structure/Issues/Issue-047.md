---
id: ISSUE-047
title: K2.6 CGPT AutoResearch — Autonomous Knowledge Extraction
assignee: RON+SCOUT+FORG
energy: 10h / $3.50
priority: P1
status: backlog
created: 2026-04-22
parent: none
spawned: []
---

# ISSUE-047: K2.6 CGPT AutoResearch System

## Success Criteria

- [ ] SCOUT prioritizes 671 CGPT conversations (HIGH/MEDIUM/LOW)
- [ ] K2.6 validates HIGH-value items with web search + reasoning
- [ ] Confirmed findings auto-converted to LitNotes by FORG
- [ ] 50 CGPT conversations processed in pilot (7% of backlog)
- [ ] LitNotes created with full source attribution (CGPT conversation ID)
- [ ] Zettels extracted from confirmed findings
- [ ] Document AutoResearch protocol as reusable skill
- [ ] Integration with night shift for batch processing

## Context

Kimi K2.6 has DeepSearchQA 83.0% (vs K2.5 77.1%) and BrowseComp 83.2% — dramatically better at web research and validation. We have 671 unprocessed CGPT conversations containing clinical insights, paper references, and hypotheses.

**K2.6 Advantage:**
- DeepSearchQA: 83.0% — better at synthesizing search results
- BrowseComp: 83.2% — better web search quality
- Tool use: can execute searches, parse results, validate claims
- Reasoning: 96.4% AIME — better at connecting disparate concepts

**Current State:**
- 688 total CGPT conversations
- 17 processed (2.5%)
- 671 pending (97.5%)
- Risk: knowledge decay, duplicate effort

## Implementation Plan

### Phase 1: Prioritization Engine (2 hours)
1. SCOUT analyzes all 671 conversations:
   ```
   Input: CGPT conversation export (JSON)
   Output: priority-list-YYYY-MM-DD.json
   
   Criteria:
   - HIGH: Contains specific paper citations, clinical protocols, quantified data
   - MEDIUM: Contains hypotheses, interesting claims, partial references
   - LOW: General discussion, brainstorming, already captured elsewhere
   ```

2. K2.6 reviews SCOUT output:
   - Validates HIGH priority selections
   - Identifies false positives/negatives
   - Finalizes processing queue

### Phase 2: Validation Pipeline (4 hours)
1. K2.6 processes HIGH items:
   ```
   For each HIGH conversation:
   1. Extract all paper citations (DOI, title, authors)
   2. Web search: verify paper exists, check relevance
   3. Extract quantified claims (numbers, percentages, ranges)
   4. Cross-reference with existing zettels (avoid duplication)
   5. Output: validated-findings-XXX.json
   ```

2. Validation criteria:
   - Paper must be findable (PubMed, Google Scholar)
   - Claims must have source attribution
   - Must not duplicate existing zettels
   - Clinical relevance must be demonstrable

### Phase 3: Extraction Pipeline (3 hours)
1. FORG creates LitNotes from validated findings:
   ```
   Input: validated-findings-XXX.json
   Template: LitNote v5.0 with CGPT source
   Output: Author_Year_L-XXX-XXXX.md
   
   Special fields:
   - source-origin: CGPT conversation #XXXX
   - extraction-method: AutoResearch v1.0
   - validation-status: K2.6 verified
   ```

2. FORG extracts zettels from LitNotes:
   - Standard zettel extraction protocol
   - Links to existing zettels where possible
   - Creates new zettels for novel claims

### Phase 4: Integration (1 hour)
1. Night shift integration:
   - AutoResearch becomes night shift task type
   - Processes 5-10 CGPT conversations per night
   - Full pipeline: SCOUT → K2.6 → FORG → RON review

2. Documentation:
   - Create `Skill-AutoResearch_v1.0.md`
   - Document: prioritization, validation, extraction
   - Add to Skills index

## Progress Log

- [11:40] Issue created, awaiting assignment

## Blockers

None

## Notes

**Risk Mitigation:**
- K2.6 validation prevents garbage-in-garbage-out
- Cross-reference with existing zettels prevents duplication
- RON review gate before promotion to conscious zettels

**Expected Outcome:**
- 50 CGPT conversations → ~25-30 LitNotes → ~100-150 zettels
- Cost: ~$1.50 (FORG) + $1.00 (K2.6 search) = ~$2.50 for pilot
- Timeline: 2-3 days for pilot

**Future Enhancement:**
- MEDIUM priority processing (less validation, faster)
- Auto-synthesis: K2.6 identifies themes across multiple CGPT conversations
- Alert system: notify when new HIGH priority conversation detected

**Metrics:**
- Conversion rate: CGPT → LitNote (target: 50%)
- Validation accuracy: K2.6 confirmed vs. rejected (target: 80%)
- Duplication rate: new vs. existing zettels (target: <20%)
