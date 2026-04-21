---
uid: SYS-HIRING-001
type: system
title: "New Agent Hiring Protocol — OpenClaw Agent Onboarding"
date: 2026-04-21
tags: [system, agents, onboarding, hiring, protocol]
---

# New Agent Hiring Protocol

> **Complete checklist for adding a new agent to the OpenClaw ecosystem**

---

## Phase 1: Planning (Before Creation)

### 1.1 Define Agent Purpose
| Question | Answer |
|----------|--------|
| **Name** | ? (short, memorable) |
| **Full name** | ? (descriptive acronym) |
| **Role** | ? (primary function) |
| **Model** | ? (cost/speed tradeoff) |
| **Design** | Independent / Subagent |

### 1.2 Choose Model
| Model | Cost | Speed | Use For |
|-------|------|-------|---------|
| `moonshot/kimi-k2.5` | $40/M | Medium | Quality, decisions |
| `openrouter/x-ai/grok-4.1-fast` | $0.20/M | Fast | Bulk work (FORG) |
| `openrouter/nvidia/nemotron-3-super-120b-a12b:free` | $0 | Medium | Exploration (SCOUT) |

---

## Phase 2: OpenClaw Configuration

### 2.1 Edit `~/.openclaw/openclaw.json`

Add to `agents.list`:
```json
{
  "id": "{agent-id}",
  "name": "{agent-name}",
  "workspace": "/home/simon/.openclaw/workspace-{agent-id}",
  "agentDir": "/home/simon/.openclaw/agents/{agent-id}/agent",
  "model": "{model-string}"
}
```

Add to `agents.defaults.subagents.allowAgents` (if subagent):
```json
"allowAgents": [
  "forg",
  "scout",
  "{agent-id}"
]
```

### 2.2 Create Directories
```bash
mkdir -p ~/.openclaw/workspace-{agent-id}/{input,output,reference,pending,archive,logs,memory}
mkdir -p ~/.openclaw/agents/{agent-id}/agent
```

---

## Phase 3: Core Files (Workspace)

Create in `~/.openclaw/workspace-{agent-id}/`:

### 3.1 SOUL.md (Identity)
```yaml
---
uid: AGENT-{NAME}
type: core-identity
name: {NAME}
version: "1.0"
updated: YYYY-MM-DD
load-priority: 1
---

# SOUL.md — Who {NAME} Is

> **{Tagline}**

## Identity
| Attribute | Value |
|-----------|-------|
| **Full Name** | {Full Name} |
| **Short Name** | {NAME} |
| **Creature** | {Emoji} |
| **Vibe** | {Description} |
| **Role** | {Primary function} |

## Technical Specs
| Spec | Value |
|------|-------|
| **Model** | {model} |
| **Cost** | {cost} |

## Mission
> **{Mission statement}**

## Core Truths
1. **{Truth 1}**
2. **{Truth 2}**
3. **{Truth 3}**
```

### 3.2 AGENTS.md (Procedures)
- How the agent works
- Task handling procedures
- Handoff protocols

### 3.3 TOOLS.md (Capabilities)
- Available tools
- Skill references
- Tool usage guidelines

### 3.4 USER.md (Human Context)
- Who Simos is
- Working preferences
- Communication style

### 3.5 MEMORY.md (Curated Memory)
- Long-term learnings
- Agent-specific context

### 3.6 DREAMS.md (Background Processing)
```yaml
---
load-priority: 2
type: dream-diary
title: {NAME} Dream Diary
date: YYYY-MM-DD
---

# DREAMS.md — {NAME} Dream Diary

> Background consolidation

## Configuration
| Setting | Value |
|---------|-------|
| **Enabled** | ✅ Yes / ❌ No |
| **Frequency** | {When} |
```

### 3.7 HEARTBEAT.md (Pulse)
- When to check in
- Alert conditions
- Response format

### 3.8 BOOTSTRAP.md (First Run)
- Initial setup instructions
- First conversation guide

---

## Phase 4: Identity Sync (agentDir)

Copy SOUL.md to agentDir:
```bash
cp ~/.openclaw/workspace-{agent-id}/SOUL.md \
   ~/.openclaw/agents/{agent-id}/agent/SOUL.md
```

**Rule:** Vault `Agent-{NAME}.md` is source of truth. Sync to both:
- `workspace-{agent-id}/SOUL.md`
- `agents/{agent-id}/agent/SOUL.md`

---

## Phase 5: Vault Documentation

### 5.1 Create `07-Projects/Agents/Agent-{NAME}.md`
Full agent profile for vault reference.

### 5.2 Update `07-Projects/Agents/Agents-Index.md`
Add new agent to index.

---

## Phase 6: Testing

### 6.1 Spawn Test Task
```bash
openclaw sessions:spawn \
  --agent {agent-id} \
  --task "TEST: Verify workspace configuration" \
  --mode run
```

### 6.2 Verify Checklist
- [ ] Working directory correct
- [ ] All core files present
- [ ] SOUL.md loads correctly
- [ ] Write access to output/
- [ ] Can read input/ tasks

---

## Phase 7: Go Live

### 7.1 Restart Gateway
```bash
openclaw gateway restart
```

### 7.2 First Real Task
Spawn actual work task to verify end-to-end.

---

## Quick Reference: File Locations

| Purpose | Path |
|---------|------|
| **Runtime work** | `~/.openclaw/workspace-{agent-id}/` |
| **Identity** | `~/.openclaw/agents/{agent-id}/agent/SOUL.md` |
| **Vault profile** | `~/Workspaces/TheOptimizedBrain/07-Projects/Agents/Agent-{NAME}.md` |
| **Config** | `~/.openclaw/openclaw.json` |

---

## Example: FORG (Reference)

| Attribute | Value |
|-----------|-------|
| **ID** | `forg` |
| **Model** | `openrouter/x-ai/grok-4.1-fast` |
| **Workspace** | `~/.openclaw/workspace-forg/` |
| **agentDir** | `~/.openclaw/agents/forg/agent/` |
| **Cost** | $0.20/M tokens |
| **Role** | Bulk extraction, night shifts |

---

## Related

- [[Agent-FORG]] — Example agent profile
- [[Agent-SCOUT]] — Example agent profile
- [[Memory-Architecture]] — Dual memory system
- [[Issue-039]] — Agent identity sync rule

---
*Created: 2026-04-21*
*Purpose: Standardize new agent onboarding*
