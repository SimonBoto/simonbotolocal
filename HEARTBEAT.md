# HEARTBEAT.md — Proactive Checks

**Tier Rule:** Brain=Kimi (PhD/complex), Muscle=Grok-4.1-Fast (routine ops)

## Checklist (In Order)

1. **Dashboard Status** → `curl http://localhost:3333/api/status | jq '.'`
   - Verify RON active, memory stats, pipeline counts
   - Check proactive mode toggle state

2. **Inbox Scan** → `ls -la 00-Inbox/`
   - New .url files? → Note for webscraper batch
   - New .md files? → Triage

3. **Memory Sync** → Dashboard "Sync Memory" or `git notes list | wc -l`
   - Verify recent memories persisted
   - Critical/High/Normal counts match dashboard

4. **Git Status** → `git status --short`
   - Uncommitted changes? → Auto-commit if GREEN
   - Behind origin? → Push

5. **Proactive Opportunities** (if mode=ON)
   - Inbox >3 days old? → Suggest scrape
   - Quiet >4h during work hours (09:00-18:00 EET)? → Nudge PhD progress
   - Memory >50 entries? → Suggest hygiene review

## Actions

| Task | Model | Command |
|------|-------|---------|
| Simple file ops | Muscle | `sessions_spawn task="..." model=openrouter/x-ai/grok-4.1-fast` |
| Dashboard refresh | Brain | Direct API call |
| Memory sync | Brain | `python3 skills/git-notes-memory/memory.py -p . sync --start` |

## Quiet Times

**23:00-08:00 EET** → HEARTBEAT_OK unless urgent

## Tracking

Log checks in `22-Dashboards/heartbeat-state.json`:
```json
{
  "lastChecks": {
    "dashboard": 1740009600,
    "inbox": 1740009600,
    "memory": 1740009600,
    "git": 1740009600
  }
}
```

## Response Rules

- **Action needed:** Alert with specific recommendation
- **All clear:** HEARTBEAT_OK
- **Proactive mode ON:** Include suggestions even if no immediate action
