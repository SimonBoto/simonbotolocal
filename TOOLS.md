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

## DT-Scrape (RON Zettel Pipeline v1.9)
- Trigger: "extract DT URL: <link>".
- v1.9: Full parse (grep cited/claims → ALL Refs>10R/Atomics>8A); RON naming; 90% auto.
- Output: Lit-hub ALL embeds + Refs/DOIs + Atomics.
- Batch: HEARTBEAT Inbox.
- Test: Telomeres → 17R/10A target.
- Trigger: "extract DT URL: <drtsoukalas.com link>" or detect Tsoukalas.
- Output: 66-Literature/lit-hub + Refs(Zotero DOI/PMID/tier/abstract)/ + 33-Atomic/dynamic zettels + 55-MOCs/MOC.
- Batch: HEARTBEAT scans 00-Inbox/*.url → sessions_spawn.
- v2.1: Refs-template from 100 (top20 extended). YAML/Tier/Abstract/Key/Atomics(2-5A/ref); Dataview connects refs↔atomics eternal. 100Refs/80A+ vault; PhD: adipic/IR/VitD hooks. Test: Taylor_Reversal→atomics verified. Batch spawn live.

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