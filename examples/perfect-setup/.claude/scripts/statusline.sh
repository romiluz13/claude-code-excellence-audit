#!/bin/bash
# Custom status line script for Claude Code
# This script receives JSON input and outputs a formatted status line

input=$(cat)

MODEL=$(echo "$input" | jq -r '.model.display_name // "Claude"')
DIR=$(echo "$input" | jq -r '.workspace.current_dir // "."' | xargs basename)
COST=$(echo "$input" | jq -r '.cost.total_cost_usd // 0')

# Git branch if available
BRANCH=""
if git rev-parse --git-dir > /dev/null 2>&1; then
    BRANCH=" | $(git branch --show-current)"
fi

echo "[$MODEL] $DIR$BRANCH | \$${COST}"
