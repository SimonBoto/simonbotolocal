# VERTEX3.md — Multi-Agent Architecture Design

**Version:** 1.0  
**Date:** 2026-02-18  
**Status:** Design Phase  
**Triangle Evolution:** Hub → RON → Vertex3 Cluster

---

## 🎯 Vision

Vertex3 transforms the binary Hub-RON relationship into a **collaborative network** of specialized agents. Each agent has isolated context, specific capabilities, and communicates via standardized protocols.

**Core Principle:** *Specialization beats generalization. Local privacy beats cloud convenience.*

---

## 🔺 Evolved Triangle Structure

```
                    ┌─────────────────────────────────────┐
                    │         HUB (Dr_Simon_Xenidis)      │
                    │    Strategy • Authority • Approval  │
                    └──────────────┬──────────────────────┘
                                   │
                    ┌──────────────▼──────────────────────┐
                    │          RON (Kimi-k2.5)            │
                    │   Orchestrator • Auditor • Scribe   │
                    │   Brain Tier: Complex reasoning     │
                    └──────────────┬──────────────────────┘
                                   │
                    ┌──────────────▼──────────────────────┐
                    │           VERTEX3 CLUSTER           │
                    │  ┌─────────┐ ┌─────────┐ ┌──────┐  │
                    │  │LIT AGENT│ │CODE AGNT│ │PHI   │  │
                    │  │(Grok)   │ │(Grok)   │ │(Olla)│  │
                    │  └─────────┘ └─────────┘ └──────┘  │
                    │  ┌─────────┐ ┌─────────┐           │
                    │  │ANALYSIS │ │EMBED   │           │
                    │  │(Kimi)   │ │(Olla)  │           │
                    │  └─────────┘ └─────────┘           │
                    └─────────────────────────────────────┘
```

---

## 🤖 Agent Specifications

### 1. Literature Agent (LIT)

