# TOOLS.md - Local Notes

Skills define _how_ tools work. This file is for _your_ specifics — the stuff that's unique to your setup.

## What Goes Here

Things like:

- Camera names and locations
- SSH hosts and aliases
- Preferred voices for TTS
- Speaker/room names
- Device nicknames
- Anything environment-specific

## DT-Scrape (RON Zettel Pipeline v1.2)
- Trigger: "extract DT URL: <drtsoukalas.com link>" or detect Tsoukalas.
- Output: 66-Literature/lit-hub + Refs(Zotero DOI/PMID/tier/abstract)/ + 33-Atomic/dynamic zettels + 55-MOCs/MOC.
- Batch: HEARTBEAT scans 00-Inbox/*.url → sessions_spawn.
- Test: SafeVit → 20 notes (rich refs).

## Examples

```markdown
### Cameras

- living-room → Main area, 180° wide angle
- front-door → Entrance, motion-triggered

### SSH

- home-server → 192.168.1.100, user: admin

### TTS

- Preferred voice: "Nova" (warm, slightly British)
- Default speaker: Kitchen HomePod
```

## Why Separate?

Skills are shared. Your setup is yours. Keeping them apart means you can update skills without losing your notes, and share skills without leaking your infrastructure.

---

Add whatever helps you do your job. This is your cheat sheet.