---
description: Create a well-formatted git commit
allowed-tools: Bash(git:*)
argument-hint: [type]
---

# Create Commit

## Context

- Staged changes: !`git diff --staged --stat`
- Diff: !`git diff --staged`

## Task

Create a commit following Conventional Commits:

**Types**: feat, fix, docs, style, refactor, test, chore

Format:
```
<type>(<scope>): <description>

<body>
```

If $1 is provided, use it as the type. Otherwise, infer from changes.

Run: `git commit -m "<message>"`
