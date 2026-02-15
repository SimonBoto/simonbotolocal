#!/bin/bash
FOLDER=$1
GLOBAL_COUNT=$(find /home/simon/openclaw/RonVault/Obsidian/TheOptimizedBrain -path "*/$FOLDER/*.md" | wc -l)
NEXT=$(printf "%03d" $((GLOBAL_COUNT + 1)))
echo $NEXT