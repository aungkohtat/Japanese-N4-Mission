#!/bin/bash

# Calculate day number (0-based for progress bar)
LOG_DIR="$HOME/Japanese-N4-Mission/DAILY_LOGS"
DAY_NUM=$(ls -1 "$LOG_DIR" | grep '.md$' | wc -l) # Count existing logs

# Create new log with PROPER progress bar URL
TODAY=$(date +%Y-%m-%d)
TEMPLATE="$LOG_DIR/template.md"
NEW_LOG="$LOG_DIR/$TODAY.md"

# Replace placeholders and fix progress bar URL
sed -e "s/YYYY-MM-DD/$TODAY/g" \
  -e "s/Day X\/180/Day $((DAY_NUM + 1))\/180/g" \
  -e "s/\[\[DAY_NUM\]\]/$DAY_NUM/g" \
  "$TEMPLATE" >"$NEW_LOG"

echo "Created log for $TODAY (Day $((DAY_NUM + 1)))"
