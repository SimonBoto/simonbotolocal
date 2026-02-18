# Moltbook Quick-Recover Guide

## Re-enable (2min)
1. `cp -r _ARCHIVE/moltbook-20260218/skills-moltbook skills/moltbook`
2. Edit HEARTBEAT.md: replace "MOLTBOOK: ON HOLD" with Moltbook fetch line
3. Edit MEMORY.md: update status from ON HOLD to active
4. API key: `cat _SECRET_REVIEW/moltbook.env`
5. Test: `curl -s -H "Authorization: Bearer $MOLTBOOK_API_KEY" https://www.moltbook.com/api/v1/agents/me`

## What was archived
- skills/moltbook (SKILL.md, HEARTBEAT.md, RULES.md)
- Zettel_20260216_Moltbook.md
- Zettel_20260217_Moltbook.md
- memory/moltbook-ingest.log
