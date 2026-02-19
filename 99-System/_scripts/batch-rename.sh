#!/bin/bash
# RON Migration Helper — Batch Rename Script
# Usage: ./batch-rename.sh [start_index] [batch_size]

VAULT_ROOT="/home/simon/openclaw/RonVault/Obsidian/TheOptimizedBrain"
SOURCE_DIR="$VAULT_ROOT/33-Atomic"
DEST_DIR="$VAULT_ROOT/02-Atomic"
LOG_FILE="$VAULT_ROOT/99-System/_logs/rename-log.md"

START_INDEX=${1:-0}
BATCH_SIZE=${2:-25}

echo "🦞 RON Batch Rename — Batch starting at $START_INDEX, size $BATCH_SIZE"
echo "Source: $SOURCE_DIR"
echo "Dest: $DEST_DIR"
echo ""

# Get list of files (sorted)
mapfile -t FILES < <(ls -1 "$SOURCE_DIR"/*.md 2>/dev/null | sort)

TOTAL=${#FILES[@]}
echo "Total files found: $TOTAL"

# Calculate batch range
END_INDEX=$((START_INDEX + BATCH_SIZE))
if [ $END_INDEX -gt $TOTAL ]; then
    END_INDEX=$TOTAL
fi

echo "Processing files $START_INDEX to $END_INDEX"
echo ""

# Initialize UID counter (you'll need to set this based on existing UIDs)
NEXT_UID=000001

# Log header
echo "## Batch Rename — $(date '+%Y-%m-%d %H:%M')" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"
echo "| Old Name | New Name | Status |" >> "$LOG_FILE"
echo "|----------|----------|--------|" >> "$LOG_FILE"

# Process batch
for ((i=START_INDEX; i<END_INDEX; i++)); do
    OLD_FILE="${FILES[$i]}"
    BASENAME=$(basename "$OLD_FILE" .md)
    
    # Extract components from old filename (you'll customize this)
    # Pattern: Topic_Detail_YYYYMMDD_UID.md
    # New: TOPIC_DETAIL_DETAIL_XXXXXX.md
    
    # For now, use placeholder transformation
    NEW_BASENAME="${BASENAME}_${NEXT_UID}"
    NEW_FILE="$DEST_DIR/${NEW_BASENAME}.md"
    
    echo "[$((i+1))/$TOTAL] $BASENAME → ${NEW_BASENAME}"
    
    # Use obsidian-cli to move (preserves links)
    if obsidian-cli move "$OLD_FILE" "$NEW_FILE" 2>/dev/null; then
        echo "| $BASENAME | ${NEW_BASENAME} | ✅ |" >> "$LOG_FILE"
    else
        echo "| $BASENAME | ${NEW_BASENAME} | ❌ |" >> "$LOG_FILE"
    fi
    
    # Increment UID
    NEXT_UID=$(printf "%06d" $((10#$NEXT_UID + 1)))
done

echo "" >> "$LOG_FILE"
echo "Batch complete: $START_INDEX to $END_INDEX" >> "$LOG_FILE"
echo "---" >> "$LOG_FILE"
echo ""
echo "✓ Batch complete. Check $LOG_FILE for details."
