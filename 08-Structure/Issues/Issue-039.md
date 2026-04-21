---
uid: ISSUE-039
type: issue
title: "Agent Identity Sync Rule — Vault ↔ .openclaw/agents/"
date: 2026-04-21
status: open
priority: P1
---

# ISSUE-039: Agent Identity Sync Rule

## Problem Discovered

Agent identity files were **out of sync** between vault and OpenClaw runtime:

| Location | State Before Fix |
|----------|------------------|
| `07-Projects/Agents/Agent-*.md` | Rich identity files ✅ |
| `~/.openclaw/agents/*/agent/SOUL.md` | **Missing** ❌ |

## Root Cause

OpenClaw reads agent identity from `~/.openclaw/agents/{id}/agent/` (SOUL.md, AGENTS.md, TOOLS.md), but these weren't being maintained. The vault had the source of truth.

## Solution Applied (2026-04-21)

| Vault Source | Runtime Destination |
|--------------|---------------------|
| `07-Projects/Agents/Agent-FORG.md` | `~/.openclaw/agents/forg/agent/SOUL.md` |
| `07-Projects/Agents/Agent-SCOUT.md` | `~/.openclaw/agents/scout/agent/SOUL.md` |
| `07-Projects/Agents/Agent-RON.md` | `~/.openclaw/agents/main/agent/SOUL.md` |

## Sync Rule (New)

**Vault is source of truth.** When updating agent identity:

1. **Edit** `07-Projects/Agents/Agent-{NAME}.md` in vault
2. **Copy** to `~/.openclaw/agents/{id}/agent/SOUL.md`
3. **Commit** vault changes
4. **Verify** runtime has latest

## Automation Opportunity

Could create a script/skill to auto-sync:
```bash
# sync-agents.sh
for agent in FORG SCOUT RON; do
  cp 07-Projects/Agents/Agent-$agent.md ~/.openclaw/agents/${agent,,}/agent/SOUL.md
done
```

## Verification

```bash
ls -la ~/.openclaw/agents/*/agent/SOUL.md
# Should show recent timestamps matching vault edits
```

## Related

- [[07-Projects/Agents/Agent-FORG]]
- [[07-Projects/Agents/Agent-SCOUT]]
- [[07-Projects/Agents/Agent-RON]]
- [[Issue-038]] — .openclaw cleanup

---
*Created: 2026-04-21*
*Status: Fixed, needs automation or manual sync process*
