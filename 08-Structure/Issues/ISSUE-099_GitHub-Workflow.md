---
id: ISSUE-099
title: GitHub Workflow Setup (Vault Backup + Actions)
assignee: RON
energy: 1h / $0
priority: P1
status: Open
created: 2026-04-24
parent: none
spawned: []
---

## Success Criteria
- [ ] gh CLI auth'd (user PAT)
- [ ] Private repo: TheOptimizedBrain (vault mirror)
- [ ] .gitignore vault/tmp/node_modules
- [ ] GitHub Actions: QMD index/cron on push
- [ ] gh pr workflow test

## Plan
1. User: gh auth login (PAT repo scopes)
2. cd vault && gh repo create TheOptimizedBrain --private --source=. --remote=origin
3. git push -u origin main
4. Actions YAML for QMD/rituals