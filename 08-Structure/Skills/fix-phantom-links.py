#!/usr/bin/env python3
"""
Batch fix phantom links by correcting link format.
"""

import os
import re

def find_file_by_uid(vault_path, uid):
    """Find actual filename from UID."""
    for root, dirs, files in os.walk(vault_path):
        dirs[:] = [d for d in dirs if not d.startswith('.')]
        for f in files:
            if f.endswith('.md') and uid in f:
                return f.replace('.md', '')
    return None

def fix_links_in_file(filepath, vault_path):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    original = content
    
    # Find all wiki links
    links = re.findall(r'\[\[([^\]]+)\]\]', content)
    
    for link in links:
        # Skip if link has | (alias)
        if '|' in link:
            continue
            
        # Pattern 1: L-XXX-XXXX_Title (wrong order)
        match = re.match(r'(L-\d{3}-\d{4})_(.+)', link)
        if match:
            uid = match.group(1)
            # Find actual filename
            real_file = find_file_by_uid(vault_path, uid)
            if real_file:
                content = content.replace(f'[[{link}]]', f'[[{real_file}]]')
        
        # Pattern 2: Z-XXX-XXXX_Title (should be UID only)
        match = re.match(r'(Z-\d{3}-\d{4})_(.+)', link)
        if match:
            uid = match.group(1)
            content = content.replace(f'[[{link}]]', f'[[{uid}]]')
    
    if content != original:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        return True
    return False

def main():
    litnotes_dir = '/home/simon/Workspaces/TheOptimizedBrain/01-Literature'
    vault_path = '/home/simon/Workspaces/TheOptimizedBrain'
    
    fixed_count = 0
    for filename in os.listdir(litnotes_dir):
        if not filename.endswith('.md'):
            continue
        filepath = os.path.join(litnotes_dir, filename)
        if fix_links_in_file(filepath, vault_path):
            print(f"Fixed: {filename.encode('utf-8', errors='replace').decode()}")
            fixed_count += 1
    
    print(f"\nTotal files fixed: {fixed_count}")

if __name__ == '__main__':
    main()
