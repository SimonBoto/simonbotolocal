import os
import re
import subprocess
from pathlib import Path
import sys

root = Path('.')
date_str = '20260215'

# Read the list of 50 files
ron_list = []
try:
    with open('ron_batch2_list.txt', 'r') as f:
        for line in f:
            ron_list.append(line.strip())
    print(f"Loaded {len(ron_list)} files from ron_batch2_list.txt")
except FileNotFoundError:
    print("ron_batch2_list.txt not found!")
    sys.exit(1)

num = 1
success_count = 0

for old_path_str in ron_list:
    old_path = Path(old_path_str)
    if not old_path.exists():
        print(f"Skipping non-existent: {old_path}")
        continue
    
    old_name = old_path.name
    topic = old_name[:-3]  # remove .md
    
    # Determine prefix
    prefix = 'ron'
    
    # For Dictionary_, optional shorten but keep full topic
    if topic.startswith('Dictionary_'):
        topic = topic[10:]  # remove Dictionary_
    
    # Convert to snake_case
    topic_snake = re.sub(r'([a-z0-9])([A-Z])', r'\1_\2', topic).lower()
    topic_snake = re.sub(r'[^a-z0-9_]', '_', topic_snake)
    core_idea = f"{prefix}_{topic_snake}"
    
    new_name = f"[{core_idea}]_{date_str}_{num:03d}.md"
    new_path_str = new_name  # move to root
    
    print(f"Processing {num}: {old_path.name} -> {new_name}")
    
    try:
        # Move/Rename with link update
        result = subprocess.run(['obsidian-cli', 'move', str(old_path), new_name], 
                                capture_output=True, text=True, check=True)
        print(f"  ✓ Moved: {old_name} to {new_name}")
        
        # Check and add frontmatter uid/aliases if missing
        fm_result = subprocess.run(['obsidian-cli', 'frontmatter', new_name, '--print'], 
                                   capture_output=True, text=True)
        fm_content = fm_result.stdout.strip()
        
        uid = f"{date_str}_{num:03d}"
        aliases = [old_name[:-3]]
        
        if 'uid:' not in fm_content:
            subprocess.run(['obsidian-cli', 'frontmatter', new_name, 
                           '--edit', '--key', 'uid', '--value', uid], check=True)
            print(f"  ✓ Added uid: {uid}")
        
        if 'aliases:' not in fm_content:
            aliases_yaml = f'["{aliases[0]}"]'
            subprocess.run(['obsidian-cli', 'frontmatter', new_name,
                           '--edit', '--key', 'aliases', '--value', aliases_yaml], check=True)
            print(f"  ✓ Added aliases: {aliases_yaml}")
        
        success_count += 1
        num += 1
        
    except subprocess.CalledProcessError as e:
        print(f"  ✗ Error moving {old_path.name}: {e.stderr}")
    except Exception as e:
        print(f"  ✗ Unexpected error {old_path.name}: {str(e)}")

print(f"\nCompleted: {success_count}/{len(ron_list)} files renamed.")
print("Next steps: Update MOCs, git commit.")