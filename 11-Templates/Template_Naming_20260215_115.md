#atomic Naming Template (RON v3)
**Standard:** [Snake_CoreIdea]_YYYYMMDD_###.md (words first, uid last). Sortable, searchable, uid unique.

**YAML**:
```
uid: YYYYMMDD_###
aliases: [OldName, Keywords]
tags: [#raw #phd-ir]
parent-moc: [[MOCs/Vault-Index]]
```

**Examples:**
- Adipic_IR_Biomarker_20260215_001.md
- FFA_Glucose_Correlation_20260215_002.md

**Rename Script:** obsidian-cli move old new --fix-links.
**Remember:** Words → UID (alpha then numeric). Update MOCs w/ aliases.