| Attribute | Value |
|-----------|-------|
| **Model** | Grok-4.1-fast (Muscle tier) |
| **Purpose** | Paper extraction, Zotero sync, reference management |
| **Triggers** | Inbox URL detected, heartbeat scan, explicit command |
| **Input** | PDF URLs, DOI/PMID, raw text |
| **Output** | 66-Literature/Refs/*.md, atomic notes |
| **Isolation** | Separate session, no PHI access |
| **Autonomy** | GREEN only (staging), batch ≤25 |

**Workflow:**
```
Inbox URL detected
    ↓
RON spawns LIT AGENT
    ↓
LIT extracts → generates Refs → creates Atomics
    ↓
Reports back to RON → Dashboard update
    ↓
RON presents to Hub for review
```

**Commands:**
- `sessions_spawn task="Scrape Inbox 075" agent=literature`
- `sessions_spawn task="Zotero sync" agent=literature`

---

### 2. Code Agent (CODE)

| Attribute | Value |
|-----------|-------|
| **Model** | Grok-4.1-fast (Muscle tier) |
| **Purpose** | Refactoring, automation scripts, git ops |
| **Triggers** | Code smells detected, repetitive task identified |
| **Input** | File paths, refactoring requests, bug reports |
| **Output** | Modified files, scripts, git commits |
| **Isolation** | Read-only vault access until explicit RED arming |
| **Autonomy** | GREEN (staging), YELLOW (propose), RED (armed only) |

**Workflow:**
```
Code issue detected / Repetitive task identified
    ↓
RON spawns CODE AGENT with specific scope
    ↓
CODE analyzes → proposes changes (staging)
    ↓
RON reviews → presents diff to Hub
    ↓
Hub approves (ARM_RED) → CODE promotes
```

**Commands:**
- `sessions_spawn task="Refactor dashboard server.js" agent=code`
- `sessions_spawn task="Batch rename notes" agent=code`

---

### 3. PHI Processor (PHI)

| Attribute | Value |
|-----------|-------|
| **Model** | llama3.2:3b (local Ollama) |
| **Purpose** | Process patient data, clinical notes, sensitive research |
| **Triggers** | PHI detected in input, offline mode, explicit privacy request |
| **Input** | Patient records, clinical notes, cohort data |
| **Output** | Anonymized summaries, trend analysis, redacted extracts |
| **Isolation** | **Zero network access** — air-gapped processing |
| **Autonomy** | Fully local, no cloud leakage, Hub-gated output |

**Critical Privacy Rule:**
```
IF input.contains(PHI):
    ROUTE_TO = PHI AGENT (Ollama local)
ELSE:
    ROUTE_TO = RON (cloud) or other agents
```

**Workflow:**
```
Patient data / Clinical note / Sensitive cohort data
    ↓
RON detects PHI pattern (regex + context)
    ↓
RON spawns PHI AGENT with local Ollama
    ↓
PHI processes locally (no network)
    ↓
Output reviewed by RON → sanitized for Hub
```

**Commands:**
- `sessions_spawn task="Summarize patient cohort" agent=phi local=true`
- `sessions_spawn task="Extract trends from notes" agent=phi privacy=maximum`

---

### 4. Analysis Agent (ANALYSIS)

| Attribute | Value |
|-----------|-------|
| **Model** | Kimi-k2.5 (Brain tier) — spawned sub-agent |
| **Purpose** | Statistical analysis, biomarker calculations, data visualization |
| **Triggers** | Data processing request, PhD analysis needs |
| **Input** | CSV data, metabolomics results, cohort stats |
| **Output** | Calculated metrics, charts, interpretation |
| **Isolation** | Data-only access, no vault modification |
| **Autonomy** | Analysis only, RON handles integration |

**Workflow:**
```
Data analysis request / Biomarker calculation needed
    ↓
RON spawns ANALYSIS AGENT with dataset
    ↓
ANALYSIS computes → generates insights → creates viz
    ↓
RON integrates into atomic notes / dashboard
```

**Commands:**
- `sessions_spawn task="Analyze adipic acid trends" agent=analysis`
- `sessions_spawn task="Stats for METHAP cohort" agent=analysis`

---

### 5. Embedding Agent (EMBED)

| Attribute | Value |
|-----------|-------|
| **Model** | nomic-embed-text (local Ollama) |
| **Purpose** | Vector embeddings, semantic search, similarity matching |
| **Triggers** | Vault search request, note clustering, duplicate detection |
| **Input** | Atomic notes, literature refs, queries |
| **Output** | Embedding vectors, similarity scores, search results |
| **Isolation** | Read-only vault access |
| **Autonomy** | Fully local, indexes overnight via cron |

**Workflow:**
```
Semantic search request: "Find similar to VitD/IBD papers"
    ↓
RON spawns EMBED AGENT
    ↓
EMBED encodes query → searches vector index
    ↓
Returns ranked similar notes
    ↓
RON presents to Hub
```

**Cron Job:**
```bash
# Daily at 3 AM: Reindex vault
0 3 * * * cd /vault && ollama run nomic-embed-text --index ./33-Atomic/
```

---

## 📡 Communication Protocol

### Message Format (Inter-Agent)

```json
{
  "protocol": "vertex3.v1",
  "from": "ron",
  "to": "literature-agent",
  "taskId": "uuid-v4",
  "timestamp": "2026-02-18T22:45:00Z",
  "payload": {
    "action": "scrape",
    "target": "00-Inbox/075.md",
    "constraints": {
      "batchSize": 25,
      "riskLevel": "GREEN",
      "outputFormat": "zettel"
    }
  },
  "context": {
    "phdFocus": "VitD/IBD/adipic",
    "priority": "high",
    "deadline": null
  }
}
```

### Response Format

```json
{
  "protocol": "vertex3.v1",
  "from": "literature-agent",
  "to": "ron",
  "taskId": "uuid-v4",
  "status": "complete",
  "result": {
    "outputs": [
      "66-Literature/Refs/lit-075.md",
      "33-Atomic/atomic-075-1.md"
    ],
    "stats": {
      "papersProcessed": 1,
      "refsExtracted": 12,
      "atomicsCreated": 5
    }
  },
  "logs": [...],
  "nextActions": ["review", "approve", "promote"]
}
```

---

## 🎮 Control Flow

### Hub → RON → Vertex3

```
Hub: "Scrape Inbox 075 and 076"
    ↓
RON: Parse intent → Plan parallel execution
    ↓
RON: Spawn LIT AGENT (075) + LIT AGENT (076) [parallel]
    ↓
Agents: Process independently → Report back
    ↓
RON: Aggregate results → Update dashboard
    ↓
RON: Present summary to Hub
    ↓
Hub: Review → Approve → "Promote to MOCs"
    ↓
RON: Spawn MOC AGENT (future) → Integrate
```

### Auto-Trigger (Proactive Mode)

```
Heartbeat: Inbox scan detects 3 new URLs
    ↓
RON: Check proactive mode = ON
    ↓
RON: Spawn LIT AGENT automatically
    ↓
LIT: Process → Stage results
    ↓
RON: Notify Hub: "3 papers processed, staged for review"
    ↓
Hub: Approves / Rejects / Modifies
```

---

## 🛡️ Security & Privacy Matrix

| Agent | Cloud | Local | PHI Allowed | Network |
|-------|-------|-------|-------------|---------|
| RON (Brain) | ✅ Yes | ❌ No | ⚠️ Sanitized only | ✅ Full |
| Literature | ✅ Yes | ❌ No | ❌ No | ✅ APIs |
| Code | ✅ Yes | ❌ No | ❌ No | ⚠️ Git only |
| **PHI Processor** | ❌ **No** | ✅ **Yes** | ✅ **Yes** | ❌ **None** |
| Analysis | ✅ Yes | ❌ No | ⚠️ Anonymized | ✅ Limited |
| **Embedding** | ❌ **No** | ✅ **Yes** | ⚠️ **Indexed locally** | ❌ **None** |

---

## 🚀 Implementation Roadmap

### Phase 1: Foundation (This Week)
- [ ] Install nomic-embed-text in Ollama
- [ ] Create `sessions_spawn` wrapper for agent spawning
- [ ] Implement LIT AGENT (literature workflow)
- [ ] Test PHI detection routing

### Phase 2: Expansion (Next 2 Weeks)
- [ ] Implement CODE AGENT (refactoring)
- [ ] Implement PHI PROCESSOR (local Ollama)
- [ ] Add Dashboard agent status panel
- [ ] Create agent communication protocol

### Phase 3: Intelligence (Month 2)
- [ ] Implement ANALYSIS AGENT (stats)
- [ ] Add EMBED AGENT (semantic search)
- [ ] Auto-spawn based on task type
- [ ] Proactive mode with agent cluster

### Phase 4: Autonomy (Month 3)
- [ ] Self-healing (agent crashes, respawn)
- [ ] Agent-to-agent direct communication
- [ ] Load balancing (parallel task distribution)
- [ ] Vertex3 self-optimization

---

## 📝 Example: Complete Workflow

### Scenario: Process 10 new clinic papers

```
1. MORNING HEARTBEAT
   RON: "Inbox has 10 new URLs"

2. HUB DECISION
   Hub: "Process all, prioritize PhD-relevant"

3. RON ORCHESTRATION
   RON spawns:
   ├── LIT AGENT #1 (URLs 1-5)
   ├── LIT AGENT #2 (URLs 6-10)
   └── EMBED AGENT (index for similarity)

4. PARALLEL PROCESSING
   LIT #1: Extracts → 50 refs, 30 atomics
   LIT #2: Extracts → 40 refs, 25 atomics
   EMBED: Indexes all, flags 3 as similar to existing

5. AGGREGATION
   RON: "90 refs, 55 atomics, 3 duplicates flagged"

6. PHI CHECK (if any clinical data)
   RON: Detects patient mentions in 2 papers
   RON spawns PHI PROCESSOR (local Ollama)
   PHI: Redacts, summarizes, tags

7. HUB REVIEW
   Dashboard shows: Staged changes, duplicate alerts
   Hub: "Approve all, merge duplicates"

8. PROMOTION
   RON spawns MOC INTEGRATION (future agent)
   Updates: 66-Lit/, 33-Atomic/, 55-MOCs/
   Git commit: "Vertex3 batch: 10 papers → 55 atomics"

9. NOTIFICATION
   RON: "Complete. 55 new atomics, 3 duplicates merged."
```

---

## 🎛️ Dashboard Integration

New dashboard panel: **Vertex3 Cluster Status**

```
┌──────────────────────────────────────────┐
│ 🔺 Vertex3 Cluster                        │
├──────────────────────────────────────────┤
│ LIT AGENT      🟢 Idle    Last: 2h ago   │
│ CODE AGENT     🟡 Working Task: refactor │
│ PHI PROCESSOR  🟢 Ready   Local Ollama   │
│ ANALYSIS       ⚪ Standby                 │
│ EMBED          🟢 Active  Index: 192 docs│
├──────────────────────────────────────────┤
│ Queue: 3 tasks    Parallel: 2 max        │
│ Today: 12 papers → 340 refs → 180 atomics│
└──────────────────────────────────────────┘
```

---

## 💡 Key Decisions

1. **RON remains orchestrator** — No agent bypasses RON to reach Hub
2. **Local-first for PHI** — Ollama agents handle sensitive data
3. **Cloud for scale** — Literature, code tasks use fast cloud models
4. **Staging always** — No agent promotes without Hub approval
5. **Git eternal** — All agent outputs committed, auditable

---

## 🤔 Open Questions

1. Should agents communicate directly (peer-to-peer) or through RON (hub-and-spoke)?
2. How do we handle agent version upgrades?
3. Should we implement agent "memory" (each agent has its own git-notes)?
4. What triggers automatic agent spawning vs. Hub explicit request?

---

**Document Status:** Draft for Hub review  
**Next Action:** Approve architecture → Begin Phase 1 implementation  

🦞 *Triangle Evolution: Complete*