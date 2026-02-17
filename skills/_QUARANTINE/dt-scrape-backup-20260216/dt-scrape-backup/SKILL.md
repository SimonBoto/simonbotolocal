---
name: dt-scrape
description: RON Zettelkasten : web_fetch → refs (Zotero) + atomics + lit-hub/MOC. v2.3 GRAND AUDIT: Full story pipeline w/ Ch7 Lit-Hub fullness + eternal Dataview. Trigger \"extract DT URL: &lt;url&gt;\" or HEARTBEAT 00-Inbox/*.url → sessions_spawn. PhD_IR/adipic/VitD. NO-MISS eternal.
---

# DT-Scrape v2.3: The Dragon-Slaying Pipeline (Full Story)

**Trigger**: \"extract DT URL: https://dr.com/...\" → sessions_spawn task=\"DT-Scrape v2.3: $URL\". HEARTBEAT auto-batches Inbox/*.url.

## Chapter 0: Awakening (Gateway/Prep)
- `gateway status` | restart if stale.
- mkdir -p 66-Literature/Refs/ 33-Atomic/dynamic 55-MOCs/ 22-Dashboards/.

## Chapter 1: Fetch the Beast
- `web_fetch $URL` → raw.md.
- `translate-gr.sh raw.md` → en_raw.md (fluff-skip: testimonials/disclaimers).

## Chapter 2: Dissect Guts (Parse/UID)
- `scripts/parse-v2.sh en_raw.md` → cited.json (grep PMID/DOI/claims/phd_hooks).
- `uid-global.sh en_raw.md` → [Snake_Title]_YYYYMMDD_###.md.

## Chapter 3: Ref Forge (>10R Battalion)
- Parallel: for each cited → `web_search \"DOI exact\"` + doi-resolve → templates/ref-template-v2.1.md → 66-Literature/Refs/.
- Tiered YAML/Abstract/KeyQuote/PhD-hooks/extracted_atomics[].
- VERIFY: wc Refs/* >10 | cron poll x10.

## Chapter 4: Atomic Swarm (>8A Total, 2-5A/Ref Tier1-2)
- Per ref: LLM claims → templates/atomic-template.md → 33-Atomic/dynamic/.
- Bidirectional: [[Parent Ref]] | extracted_from: [[Ref]].
- VERIFY: wc Atomics/* >8 | >2A/ref.

## Chapter 5: Lit-Hub Citadel
- templates/lit-note-template.md → 66-Literature/[RON_Title]_YYYYMMDD_###.md.
- TLDR/Mechanisms/Data | Dataview LIST Refs/Atomics WHERE parent-hub/extracted_from.
- Per-ref mini-lits (>Tier2).

## Chapter 6: MOC Clustering
- Auto: 55-MOCs/MOC_Title_###.md | Dataview cluster phd-relevance.

## Chapter 7: Grand Audit & Eternal Bind (NEW: Lit-Hub Fullness Ritual)
- **Triple VERIFY**: wc Refs>10R/Atomics>8A | Dataview populates (cron x10 loop).
- **Fullness Edit**: Surgical `edit lit-hub.md` → populated lists: \"- [[Ref_001A]] (Tier1 | summary)\" x17R + atomics x12A.
- YAML: cited_refs[] | extracted_atomics[].
- Bidirectional: Edit refs/atomics → parent-hub: [[LitHub_001]].
- **Orphan Hunt**: obsidian-cli search !parent-hub → auto-link/fix (batches ≤5).
- **PhD Polish**: grep hooks → MOC embeds.
- **Final Fixes**: dt-v2.0.json update (totalRefs:17/totalA:12/status:PASS) | git commit/push | MEMORY.md distill.

## Metrics & Eternal
- 22-Dashboards/dt-v2.0.json: {extracts:1, totalRefs:101cum, totalA:80+cum}.
- Test: Telomeres → 17R/12A FULL (Ch7 verified).
- STRICT: RON UID | ALL cited→atomics | Dataview LIVE eternal | NO-MISS (loop till thresholds).
- PhD: adipic/IR/VitD/Hashimoto/microbiome hooks embedded/linked.

**Subagent Spawn**: sessions_spawn agent=main task=\"DT-Scrape v2.3: $URL\" (poll subagents). Batch Inbox eternal via HEARTBEAT.