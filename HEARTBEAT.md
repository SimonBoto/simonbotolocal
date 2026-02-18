Read AGENTS.md heartbeat rules. Batch checks — SPAWN MUSCLE FOR ROUTINE TASKS:

**Tier Rule:** Brain=Kimi (PhD/complex), Muscle=Grok-4.1-Fast (routine ops)

1. **Spawn muscle for:** `ls -la 00-Inbox/`, `git status --short`, simple file counts
   → `sessions_spawn task="Check inbox and git status" model=openrouter/x-ai/grok-4.1-fast`
2. memory/ today/yesterday: Review → Update MEMORY.md if insights.
3. Profile: `cat 22-Dashboards/ron-profile.json` → context; `python3 skills/git-notes-memory/memory.py -p . recall -t profile || true` → merge if exists; update from MEMORY.md.
4. MOLTBOOK: ON HOLD (archived _ARCHIVE/moltbook-20260218).
5. Time: If 09:00-18:00 EET and quiet >4h, nudge PhD progress.
6. Track in 22-Dashboards/heartbeat-state.json (lastChecks: memory/inbox/atomic/profile/moltbook).

Quiet times: 23:00-08:00 → HEARTBEAT_OK.

If action needed, alert. Else: HEARTBEAT_OK.