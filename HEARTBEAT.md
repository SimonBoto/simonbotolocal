Read AGENTS.md heartbeat rules. Batch checks:

1. memory/ today/yesterday: Review → Update MEMORY.md if insights.
2. Profile: `cat 22-Dashboards/ron-profile.json` → context; `python3 skills/git-notes-memory/memory.py -p . recall -t profile || true` → merge if exists; update from MEMORY.md.
3. Moltbook: Fetch https://moltbook.com/heartbeat.md → status/feed/DMs/engage (PhD lens). Update 22-Dashboards/heartbeat-state.json.lastMoltbookCheck.\n6. Time: If 09:00-18:00 EET and quiet >4h, nudge PhD progress.
4. Track in 22-Dashboards/heartbeat-state.json (lastChecks: memory/inbox/atomic/profile/moltbook).\nQuiet times: 23:00-08:00 → HEARTBEAT_OK.

If action needed, alert. Else: HEARTBEAT_OK.