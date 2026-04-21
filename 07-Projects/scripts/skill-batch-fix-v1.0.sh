#!/bin/bash
# Batch Fix Protocol v1.0
# Usage: ./skill-batch-fix-v1.0.sh <pattern> <replacement> <path>
#
# Example: ./skill-batch-fix-v1.0.sh "lit-note" "litnote" "01-Literature/"

set -euo pipefail

PATTERN=${1:-}
REPLACEMENT=${2:-}
TARGET_PATH=${3:-}
VAULT="$HOME/Workspaces/TheOptimizedBrain"

# Validate inputs
if [ -z "$PATTERN" ] || [ -z "$REPLACEMENT" ] || [ -z "$TARGET_PATH" ]; then
    echo "Error: pattern, replacement, and path required"
    echo "Usage: $0 <pattern> <replacement> <path>"
    echo "Example: $0 'lit-note' 'litnote' '01-Literature/'"
    exit 1
fi

echo "🦞 Batch Fix Protocol"
echo "Pattern: $PATTERN"
echo "Replacement: $REPLACEMENT"
echo "Path: $TARGET_PATH"
echo ""

# Step 1: Identify pattern
echo "Step 1: Identifying pattern..."
cd "$VAULT"
COUNT=$(grep -r "$PATTERN" "$TARGET_PATH" --include="*.md" 2>/dev/null | wc -l)
echo "Found: $COUNT occurrences"
echo "Sample:"
grep -r "$PATTERN" "$TARGET_PATH" --include="*.md" 2>/dev/null | head -5
echo ""

# Step 2: Git checkpoint
echo "Step 2: Git checkpoint..."
git add .
git commit -m "checkpoint: before batch fix '$PATTERN' -> '$REPLACEMENT'"
echo "✅ Checkpoint created"
echo ""

# Step 3: Execute fix
echo "Step 3: Executing fix..."
find "$TARGET_PATH" -name "*.md" -exec sed -i "s/$PATTERN/$REPLACEMENT/g" {} \;
echo "✅ Fix applied"
echo ""

# Step 4: Verify
echo "Step 4: Verifying..."
REMAINING=$(grep -r "$PATTERN" "$TARGET_PATH" --include="*.md" 2>/dev/null | wc -l)
if [ "$REMAINING" -eq 0 ]; then
    echo "✅ Pattern eliminated"
else
    echo "⚠️ Pattern still found: $REMAINING occurrences"
fi
echo "Git diff stats:"
git diff --stat
echo ""

# Step 5: Commit
echo "Step 5: Git commit..."
git add .
git commit -m "batch fix: '$PATTERN' -> '$REPLACEMENT' — $COUNT files"
echo "✅ Committed"
echo ""

echo "🎉 Batch fix complete!"
