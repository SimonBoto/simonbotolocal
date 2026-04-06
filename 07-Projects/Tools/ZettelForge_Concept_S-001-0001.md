---
uid: S-001-0001
type: synthesis
title: "ZettelForge — Assisted Extraction Tool"
domain: 001
domain-name: System
tags: [synthesis, tool, zettelforge, automation, cgpt, extraction]
parent-moc: [[MOC-CGPT-Archive]]
parent-index: [[07 Projects Index]]
status: conscious
created: 2026-04-06
updated: 2026-04-06
---

# ZettelForge — Assisted Extraction Tool

> **Human-in-the-loop extraction system for CGPT conversations and long-form sources**
> 
> *RON orchestrates, Worker drafts, RON reviews, quality gates enforce.*

---

## The Problem

**Current state:**
- 688 CGPT conversations in inbox
- 17 processed, 671 pending
- CGPT_0264 paused at 5/11 LitNotes
- Manual extraction is high quality (Article 1-2) but slow

**ZettelVault approach:** Fully automated, one-shot, "good enough" quality
**Our need:** Human-curated, Article 1-2 standard, scalable

---

## The Solution

**ZettelForge = Assisted extraction with quality gates**

```
Source → Parse (RON) → Draft (Worker/Minimax) → Review (RON) → Commit
              ↑___________________________________________↓
                         (feedback loop)
```

---

## Core Features

| Feature | Purpose | Actor |
|---------|---------|-------|
| **CGPT Ingestion** | Parse conversations.json, extract metadata | RON |
| **Smart Classification** | Topic/domain assignment | RON |
| **Worker Drafting** | Generate LitNotes + zettels | Worker (Minimax) |
| **Quality Gates** | YAML, UID, link validation | Automated |
| **RON Review** | Approve/edit/reject drafts | RON |
| **Auto-Linking** | Suggest related zettels, MOCs | Automated |
| **Batch Queue** | Process 5 at a time, git checkpoint | Automated |

---

## Architecture

### Phase 1: Ingestion
- Parse ChatGPT export (`conversations.json`)
- Extract: date, title, model, message count
- Classify: domain (001, 101), topic, priority

### Phase 2: Drafting
```python
sessions_spawn(
  task="Draft LitNote + 3-5 zettels from this CGPT conversation",
  model="WORKER",  # Minimax 2.7 — 20x cheaper
  runTimeoutSeconds=300
)
```

### Phase 3: Quality Gates
- YAML validation (type, uid, tags, parent-moc)
- UID uniqueness check
- Link verification (no bare UIDs)
- Suggest related zettels from vault

### Phase 4: RON Review
- Read drafts in Obsidian
- Edit or approve
- Flag for re-drafting if needed

### Phase 5: Commit
- Git checkpoint per batch
- Update COMMAND.md progress
- Log to daily notes

---

## Why Not ZettelVault?

| Aspect | ZettelVault | ZettelForge |
|--------|-------------|-------------|
| Input | Messy vault | Structured sources |
| Output | Automated atoms | Human-curated zettels |
| Quality | "Good enough" | Article 1-2 standard |
| Cost | Batch, one-shot | Iterative, review-based |
| Links | Auto-generated | Human-verified |
| Philosophy | Replace human | Augment human |

---

## Implementation Path

### Phase 1: CGPT Parser (Week 1)
- [ ] Parse `conversations.json`
- [ ] Extract metadata
- [ ] Classify by topic/domain

### Phase 2: Worker Integration (Week 2)
- [ ] Configure WORKER model in openclaw.json
- [ ] Draft LitNotes from conversations
- [ ] RON review workflow

### Phase 3: Quality Automation (Week 3)
- [ ] YAML validation script
- [ ] UID uniqueness checker
- [ ] Link verifier
- [ ] Related zettel suggester

### Phase 4: Batch Orchestration (Week 4)
- [ ] Queue management
- [ ] Progress tracking
- [ ] Git checkpoint automation
- [ ] Resume on crash

---

## Tech Stack

| Component | Technology |
|-----------|------------|
| Core pipeline | Python 3.11+ |
| LLM framework | DSPy (structured calls) |
| Vault I/O | Obsidian REST API |
| Worker spawning | OpenClaw `sessions_spawn` |
| Git automation | GitPython |
| Validation | Pydantic |

---

## Related Work

| Project | Connection |
|---------|------------|
| CGPT_0264 | First target — complete remaining 6 LitNotes |
| CGPT_0133 | Next target — 28 LitNotes (Bone/Calcium) |
| Worker model | Cheap drafting ($0.002/1K vs $0.04/1K) |
| 08-Structure | Output structure already defined |
| Article 1-2 standard | Quality gate target |

---

## Open Questions

1. **Quality threshold:** What error rate is acceptable for Worker drafts?
2. **Review batch size:** 5, 10, or 20 drafts per RON review session?
3. **Fallback strategy:** If Worker fails, retry with RON or flag for manual?
4. **MOC integration:** Auto-update MOCs or manual curation?

---

## Permanent Question Connection

> "How do we scale CGPT extraction from 17 to 671 conversations without quality loss?"

**Status:** 🟡 Developing  
**ZettelForge is:** One potential answer

---

## Next Actions

1. Configure WORKER model in `~/.openclaw/openclaw.json`
2. Draft CGPT parser (minimal viable)
3. Test Worker → RON workflow on 1 conversation
4. Iterate on quality gates

---

*ZettelForge — Scale without sacrificing standards.*
