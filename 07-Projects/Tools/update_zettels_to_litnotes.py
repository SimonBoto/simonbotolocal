#!/usr/bin/env python3
"""
Update zettels to link to new CGPT LitNotes.
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
                                zettels[cgid].append((uid, path))
                    except:
                        pass
    return zettels

def find_litnotes():
    """Find CGPT LitNotes created today."""
    litnotes = {}
    for root, dirs, files in os.walk(VAULT / "01-Literature"):
        for f in files:
            if f.endswith('.md'):
                match = re.search(r'CGPT[_-]?(\d{4})_.*_L-001-(\d{4})', f)
                if match:
                    cgid = match.group(1)
                    lid = f"L-001-{match.group(2)}"
                    litnotes[cgid] = (lid, os.path.join(root, f))
    return litnotes

def update_zettels(zettels, litnotes):
    """Update zettels to link to new LitNotes."""
    updated = 0
    
    for cgid, zettel_list in zettels.items():
        if cgid in litnotes:
            lid, litpath = litnotes[cgid]
            lit_title = Path(litpath).stem
            
            for uid, path in zettel_list:
                try:
                    with open(path, 'r') as f:
                        content = f.read()
                    
                    # Update source-litnote
                    old_line = re.search(r'source-litnote:\s*"[^"]*"', content)
                    if old_line:
                        new_line = f'source-litnote: "[[{lit_title}]]"'
                        content = content.replace(old_line.group(0), new_line)
                    else:
                        # Add source-litnote if missing
                        yaml_end = content.find('---', 4)
                        if yaml_end > 0:
                            insert_point = content.find('\n', yaml_end + 4)
                            if insert_point > 0:
                                content = content[:insert_point] + f'\nsource-litnote: "[[{lit_title}]]"' + content[insert_point:]
                    
                    with open(path, 'w') as f:
                        f.write(content)
                    
                    updated += 1
                    
                except Exception as e:
                    print(f"Error updating {path}: {e}")
    
    print(f"✅ Updated {updated} zettels")


def main():
    print("🔍 Finding CGPT-sourced zettels...")
    zettels = find_cgpt_zettels()
    print(f"   Found {len(zettels)} CGPT conversations with zettels")
    
    print("🔍 Finding new LitNotes...")
    litnotes = find_litnotes()
    print(f"   Found {len(litnotes)} new CGPT LitNotes")
    
    print("🔧 Updating zettels...")
    update_zettels(zettels, litnotes)

if __name__ == '__main__':
    main()
