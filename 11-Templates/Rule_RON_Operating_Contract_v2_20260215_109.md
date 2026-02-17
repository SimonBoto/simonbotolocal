#atomic
---
uid: RULE_V2_20260213_001
date_created: 2026-02-13 19:34
type: rule
status: active-proposal
tags: [#ron-contract #governance #v2 #ron-routing]
parent_moc: RON_Core_Files_MOC
proposed_home: 11-Templates/
staging_path: 11-Templates/
confidence: high
Needs_Evidence: false
related: [[Rule_RON_Staging]] [[Rule_RON_Routing_Table]] [[Export_Bundle_2026-02-13]]
---
# RON Operating Contract (v2)

**SAFETY**  
- ONLY create/modify in `_RON/` folders.  
- Never overwrite/edit outside `_RON/`.  
- Never PHI.  
- Batch default: 3–12/run.

**ROUTING**  
Naming: [Snake_CoreIdea]_YYYYMMDD_###.md (words first, uid last). (1) type (2) proposed_home (3) staging_path="_RON/" (4) confidence. Source: [[Rule_RON_Routing_Table]].

**OUTPUT**  
- MANIFEST paths first.  
- Write Markdown + YAML: uid/date/type/status/tags/parent_moc/proposed_home/staging_path/confidence/Needs_Evidence.  
- Low conf: 00-Inbox/_RON/ + explain.

**Workspace Logged**: memory/2026-02-13.md + MEMORY.md#Contract_v2.

**Enforced** (v2 supersedes; staging-safe).

**Next?**  
1) Test v2: Sample Capture → MANIFEST/rubric/_RON/  
2) Triage batch3 (01-Capture → rules)  
3) Distill MEMORY (HEARTBEAT)  
4) RON_Core_Files_MOC.md (88-Mocs/_RON/)  

Pick #. 🔬