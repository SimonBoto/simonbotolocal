---
uid: 20260215_076
tags: [#process #lit #extraction #clinic #template #ron]
aliases: [ClinicLit-Step1, -Extraction-Rule]
confidence: high
status: seed
parent-moc: [[55-MOCs/Lit-Extraction]] | [[10-Templates]]
confidence: high
---

# Clinic Lit Extraction: Step1 Rule/Template (-Validated)

**Rule**: For each clinic article (e.g., dr.com):
1. **web_fetch** → Translate/structure (fluff-skip, TL;DR/sections/table/quotes/biblio).
2. **Write Lit**: `66-Literature/YYYYMMDD_Title_Full.md` → Use [[Template_ClinicLit_FullExtraction_20260215]].
3. **Extract All Refs**: `66-Literature/Refs/{{SITE}}/RefN_Title_YYYYMMDD.md` (Zotero YAML: title/authors/journal/year/doi/pmid/pmc/url; cited_in=[[Lit]]; our_use).
4. **Enhance Lit**: Edit → Full biblio table + notes hub (wikilinks).
5. **De-dupe**: Pre-scan `obsidian-cli search-content "{{title}}"`.

**Exemplar**: [[33-Atomic/20260215__Hashimoto_VitD]] + 11 refs.

**Scale**: sessions_spawn per URL (task="Run ClinicLit Step1 on {{URL}}").

**Full Process (Optimized)**:
1. **Step1**: Lit full + all refs + biblio/atomic tables.
2. **Step2**: 5-10 atomics (unique claims; YYYYMMDD_Claim_Folder.md → optimal paths; RON/atomic template).
3. **Ingest**: mkdir paths | write | edit lit hub | obsidian-cli move (no --fix-links; manual wikilink).
4. **Scale**: sessions_spawn (5 parallel) | cron 10/day | de-dupe scan first.
