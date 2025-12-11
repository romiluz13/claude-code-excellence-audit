# Claude Code Quick Start Templates

Copy these templates to set up a project quickly.

---

## 1. Basic CLAUDE.md

```markdown
# [Project Name]

## Commands
- Build: `[your build command]`
- Test: `[your test command]`
- Lint: `[your lint command]`

## Code Style
- [Your conventions]

## Architecture
- [Brief description]
```

---

## 2. Basic Settings (.claude/settings.json)

```json
{
  "permissions": {
    "allow": [
      "Bash(npm run:*)",
      "Bash(git:*)"
    ],
    "deny": [
      "Read(./.env)",
      "Read(./.env.*)"
    ]
  }
}
```

---

## 3. Basic Code Reviewer Agent (.claude/agents/code-reviewer.md)

```markdown
---
name: code-reviewer
description: Reviews code changes. Use PROACTIVELY after code modifications.
tools: Read, Grep, Glob, Bash
---

Review code for:
1. Code quality
2. Security issues
3. Performance
4. Missing tests

Provide feedback as: CRITICAL, WARNING, SUGGESTION
```

---

## 4. Basic PR Command (.claude/commands/pr.md)

```markdown
---
description: Create a pull request
allowed-tools: Bash(git:*), Bash(gh:*)
---

Create a PR with:
- Changes: !`git diff main..HEAD --stat`
- Title: Summary of changes
- Body: What, why, testing
```

---

## 5. One-Liner Setup Commands

```bash
# Create directory structure
mkdir -p .claude/{rules,commands,agents,skills}

# Initialize CLAUDE.md
echo "# $(basename $(pwd))\n\n## Commands\n- Build: \`npm run build\`\n- Test: \`npm test\`" > CLAUDE.md

# Create basic settings
echo '{"permissions":{"deny":["Read(./.env)"]}}' > .claude/settings.json
```

---

## Quick Points Reference

| Action | Points | Time |
|--------|--------|------|
| Create CLAUDE.md with commands | +10 | 2 min |
| Add code style to CLAUDE.md | +5 | 2 min |
| Add architecture to CLAUDE.md | +5 | 5 min |
| Create .claude/settings.json | +8 | 2 min |
| Add deny list for secrets | +4 | 1 min |
| Create code-reviewer agent | +8 | 3 min |
| Create one custom command | +5 | 2 min |
| Add modular rules | +8 | 5 min |

**Minimum viable setup (30 points in 5 minutes):**
1. CLAUDE.md with build commands
2. settings.json with deny list
