---
id: ISSUE-096
title: System-wide Python Executables (chmod +x *.py)
assignee: RON
energy: 0.5h / $0
priority: P1
status: Open
created: 2026-04-24
parent: none
spawned: []
---

## Success Criteria
- [ ] All 24 vault/workspace *.py → chmod +x (verified ls -l)
- [ ] Git commit 'feat(096): python executables'
- [ ] Test 2-3 scripts (load_soul.py, validate_yaml.py)

## Plan
find vault/workspace -name "*.py" | xargs chmod +x
git add/commit