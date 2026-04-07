---
uid: S-001-0004
type: synthesis
title: WORKER Agent Project
domain: 901
status: active
created: 2026-04-07
---

# WORKER Agent Project

## Status: 🟡 In Design

## Goal
Create a dedicated WORKER agent using MiniMax 2.7 via OpenRouter to handle bulk drafting tasks, reducing Kimi k2.5 costs by 90%+.

## Current State
- ✅ MiniMax 2.7 configured in openclaw.json
- ✅ PAID OpenRouter API key active ($2/day cap)
- ✅ WORKER alias functional (tested)
- ❌ Dedicated agent workspace not created
- ❌ Job description not finalized

## Decision Needed: WORKER Role

| Option | Tasks | Best For |
|--------|-------|----------|
| **A. Drafting Agent** | Write zettel drafts, LitNotes from sources | Bulk extraction work |
| **B. Research Agent** | Web search, summarize articles, find connections | Pre-processing |
| **C. Editor Agent** | Review zettels, check links, enforce YAML | Quality control |
| **D. Hybrid** | All of the above based on task type | Flexibility |

**Recommendation:** Start with **A. Drafting Agent** — use WORKER to draft zettels from CGPT sources, then RON reviews and finalizes.

## Proposed Workspace Structure

```
~/.openclaw/workspace-worker/
├── SOUL-WORKER.md          # Identity: fast, efficient, draft-focused
├── TOOLS-WORKER.md         # Available tools (limited vs RON)
├── MEMORY-WORKER.md        # Task history, patterns
├── drafts/                 # Output directory
│   ├── pending/            # Drafts awaiting RON review
│   └── approved/           # RON-approved drafts
└── logs/                   # Execution logs
```

## Integration Flow

```
CGPT Source → WORKER drafts LitNote → RON reviews → Vault
                    ↓                      ↓
              (MiniMax $0.002)      (Kimi $0.04)
              95% cost savings      Quality control
```

## Success Metrics
- Cost per LitNote: $0.02 → $0.001 (95% reduction)
- Draft quality: 80%+ acceptable to RON
- Throughput: 10+ LitNotes/day

## Next Steps
1. [ ] Define WORKER job description (A/B/C/D)
2. [ ] Create workspace-worker/ directory
3. [ ] Write SOUL-WORKER.md
4. [ ] Test first CGPT extraction

## Related
- [[QMD_Activation_S-001-0002]]
- [[ZettelForge_Concept_S-001-0001]]
- [[CGPT_Extraction_Program_S-001-0003]]

---
parent-index: [[07 Projects Index]]
parent-moc: [[MOC-Agent-Systems]]
