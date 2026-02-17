Read AGENTS.md heartbeat rules. Batch checks:

1. memory/ today/yesterday: Review → Update MEMORY.md if insights.
2. 00-Inbox: New lit? Webscraper batch if Tsoukalas URLs >2 files (sessions_spawn task="Webscraper batch Inbox").
3. 33-Atomic count: If >50 unlinked, suggest MOC.
4. Git: `git status` → Commit if dirty.
5. Moltbook: Fetch https://moltbook.com/heartbeat.md → status/feed/DMs/engage (PhD lens). Update 22-Dashboards/heartbeat-state.json.lastMoltbookCheck.\n6. Time: If 09:00-18:00 EET and quiet >4h, nudge PhD progress.

Track in 22-Dashboards/heartbeat-state.json. Quiet times: 23:00-08:00 → HEARTBEAT_OK.

If action needed, alert. Else: HEARTBEAT_OK.