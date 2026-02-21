#atomic Naming Base (RON v4)
---
uid: 20260215150000
tags: [#ron #naming #v4 #enforced]
status: permanent
parent-moc: [[55-MOCs/Vault_Index]]
confidence: high
---

**Rule**: [Snake_CoreIdea]_YYYYMMDD_###.md (3-5 words → YYYYMMDD → 001-999; sortable/searchable/unique).
- **Lit Full**: Lit_Title_YYYYMMDD_###.md → 66-Literature/
- **Refs**: Refs_Site_RefShort_YYYYMMDD_###.md → 66-Literature/Refs/Site/
- **Examples**: Hashimoto_Metabolic__20260215_001.md | Refs__Sarandi_20260215_001.md.
- **YAML Mandatory**: uid/tags/aliases/status/parent-moc/confidence.
- **Examples**: Adipic_IR_Cutoff_20260215_001.md | VitD_Def_Crohns_20260215_002.md.
- **Rename Flow**: obsidian-cli move old new --fix-links | Update MOCs.
- **Audit**: HEARTBEAT scans un-Snake → flag/propose batch (spawn 3-12).
- **Vault Stats**: 40% needs rename (casual/dupes); target: 100% by 02-16.

**Batch Rename Plan** (spawn?):
1. 33-Atomic casual → Snake (e.g., Insulin-Hormone.md → Insulin_Hormone_MetS_20260215_001).
2. Dupes → merge/uid.
3. Test: 5 files → git commit "Naming v4 batch1".

*(Baseline 2026-02-15)*