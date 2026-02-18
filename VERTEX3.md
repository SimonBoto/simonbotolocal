# VERTEX3.md — Spawn Pattern & Agent Evolution Log

**Status:** Evolutionary — We spawn sub-agents as needed, specialize based on actual work.

---

## 🎯 Philosophy

Don't over-engineer. Start with generic spawn, specialize when patterns emerge.

```
Current: Generic Muscle spawn for routine tasks
    ↓
Pattern emerges (e.g., "always spawn for literature")
    ↓
Specialize: Literature Agent with dedicated prompt
    ↓
Pattern solidifies
    ↓
Add to VERTEX3 cluster
```

---

## 🔧 Current Spawn Pattern

### Brain (Main Session)
**Model:** Kimi-k2.5  
**For:** Complex reasoning, PhD synthesis, audits, planning

### Muscle (Sub-Agents)
**Model:** Grok-4.1-fast  
**For:** Routine tasks, file ops, batch processing

**Command:**
```bash
sessions_spawn task="<description>" model=openrouter/x-ai/grok-4.1-fast runTimeoutSeconds=60
```

---

## 📋 Spawn Log (Patterns We're Tracking)

| Date | Task Type | Spawned | Result | Pattern? |
|------|-----------|---------|--------|----------|
| 2026-02-18 | Inbox scan | Muscle | Success | Possible: Inbox Agent |
| 2026-02-18 | Git status | Muscle | Success | Possible: Git Agent |
| 2026-02-18 | Dashboard build | Brain | Success | Keep: Brain-only |

---

## 🌱 When to Specialize

Create a dedicated agent when:
1. **Same task type** spawned 5+ times
2. **Complex prompt** repeated verbatim
3. **Specific context** always loaded (e.g., webscraper rules)
4. **Hub requests** "make this automatic"

---

## 🦞 Ollama — Local Processing

**Use for:** PHI/patient data, offline work, cost reduction  
**Current model:** llama3.2:3b (installed, ready)  
**Trigger:** Detect sensitive data → route to local

**Not a separate agent** — just a routing decision by RON.

---

## 📝 Evolution Rules

1. **Generic first** — Use Muscle spawn for everything initially
2. **Pattern recognition** — Log repeated task types
3. **Specialize late** — Only when pattern is clear
4. **Document here** — Update this file when agent created

---

**Current Status:** Generic spawn pattern working. No specialization needed yet.

🦞 *Simple scales. Complex fails.*
