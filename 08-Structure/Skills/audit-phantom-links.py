#!/usr/bin/env python3
"""
Phase 1.4: Phantom Links Audit
Finds wiki links that point to non-existent files.
"""

import os
import re

def find_all_notes(vault_dir):
    """Build set of all note filenames and aliases."""
    notes = set()
    for root, dirs, files in os.walk(vault_dir):
        for f in files:
            if f.endswith('.md'):
                notes.add(f)
                notes.add(f.replace('.md', ''))
    return notes

def extract_wikilinks(content):
    """Extract all [[link]] patterns."""
    pattern = r'\[\[([^\]]+)\]\]'
    return re.findall(pattern, content)

def audit_phantom_links(litnotes_dir, vault_dir, output_file):
    all_notes = find_all_notes(vault_dir)
    phantom_links = []
    
    for filename in os.listdir(litnotes_dir):
        if not filename.endswith('.md'):
            continue
            
        filepath = os.path.join(litnotes_dir, filename)
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        links = extract_wikilinks(content)
        
        for link in links:
            # Strip alias if present: [[Note|Alias]]
            target = link.split('|')[0].strip()
            
            # Check if target exists
            target_file = target + '.md'
            if target_file not in all_notes and target not in all_notes:
                phantom_links.append({
                    'source': filename,
                    'target': target,
                    'full_link': link
                })
    
    # Write report
    with open(output_file, 'w', encoding='utf-8', errors='replace') as f:
        f.write("# Phantom Links Audit Report\n\n")
        f.write(f"Total phantom links: {len(phantom_links)}\n\n")
        
        # Group by source
        by_source = {}
        for pl in phantom_links:
            if pl['source'] not in by_source:
                by_source[pl['source']] = []
            by_source[pl['source']].append(pl['target'])
        
        for source, targets in sorted(by_source.items()):
            f.write(f"## {source}\n")
            for t in targets:
                f.write(f"- [[{t}]]\n")
            f.write("\n")
    
    print(f"Audit complete. {len(phantom_links)} phantom links found.")
    print(f"Report: {output_file}")

if __name__ == '__main__':
    audit_phantom_links(
        '/home/simon/Workspaces/TheOptimizedBrain/01-Literature',
        '/home/simon/Workspaces/TheOptimizedBrain',
        '/home/simon/Workspaces/TheOptimizedBrain/audit-reports/PHANTOM-LINKS.md'
    )
