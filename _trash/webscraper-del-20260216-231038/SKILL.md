---
name: webscraper
description: RON PhD Lit Extractor v3: From /DT URL → templated Refs (optimal Ames/Chao hybrid), Atomic notes (high-quality), Lit-Hub (embeds all + core). Trigger: \"extract DT URL: <url>\" or HEARTBEAT 00-Inbox/*.url → spawn. Perfect 66-Lit match: YAML rich, bidirectional, Dataview. PhD: VitD/IBD/adipic.
---

# DT-Zettel v3: PERFECT Lit Pipeline (66-Literature Match)

**Trigger**: \"extract DT URL: https://dr.com/...\". HEARTBEAT: spawn task=\"DT-Zettel v3: batch 00-Inbox/*.url\".

## 0: Prep
- date +%Y%m%d%H%M%S → UID.
- Slug: snake_case title.
- Folders: mkdir -p 66-Literature/Refs/ 33-Atomic/dynamic/.

## 1: Fetch
- web_fetch $URL markdown → raw.md.

## 2: Extract ALL Refs (10-20+ Optimal Templated)
- exec ./scripts/grep-cited.sh raw.md → cited-raw.txt.
- LLM: Parse cited → list ALL (PMID/DOI/author/title).
- Per cited: web_search \"$title exact DOI/PMID\" count=3 → best → web_fetch → fill **optimal ref-template.md** (uid/title/authors/year/pmid/doi/tier/abstract/relevance/url/tags/aliases/status/parent-hub/confidence).
- Write 66-Literature/Refs/Refs_[Slug]_UID.md.
- Hub list: \"- [[Refs_Slug_001]] (Author Year | Tier:X | summary)\".
VERIFY: wc >10 real refs (Ames/Chao style).

## 3: Atomics (7-10+ High-Quality)
- LLM raw + refs → claims (evidence/PhD VitD/IBD/adipic/IR).
- atomic-template.md: claim/evidence:[[Ref]]/strength/hooks/from=hub.
- Update refs: extracted_atomics += [[Atomic_001]] (bidir).
VERIFY: 7-10+, >1/ref Tier1-3.

## 4: Lit-Hub (PERFECT)
- lit-hub-template.md → 66-Literature/[RON_Slug]_UID.md.
- YAML: uid/title/authors/year/url/tags/aliases/status/parent/confidence/cited_refs:[ALL [[Refs_001]]].
- TL;DR/Core/Refs list desc-tier/Atomics list/RON Ledger.
- PhD tags/hooks.

## 5: MOC/Audit
- >5 hooks → 55-MOCs/MOC_[Topic]_UID.md stub.
- 22-Dashboards/dt-v3.json {url, refs:N, atomics:M}.
- git commit/push \"DT-Z v3: $URL N refs M atomics\".
Announce: \"Perfect: [[LitHub]] + N refs + M atomics (PhD hooks: X)\".

**Idempotent**: UID check skip. Batch Inbox. GR-EN translate if raw GR.
**Optimal Refs**: Ames (abstract/relevance/key) + Chao (pmid/doi/tier/summary/parent).
