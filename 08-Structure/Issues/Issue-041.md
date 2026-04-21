---
id: ISSUE-041
title: REST API Integration — CLI to Obsidian Bridge
assignee: RON
priority: P2
status: backlog
created: 2026-04-21
parent: Issue-040
---

# Issue 041: REST API Integration

## Problem
Current file I/O workflow has lag and conflict risks. REST API could enable real-time, validated updates.

## Plugin
`obsidian-local-rest-api` — already installed

## Research Tasks

### Phase 1: API Discovery (2h)
- [ ] Read API documentation
- [ ] Test authentication (localhost only)
- [ ] List available endpoints
- [ ] Test GET /vault/ note retrieval

### Phase 2: Proof of Concept (4h)
- [ ] Create test note via API
- [ ] Update existing note
- [ ] Search vault contents
- [ ] Validate YAML via Obsidian

### Phase 3: Integration Design (4h)
- [ ] Design FORG → API workflow
- [ ] Design SCOUT → API workflow
- [ ] Error handling strategy
- [ ] Fallback to file I/O

### Phase 4: Implementation (8h)
- [ ] Create `obsidian-api-client.py`
- [ ] Update FORG to use API (optional)
- [ ] Update SCOUT to use API (optional)
- [ ] Test with 10 notes

## Potential Endpoints

| Use Case | Method | Endpoint |
|----------|--------|----------|
| Create note | POST | `/vault/{path}` |
| Read note | GET | `/vault/{path}` |
| Update note | PUT | `/vault/{path}` |
| Search | POST | `/search` |
| Graph connections | GET | `/graph/connections` |

## Benefits

| Current | With API |
|---------|----------|
| File I/O | HTTP requests |
| Git lag | Real-time |
| No validation | Obsidian validates |
| Conflict risk | Obsidian handles |

## Risks

| Risk | Mitigation |
|------|------------|
| Security | Localhost only |
| Data loss | Git backup |
| Complexity | Keep file I/O fallback |

## Success Criteria

- [ ] API client working
- [ ] 10 test notes created
- [ ] Performance vs file I/O measured
- [ ] Decision: adopt or not

## Notes

Plugin already installed. Local REST API only (no external exposure). Test when current workflow stable.

---
