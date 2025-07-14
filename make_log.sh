#!/bin/bash

# Config
TOTAL_DAYS=180
REPO_DIR="/Users/aungkohtet/Japanese-N4-Mission"
LOG_DIR="$REPO_DIR/DAILY_LOGS"

# Calculate day number
LOG_COUNT=$(ls "$LOG_DIR"/*.md | wc -l | tr -d ' ')
DAY_NUM=$((LOG_COUNT + 1))

# Create file with auto-day-count
LOG_FILE="$LOG_DIR/$(date +%Y-%m-%d).md"
cat <<EOF >"$LOG_FILE"
## $(date +%Y-%m-%d) | Day $DAY_NUM/$TOTAL_DAYS

### ✅ Completed
- [ ] Genki Chapter: ___
- [ ] Kanji Learned: ___/300
- [ ] Vocabulary Reviewed: ___/1500
- [ ] Listening Practice: ___ mins

### 🎯 Tomorrow's Goals
1. 
2. 

### 🤖 Tech Progress
- [ ] Project Updates:
- [ ] Code Commits:
EOF

# Open in nvim
nvim "$LOG_FILE"

# Git sync
cd "$REPO_DIR"
git add "$LOG_FILE"
git commit -m "Auto: Day $DAY_NUM log"
git push origin main
