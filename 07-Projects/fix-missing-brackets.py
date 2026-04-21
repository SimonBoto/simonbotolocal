#!/usr/bin/env python3
"""
Fix missing closing brackets in zettel links.
"""

import os
import re

litnotes_dir = '/home/simon/Workspaces/TheOptimizedBrain/01-Literature/'

# Pattern: [[Title_Z-XXX-XXXX] (missing closing bracket)
# Should be: [[Title_Z-XXX-XXXX]]
broken_pattern = r'\[\[([^\]]+_Z-\d{3}-\d{4})\](?!\])'

fixed_count = 0
files_fixed = []

for f in os.listdir(litnotes_dir):
    if not f.endswith('.md') or not '_L-' in f:
        continue
    
    filepath = os.path.join(litnotes_dir, f)
    try:
        with open(filepath, 'r', encoding='utf-8', errors='replace') as file:
            content = file.read()
        
        original = content
        # Fix missing closing brackets
        content = re.sub(broken_pattern, r'[[\1]]', content)
        
        if content != original:
            with open(filepath, 'w', encoding='utf-8') as file:
                file.write(content)
            fixed_count += 1
            files_fixed.append(f)
            print(f"Fixed: {f}")
            
    except Exception as e:
        print(f"Error with {f}: {e}")

print(f"\n{'='*50}")
print(f"Total files fixed: {fixed_count}")
