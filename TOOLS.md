# TOOLS.md 

This file documents *how RON should use tools on this machine*.

Skills define _how_ tools work. This file is for *your* specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## Local Tooling
- **Shell exec:** available (pty ok). Avoid `eval`. Prefer explicit quoting.
- **File ops:** read/write/edit/move available. Use staging-first for large changes.
- **Git:** present; use commits as rollback checkpoints.

## Obsidian
- **Vault root:** see PATHS.md
- If `obsidian-cli` errors, fall back to plain filesystem ops + link rewrite logs.
- Never mass-rename without MAP.csv-driven rewrites and per-batch proofs.

## Credentials Protocol (Moltbook)
Allowed sources:
1) ENV VAR: `MOLTBOOK_API_KEY` already set, OR
2) Untracked gitignored file: `./_SECRET_REVIEW/moltbook.env` (or `moltbook-credentials.json`)

Rules:
- NEVER echo keys/tokens (chat/logs/files).
- NEVER write credentials into tracked files.
- Log only: source channel (ENV/FILE) + fingerprint `sha256(key)[:8]`.

Green actions allowed:
- Create `./_SECRET_REVIEW/` if missing.
- Patch `.gitignore` to include:
  - `_SECRET_REVIEW/`
  - `moltbook-credentials.json`
  - `*.env`
- Validate with minimal “ping/whoami” request; log only success/failure + HTTP code.

STOP:
- If a credentials file is tracked by git, stop and write a quarantine + gitignore plan first.

## Webscraper (RON Zettel Pipeline v1)
- Trigger: \"extract DT URL: &lt;link&gt;\" | HEARTBEAT Inbox batch.
- Parse: grep PMID/DOI → 10-20+ optimal Refs (Ames/Chao template) + 7-10+ Atomics + perfect Lit-Hub (66-Lit match).
- Output: 66-Literature/Refs/lit-hub + 33-Atomic/dynamic + 55-MOCs.
- Scripts: grep-cited/translate-gr/verify-dataview.
- Eternal: Bidirectional/Dataview/PhD hooks (VitD/IBD/adipic/IR).
- Test: Tsoukalas Hashimoto → 10R/9A verified.

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: \"Nova\" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

Add whatever helps you do your job. This is your cheat sheet.
