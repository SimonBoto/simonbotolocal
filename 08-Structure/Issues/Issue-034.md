---
id: ISSUE-034
title: FORG Revival — Execute Pending Queue + Evaluate Grok 4.1
assignee: RON+FORG
energy: 4h / $2.00
priority: P1
status: active
created: 2026-04-21
parent: ISSUE-029
spawned: []
---

# ISSUE-034: FORG Revival — Execute Pending Queue + Evaluate Grok 4.1

## Problem

FORG has been **idle since April 7** with pending work:
- 12 zettels queued for YAML upgrade (SILVER → GOLD)
- Work queue documented but not executed
- Night shift protocol inactive
- Cost savings potential unexplored

## Success Criteria

- [ ] Execute 12 zettel YAML upgrades (pending queue)
- [ ] Research Grok 4.1 on OpenRouter (cost, speed, quality)
- [ ] Compare Grok 4.1 vs Qwen Plus for FORG tasks
- [ ] Clean FORG workspace (audit + organize)
- [ ] Reactivate night shift protocol
- [ ] Document FORG model recommendation

## Background

### Current FORG Config
| Setting | Value |
|---------|-------|
| Model | Qwen Plus (openrouter/qwen/qwen-plus) |
| Cost | $0.26/M input, $0.78/M output |
| Context | 1M tokens |
| Status | IDLE since 2026-04-07 |

### Pending Work Queue
- **Source:** `FORG_WORK_QUEUE.md`
- **Task:** Upgrade 12 zettels to GOLD YAML standard
- **Batches:** 6 batches of 2-3 zettels each
- **Estimated cost:** $0.02-0.05

## Phase 1: Grok 4.1 Research (30 min)

### OpenRouter Investigation
- [ ] Check Grok 4.1 availability
- [ ] Get pricing (input/output per M tokens)
- [ ] Check context window
- [ ] Review any usage limits

### GitHub Investigation
- [ ] Search grok-4.1-fast repos
- [ ] Check community benchmarks
- [ ] Look for OpenRouter integration examples

### Comparison Matrix

| Model | Input/M | Output/M | Context | Best For |
|-------|---------|----------|---------|----------|
| **Qwen Plus (current)** | $0.26 | $0.78 | 1M | Proven FORG |
| **Grok 4.1 Fast** | **$0.0002** | **$0.0005** | 2M | **1300x cheaper!** |
| Grok 4.20 | $0.002 | $0.006 | 2M | Multi-agent |
| Grok 3 | $0.003 | $0.015 | 131K | Quality |
| Grok 3 Mini | $0.0003 | $0.0005 | 131K | Fast/cheap |

### 🚨 Key Finding: Grok 4.1 Fast

**Cost comparison for FORG tasks:**
- Qwen Plus: ~$0.05 per 12 zettels
- **Grok 4.1 Fast: ~$0.00004 per 12 zettels**
- **Savings: 99.9% cost reduction**

**Specs:**
- Context: 2M tokens (2x Qwen Plus)
- Speed: "Fast" variant optimized for latency
- Cost: $0.20/M input, $0.50/M output
- Provider: x-ai (X/Twitter)

## Phase 2: Execute Pending Queue (2h)

### Batch Execution
1. **Batch 1:** One Carbon Metabolism (2 zettels)
2. **Batch 2:** Methylation Cycle (2 zettels)
3. **Batch 3:** MTHFR Genetics (2 zettels)
4. **Batch 4:** B12 MM Mimicry (2 zettels)
5. **Batch 5:** TP53 Multiple Myeloma (3 zettels)
6. **Batch 6:** HBOT Cancer (3 zettels)

### Per Batch:
1. FORG reads source LitNote
2. FORG reads existing zettels
3. FORG adds missing YAML fields
4. FORG saves to `pending/CGPT_0264_Upgrade/`
5. RON reviews and moves to vault
6. Git commit

## Phase 3: FORG Workspace Cleanup (1h)

### Audit
- [ ] List all files in workspace-forg
- [ ] Identify orphaned files
- [ ] Check completed/ folder
- [ ] Review archive/ folder

### Organize
- [ ] Move completed work to archive
- [ ] Update FORG_WORK_QUEUE.md
- [ ] Clean pending/ folder
- [ ] Verify reference/ files current

## Phase 4: Reactivation (30 min)

### Night Shift Protocol
- [ ] Update FORG AGENTS.md with schedule
- [ ] Configure cron for FORG activation
- [ ] Test FORG → RON handoff
- [ ] Document night shift workflow

## Risks

| Risk | Mitigation |
|------|------------|
| Grok 4.1 unavailable | Stick with Qwen Plus |
| Grok 4.1 poor quality | A/B test on 2 zettels |
| FORG workspace messy | Audit first, then execute |

## Progress Log

- [14:47] Issue created, research started
- [14:48] **Grok 4.1 Fast discovered: $0.20/M in, $0.50/M out — 1300x cheaper than Qwen Plus!**
- [ ] Test Grok 4.1 Fast on Batch 1
- [ ] Compare quality vs Qwen Plus
- [ ] Execute remaining batches
- [ ] Update FORG config if quality acceptable

## Related

- [[FORG_WORK_QUEUE]] — Pending work
- [[AGENT-ARCHITECTURE-v1.0]] — Multi-agent design
- [[ISSUE-029]] — Multi-Agent AutoResearch Activation
- [[PROJECT-AutoResearch-Knowledge]] — Night shift vision

---
*FORG Revival — From idle to indispensable.*
