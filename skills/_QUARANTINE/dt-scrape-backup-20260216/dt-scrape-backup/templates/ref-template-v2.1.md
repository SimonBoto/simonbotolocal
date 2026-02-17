---
uid: YYYYMMDDHHMMSS
title: Full Article Title
authors: Author1 et al.
doi: 10.XXXX/XXXX | PMID: XXXXXX
year: YYYY
tier: 1  # 1=RCT/meta/primary; 2=cohort/review; 3=case/obs; 4=editorial/popsci
status: ref-full  # ref-stub | ref-full
parent-hub: [[66-Literature/LitHub_YYYYMMDD_###]]  # Spawning lit-note
phd-relevance: IR/adipic/VitD/microbiome/autoimmune  # Comma-separated hooks
confidence: high  # high|med|low
extracted_atomics: []  # Array of linked atomics derived from this ref
---

# Refs_[Snake_Title]_YYYYMMDD_### (Authors, YYYY)

**Tier**: X (rationale: RCT n=XXX p<0.01 | review | etc.)

**DOI/PMID**: Verified links | [[PubMed]] | [[DOI.org]]

**Abstract/Key Extract**: 3-5 sentences: Core finding + data/stats + mechanism (from web_fetch/DOI-resolve/grok-summary).

**PhD Hooks**: Adipic/IR/VitD tie-in (e.g., "GC-MS biomarker elevation correlates w/ T2D remission").

**Source**: Journal Volume(Issue):pages.

**Key Quote/Data**: "Direct quote" (p<0.01; OR=1.36; n=422M).

## Linked Atomics (derived/extracted)
- [[33-Atomic/Atomic_Title_YYYYMMDD_###]] (1-phrase: claim from abstract + context).
- Repeat 2-5 per ref (LLM: claims→atomics; VERIFY >2A/ref).

{{VERIFY: Atomics linked; >2A for tier1/2}}

**Connections**: [[Parent Lit-Hub]] | [[Related MOC]] | Dataview: `LIST FROM \"33-Atomic\" WHERE contains(extracted_from, this.file.name)`

**RON Ledger (mini)**: From lit-spawn → Abstract parsed → N atomics (threshold>2). Eternal embed-ready.
