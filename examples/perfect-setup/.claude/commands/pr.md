---
description: Create a pull request with AI-generated description
allowed-tools: Bash(git:*), Bash(gh:*)
argument-hint: [target-branch]
---

# Create Pull Request

## Context

- Current branch: !`git branch --show-current`
- Target branch: $1 (default: main)
- Commits: !`git log origin/${1:-main}..HEAD --oneline`
- Files changed: !`git diff origin/${1:-main}..HEAD --stat`

## Task

Create a pull request with:

1. **Title**: Concise summary of changes (imperative mood)
2. **Description**:
   - Summary of what was changed
   - Why the change was made
   - Testing done
   - Any breaking changes

Use `gh pr create` with appropriate flags.

Format the PR body professionally with markdown.
