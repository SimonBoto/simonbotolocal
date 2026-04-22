---
uid: COMP-DEEP-001
type: analysis
title: "Deep Competitor Analysis — 9 AI Agent Memory Systems"
date: 2026-04-22
status: active
---

# Deep Competitor Analysis

> **Analyzed 9 competitors from GitHub search.**
> **What to steal, what to ignore, what makes us unique.**

---

## Competitor 1: Zettelkasten-based Persistent Memory

**Description:** Works with Claude Code, Cursor, VS Code Copilot, Codex, Windsurf & any MCP client

### What They Do Better
- **MCP integration** — Works with any MCP-compatible editor
- **Editor agnostic** — Not locked to one tool
- **Plugin architecture** — Extensible

### What We Should Steal
1. **MCP server** — Industry standard, would integrate with anything
2. **Editor plugins** — VS Code, Cursor, etc.
3. **Command palette** — Quick actions from editor

### Integration Difficulty: HIGH
- Requires Go/TypeScript knowledge
- MCP protocol learning curve
- Testing across editors

### Impact: HIGH
- Would make us compatible with everything
- Instant adoption by developers

---

## Competitor 2: Intelligent Zettelkasten

**Description:** AI agents help you capture, process, and recall knowledge seamlessly

### What They Do Better
- **Web clipping** — Browser extension for capture
- **Mobile app** — Capture on phone
- **Voice notes** — Audio → text → zettel

### What We Should Steal
1. **Browser extension** — Clip papers, articles directly
2. **Mobile capture** — Voice memos → zettels
3. **Auto-tagging** — AI suggests tags

### Integration Difficulty: MEDIUM
- Browser extension = JavaScript
- Mobile = React Native or PWA
- Auto-tagging = prompt engineering

### Impact: MEDIUM
- Nice to have, not critical
- Would speed up capture

---

## Competitor 3: Local-first AI-native KMS

**Description:** Markdown + hybrid search + Obsidian + any AI agent

### What They Do Better
- **Hybrid search** — BM25 + vector + reranking (like QMD)
- **Obsidian plugin** — Native integration
- **Any AI agent** — Not locked to one model

### What We Should Steal
1. **Obsidian plugin** — Better than REST API
2. **Model agnostic** — Switch models easily
3. **Better search UI** — Faceted search, filters

### Integration Difficulty: LOW
- Obsidian plugin = TypeScript
- Model agnostic = config change
- Search UI = frontend work

### Impact: HIGH
- Obsidian plugin = native feel
- Model switching = cost optimization

---

## Competitor 4: MemoryOS (EMNLP 2025 Oral)

**Description:** Memory operating system for personalized AI agents

### What They Do Better
- **Academic rigor** — Published paper, citations
- **Personalization** — Learns user preferences
- **Memory hierarchy** — Short/long/episodic memory

### What We Should Steal
1. **Memory hierarchy** — Our shared.sqlite is flat
2. **Personalization** — Learn from RON's approvals
3. **Evaluation framework** — Measure memory quality

### Integration Difficulty: MEDIUM
- Memory hierarchy = schema change
- Personalization = ML/prompt engineering
- Evaluation = metrics design

### Impact: HIGH
- Memory hierarchy = better organization
- Personalization = less manual work

---

## Competitor 5: Memori

**Description:** Agent-native memory infrastructure, LLM-agnostic

### What They Do Better
- **LLM agnostic** — Works with any model
- **Cloud option** — Hosted service
- **Enterprise features** — Teams, permissions

### What We Should Steal
1. **LLM agnostic** — Not locked to Kimi/Grok
2. **Team features** — Multiple users (future)
3. **Cloud option** — Access from anywhere

### Integration Difficulty: HIGH
- LLM agnostic = abstraction layer
- Team features = auth system
- Cloud = DevOps

### Impact: MEDIUM
- LLM agnostic = flexibility
- Team/cloud = future needs

---

## Competitor 6: Knowledge Engine

**Description:** Persistent memory, vault, and brain that learns

### What They Do Better
- **Self-improving** — Learns from interactions
- **Knowledge graph** — Visual connections
- **API-first** — Everything is API

