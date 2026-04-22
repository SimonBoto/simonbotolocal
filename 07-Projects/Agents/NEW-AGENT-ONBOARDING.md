---
uid: AGENT-ONBOARD-001
type: protocol
title: "New Agent Onboarding Protocol"
date: 2026-04-22
status: active
---

# New Agent Onboarding Protocol

> **Every new agent must be integrated into the shared memory system.**
> **No agent works in isolation.**

---

## Pre-Requisites

Before onboarding:
- [ ] Agent role defined (extractor, reviewer, explorer, etc.)
- [ ] Model assigned and tested
- [ ] Workspace created
- [ ] Cost budget allocated

---

## Onboarding Checklist

### 1. Shared Memory Setup (5 min)

```python
# In agent's workspace, create: shared_client.py
import sys
sys.path.insert(0, '/home/simon/.openclaw/memory')
from shared_memory import SharedMemory

class AgentMemory:
    def __init__(self, agent_name):
        self.agent = agent_name
        self.mem = SharedMemory()
        self.mem.update_agent_state(agent_name, 'idle')
    
    def learn(self, knowledge_type, content, source=None):
        """Share knowledge with other agents."""
        return self.mem.add_knowledge(
            self.agent, knowledge_type, content, source
        )
    
    def see_new_knowledge(self, knowledge_type=None):
        """See what other agents have learned."""
        return self.mem.get_unseen_knowledge(
            self.agent, knowledge_type
        )
    
    def mark_seen(self, knowledge_id):
        """Mark knowledge as seen."""
        self.mem.mark_accessed(knowledge_id, self.agent)
    
    def set_state(self, status, task=None):
        """Update agent state."""
        self.mem.update_agent_state(self.agent, status, task)
    
    def close(self):
        self.mem.close()
```

### 2. Agent Configuration

**Required in agent config:**

```yaml
agent:
  name: "AGENT-NAME"
  role: "extractor|reviewer|explorer|synthesizer"
  model: "provider/model-name"
  
memory:
  shared: true
  private: true
  
sync:
  on_extraction: true
  on_discovery: true
  on_decision: true
```

### 3. Integration Points

| Agent Type | Shares | Consumes |
|------------|--------|----------|
| **Extractor (FORG)** | Extractions, zettels | Queue priorities |
| **Reviewer (RON)** | Approvals, rejections | Pending extractions |
| **Explorer (SCOUT)** | Discoveries, priorities | Agent states |
| **Synthesizer** | Synthesis, MOCs | All knowledge |

### 4. Testing

```python
# Test script: test_memory.py
from shared_client import AgentMemory

agent = AgentMemory('TEST-AGENT')

# Test 1: Share knowledge
kid = agent.learn('test', {'message': 'Hello from TEST'})
print(f"✅ Shared knowledge: {kid}")

# Test 2: See other agents' knowledge
unseen = agent.see_new_knowledge()
print(f"✅ Found {len(unseen)} items from other agents")

# Test 3: Mark seen
if unseen:
    agent.mark_seen(unseen[0]['id'])
    print("✅ Marked as seen")

# Test 4: Update state
agent.set_state('working', 'Testing memory')
print("✅ State updated")

agent.close()
print("✅ All tests passed")
```

---

## Agent Roles & Memory Patterns

### Extractor (like FORG)

```python
# After each extraction
agent.learn('extraction', {
    'cgpt_id': cgpt_id,
    'zettels': zettel_count,
    'quality': quality_score,
    'findings': key_findings
}, source=cgpt_id)

# Queue for review
mem.add_extraction(batch_id, cgpt_id, litnote_path, 
                   zettel_count, quality_score)
```

### Reviewer (like RON)

```python
# Morning review
pending = mem.get_pending_extractions()
for ext in pending:
    # Review...
    mem.review_extraction(ext['id'], 'RON', 'approved')
```

### Explorer (like SCOUT)

```python
# After analysis
mem.add_discovery('priority', 
    f"CGPT-{cgpt_id} is high priority: {reason}",
    confidence=0.85,
    related_cgpt=cgpt_id)
```

---

## Current Agents

| Agent | Role | Model | Memory Status |
|-------|------|-------|---------------|
| **RON** | Reviewer, Quality | Kimi k2.6 | ✅ Shared memory active |
| **FORG** | Extractor | Grok 4.1 Fast | ✅ Shared memory active |
| **SCOUT** | Explorer | Qwen3 80B | ✅ Shared memory active |

---

## Adding a New Agent

1. **Create workspace** in `07-Projects/Agents/AGENT-NAME/`
2. **Copy** `shared_client.py` to workspace
3. **Add** to agent registry below
4. **Test** with `test_memory.py`
5. **Document** role and sync pattern

---

## Agent Registry

```yaml
agents:
  - name: RON
    role: reviewer
    model: moonshot/kimi-k2.6
    since: 2026-04-01
    
  - name: FORG
    role: extractor
    model: grok/grok-4.1-fast
    since: 2026-04-21
    
  - name: SCOUT
    role: explorer
    model: openrouter/qwen/qwen3-80b
    since: 2026-04-21
    
  # Add new agents here
```

---

## Success Criteria

- [ ] New agent can share knowledge
- [ ] New agent can see other agents' knowledge
- [ ] New agent appears in sync_log
- [ ] New agent updates agent_state
- [ ] RON can see new agent's extractions

---

*Protocol: AGENT-ONBOARD-001*
*Shared Memory: [[SHARED-MEMORY-ARCHITECTURE.md]]*
*Issue: ISSUE-056*
