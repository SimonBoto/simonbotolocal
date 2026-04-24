#!/usr/bin/env python3
"""
Batch Create CGPT LitNotes
Creates retroactive LitNotes for CGPT conversations that have zettels.
"""

import os
import re
from pathlib import Path

VAULT = Path("/home/simon/Workspaces/TheOptimizedBrain")

def find_cgpt_zettels():
    """Find all zettels that reference CGPT conversations."""
    zettels = {}
    for root, dirs, files in os.walk(VAULT / "03-Zettels"):
        for f in files:
            if f.endswith('.md'):
                match = re.search(r'(Z-\d{3}-\d{4}[A-Z]?)', f)
                if match:
                    uid = match.group(1)
                    path = os.path.join(root, f)
                    try:
                        with open(path, 'r') as file:
                            content = file.read()
                        if 'CGPT' in content or 'cgpt' in content.lower():
                            cgpt_match = re.search(r'CGPT[_-]?(\d{4})', content)
                            if cgpt_match:
                                cgid = cgpt_match.group(1)
                                if cgid not in zettels:
                                    zettels[cgid] = []
                                zettels[cgid].append(uid)
                    except:
                        pass
    return zettels

def find_existing_litnotes():
    """Find CGPT conversations that already have LitNotes."""
    existing = set()
    for root, dirs, files in os.walk(VAULT / "01-Literature"):
        for f in files:
            if f.endswith('.md'):
                match = re.search(r'CGPT[_-]?(\d{4})', f)
                if match:
                    existing.add(match.group(1))
    return existing

def find_cgpt_files():
    """Find CGPT conversation files in inbox."""
    cgpt_files = {}
    for root, dirs, files in os.walk(VAULT / "00-Inbox/Fleeting/ChatGPT"):
        for f in files:
            if f.startswith('CGPT_') and f.endswith('.md'):
                match = re.search(r'CGPT[_-]?(\d{4})', f)
                if match:
                    cgpt_files[match.group(1)] = os.path.join(root, f)
    return cgpt_files

def get_cgpt_info(cgid, cgpt_file):
    """Extract info from CGPT file."""
    try:
        with open(cgpt_file, 'r') as f:
            content = f.read()
        
        # Extract title
        title_match = re.search(r'title:\s*"([^"]+)"', content)
        title = title_match.group(1) if title_match else f"CGPT-{cgid}"
        
        # Extract date
        date_match = re.search(r'date:\s*(\d{4}-\d{2}-\d{2})', content)
        date = date_match.group(1) if date_match else "2024-01-01"
        
        return title, date
    except:
        return f"CGPT-{cgid}", "2024-01-01"

def create_litnote(cgid, zettel_uids, cgpt_file):
    """Create a LitNote for a CGPT conversation."""
    title, date = get_cgpt_info(cgid, cgpt_file)
    safe_title = re.sub(r'[^\w\s-]', '', title).strip().replace(' ', '_')
    
    # Find next available L-001-XXXX
    existing = list((VAULT / "01-Literature").glob("CGPT_*_L-*.md"))
    max_num = 700
    for f in existing:
        match = re.search(r'L-001-(\d{4})', f.name)
        if match:
            max_num = max(max_num, int(match.group(1)))
    
    next_num = max_num + 1
    litnote_uid = f"L-001-{next_num:04d}"
    filename = f"CGPT_{cgid}_{safe_title}_{litnote_uid}.md"
    filepath = VAULT / "01-Literature" / filename
    
    # Sample zettels (first 5)
    sample_zettels = '\n'.join([f"- [[{uid}]]" for uid in zettel_uids[:5]])
    
    content = f"""---
uid: {litnote_uid}
type: litnote
title: "CGPT_{cgid}_{safe_title}_{litnote_uid}"
source-origin: "ChatGPT conversation"
source-cgpt: "[[CGPT_{cgid}_{safe_title}_CGPT-{cgid}]]"
extraction-date: 2026-04-22
zettel-count: {len(zettel_uids)}
retroactive: true
parent-moc: "[[MOC-CGPT-Archive]]"
parent-index: "[[01-Literature-Index]]"
status: extracted
---

# CGPT-{cgid}: {title}

> **Date:** {date}
> **Platform:** ChatGPT
> **Zettels extracted:** {len(zettel_uids)}

---

## Context

**Retroactive LitNote:** Created after zettels were already extracted.
**Source:** ChatGPT conversation.

---

## Zettels Extracted ({len(zettel_uids)} total)

### Sample Zettels
{sample_zettels}

**Full list:** See connected zettels with `source-litnote` pointing to this conversation.

---

## Source

- **CGPT Conversation:** [[CGPT_{cgid}_{safe_title}_CGPT-{cgid}]]

---

*{litnote_uid} | Retroactive extraction | {len(zettel_uids)} zettels connected*
"""
    
    with open(filepath, 'w') as f:
        f.write(content)
    
    return filepath, litnote_uid

def main():
    print("🔍 Finding CGPT-sourced zettels...")
    zettels = find_cgpt_zettels()
    print(f"   Found {len(zettels)} CGPT conversations with zettels")
    
    print("🔍 Checking existing LitNotes...")
    existing = find_existing_litnotes()
    print(f"   {len(existing)} already have LitNotes")
    
    print("🔍 Finding CGPT files...")
    cgpt_files = find_cgpt_files()
    print(f"   {len(cgpt_files)} CGPT files in inbox")
    
    # Find CGPTs that need LitNotes
    todo = sorted(set(zettels.keys()) - existing, key=lambda x: len(zettels[x]), reverse=True)
    print(f"\n📝 Creating LitNotes for {len(todo)} CGPT conversations...")
    
    created = 0
    for cgid in todo:
        if cgid in cgpt_files:
            filepath, uid = create_litnote(cgid, zettels[cgid], cgpt_files[cgid])
            print(f"   ✅ CGPT-{cgid}: {len(zettels[cgid])} zettels → {uid}")
            created += 1
        else:
            print(f"   ⚠️  CGPT-{cgid}: {len(zettels[cgid])} zettels (no file found)")
    
    print(f"\n✅ Created {created} LitNotes")
    print(f"   Total zettels now properly sourced: {sum(len(zettels[c]) for c in todo if c in cgpt_files)}")

if __name__ == '__main__':
    main()