### What We Should Steal
1. **Knowledge graph visualization** — See connections
2. **Self-improving prompts** — Auto-adjust extraction
3. **API documentation** — Clear endpoints

### Integration Difficulty: MEDIUM
- Graph viz = D3.js or similar
- Self-improving = prompt engineering
- API docs = OpenAPI spec

### Impact: MEDIUM
- Graph viz = nice for exploration
- Self-improving = long-term benefit

---

## Competitor 7: PKM Documentation Skill

**Description:** Zettelkasten-based knowledge vault with atomic notes, wiki-links, templates

### What They Do Better
- **Templates** — Rich template system
- **Documentation** — Well-documented
- **Skill format** — Packaged as reusable skill

### What We Should Steal
1. **Better templates** — More flexible than ours
2. **Documentation** — Our docs are scattered
3. **Skill packaging** — Distribute as skill

### Integration Difficulty: LOW
- Templates = markdown files
- Documentation = writing
- Skill packaging = OpenClaw skill format

### Impact: MEDIUM
- Better templates = consistency
- Documentation = adoption

---

## Competitor 8: Langfuse

**Description:** LLM observability, metrics, evals, prompt management

### What They Do Better
- **Cost tracking** — Detailed per-request costs
- **Prompt versioning** — Track prompt changes
- **Evaluations** — Automated quality checks

### What We Should Steal
1. **Better cost tracking** — Per-agent, per-task
2. **Prompt versioning** — Track FORG program changes
3. **Automated evals** — Quality checks without RON

### Integration Difficulty: LOW
- Cost tracking = logging
- Prompt versioning = git
- Evals = prompt + check

### Impact: HIGH
- Cost tracking = budget control
- Evals = scale without RON bottleneck

---

## Competitor 9: Vercel Skills

**Description:** Open agent skills tool — npx skills

### What They Do Better
- **Easy distribution** — npm install
- **Standard format** — JSON skill definition
- **Community** — Skill marketplace

### What We Should Steal
1. **Skill packaging** — Standard format
2. **Distribution** — Easy install
3. **Community** — Share skills

### Integration Difficulty: LOW
- Packaging = JSON spec
- Distribution = git/npm
- Community = later

### Impact: MEDIUM
- Packaging = reuse
- Community = network effects

---

## Summary: What to Steal

### Immediate (This Week)

| Feature | From | Effort | Impact |
|---------|------|--------|--------|
| **Better cost tracking** | Langfuse | Low | High |
| **Prompt versioning** | Langfuse | Low | Medium |
| **Documentation** | PKM Skill | Low | Medium |

### Short-Term (Next 2 Weeks)

| Feature | From | Effort | Impact |
|---------|------|--------|--------|
| **Obsidian plugin** | Local-first KMS | Medium | High |
| **Memory hierarchy** | MemoryOS | Medium | High |
| **Model agnostic** | Memori | Medium | Medium |

### Medium-Term (Next Month)

| Feature | From | Effort | Impact |
|---------|------|--------|--------|
| **MCP server** | Zettelkasten memory | High | High |
| **Knowledge graph** | Knowledge Engine | Medium | Medium |
| **Browser extension** | Intelligent ZK | Medium | Medium |

### Ignore (For Now)

| Feature | Why |
|---------|-----|
| **Mobile app** | Not critical for clinic workflow |
| **Cloud hosting** | Local-first is our advantage |
| **Team features** | Single user for now |
| **Voice notes** | Nice to have, not essential |

---

## What Makes Us Unique (Reinforced)

After analyzing competitors, our unique edge is clearer:

1. **Clinical domain** — No competitor focuses on metabolomics
2. **Night shift autonomy** — Scheduled extraction is rare
3. **Cost consciousness** — Explicit optimization
4. **PhD integration** — Research workflow

**Technology is commoditized. Our application is not.**

---

*Analysis: COMP-DEEP-001*
*Date: 2026-04-22*
*Competitors analyzed: 9*
*Features to steal: 12*
*Immediate actions: 3*
