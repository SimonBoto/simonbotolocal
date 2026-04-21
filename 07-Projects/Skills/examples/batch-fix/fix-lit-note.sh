#!/bin/bash
# Example: Fix lit-note → litnote in all LitNotes

PATTERN="lit-note"
REPLACEMENT="litnote"
TARGET_PATH="01-Literature/"

echo "Fixing: $PATTERN → $REPLACEMENT"
echo "Path: $TARGET_PATH"

# Count occurrences
echo "Occurrences:"
grep -r "$PATTERN" "$TARGET_PATH" --include="*.md" | wc -l

# Git checkpoint
git add .
git commit -m "checkpoint: before fixing lit-note → litnote"

# Execute fix
find "$TARGET_PATH" -name "*.md" -exec sed -i "s/$PATTERN/$REPLACEMENT/g" {} \;

# Verify
echo "Remaining occurrences:"
grep -r "$PATTERN" "$TARGET_PATH" --include="*.md" | wc -l

# Commit
git add .
git commit -m "fix: lit-note → litnote in all LitNotes"

echo "Done!"
