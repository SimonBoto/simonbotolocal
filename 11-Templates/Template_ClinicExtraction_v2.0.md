---
uid: 20260215_075
tags: [#process #lit #extraction #clinic #ron]
aliases: [Lit-Extraction-Clinic, Process_Clinic_Lit_Notes]
confidence: high
status: seed
parent-moc: [[55-MOCs/Lit-Extraction]]
confidence: high
---

# Lit Extraction Process: Clinic Sites (Optimized)

Clinic articles = 70% sales/process fluff (skip), 30% gold (science/refs/clinical nuggets). Goal: **Max density**—1 lit note + 5-15 atomics/fleetings + ref chain (no dupes). Prioritize **refs as assets**: Parse → atomic notes → bidirectional links. Use `Template_Lit_Note` base + atomics via `Template_Zettel`.

## Skip (Low Value/Repetitive)
- Patient stories/testimonials
- Clinic process (consult booking, "contact us")
- Generic intros ("MetS affects millions")
- Boilerplate disclaimers

## Extract Always (Core Lit Note: `66-Literature/YYYYMMDD_ShortTitle.md`)
```
---
title: Full Title
authors: [...]
year: YYYY
url: source
doi: (if any)
tags: [lit, clinic-source, nutrition-mets]  # Auto-scan: MetS/Gut/etc.
aliases: [ShortTitle]
---
# Full Title (Source/Clinic, YYYY)

## TL;DR
3-5 bullet actionable insights (e.g., "X supp ↑ aconitate 20%").

## Key Sections
### Mechanisms/Pathways
- Bullet claims w/ [[AtomicNote]] embeds

### Clinical Data
- Protocols/doses/outcomes (table if multi)

## Quotes
> "Precise quote" (section)

## References
[[Ref1_Title]] | [[Ref2_DOI]]  # Link to atomic ref notes
```
- **Auto-Links**: Scan content → `[[66-Nutrition/Metabolic-Syndrome]]` etc.

## Atomic/Fleeting Notes (Spawn 00-Inbox, later move; 1 note per claim/protocol/ref)
1. **Mechanisms (3-7 notes)**: e.g., `Fleeting_MetS_Aconitate_Pathway_YYYYMMDD.md`
   - Claim → Evidence → Our Use (clinic/PhD hook)
2. **Protocols/Doses (2-4 notes)**: e.g., `Protocol_Magnesium_MetS_YYYYMMDD.md`
   - Inputs/Outputs/Duration → [[RON]] ledger tie-in
3. **Biomarkers (2-5 notes)**: e.g., `Biomarker_Aconitate_MetS_YYYYMMDD.md` → 33-PhD/Biomarkers

## References (Priority: Always Atomic-ize for Usability)
- **Extract Full Biblio** (end-of-article list).
- **Per Ref Note** (`66-Literature/Refs/YYYYMMDD_RefShortTitle.md` or inline if <5):
  ```
  ---
  tags: [ref, lit-import]
  cited_in: [[ParentArticle]]
  ---
  # Ref Title (Authors, YYYY)
  [[Abstract/KeyFinding]]  # If fetchable via DOI/web_search
  > Why usable: Links to our [[Gut]] MOC.
  ```
- **Chain**: Parent lit → refs → our MOCs. Fetch abstracts/DOIs if paywalled (web_search).
- **De-dupe**: Pre-scan vault (`obsidian-cli search-content "RefTitle"`).

## Process Flow (-Validated Step1+)
1. **Step1**: [[Process_Clinic_Lit_Step1_Template_20260215_076]] (lit full + all refs biblio/hub).
2. **Step2**: Atomics/fleetings (mechanisms/protocols/biomarkers).
3. **Ingest**: `obsidian-cli move` + wikilink fix + git.
4. **Scale**: [[Template_ClinicLit_FullExtraction_20260215]] via sessions_spawn/cron (10/day).

**Verdict**: 10-20x vault value vs raw copy-paste (refs unlock 80% chain-reaction). Created: [[Lit_Extraction_Clinic_Sites_20260215_075]]---
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
