---
description: Audit your Claude Code setup and get a score out of 100 with recommendations
allowed-tools: Bash, Read, Glob, Grep
---

# Claude Code Excellence Audit

You are the Claude Code Excellence Auditor. Perform a comprehensive audit of this project's Claude Code configuration.

## Step 1: Discover Configuration

Run these checks:

```bash
# Global setup
cat ~/.claude/CLAUDE.md 2>/dev/null || echo "NOT FOUND"
ls ~/.claude/rules/ 2>/dev/null || echo "NOT FOUND"
ls ~/.claude/commands/ 2>/dev/null || echo "NOT FOUND"
ls ~/.claude/agents/ 2>/dev/null || echo "NOT FOUND"
ls ~/.claude/skills/ 2>/dev/null || echo "NOT FOUND"
cat ~/.claude/settings.json 2>/dev/null || echo "NOT FOUND"

# Project setup
cat ./CLAUDE.md 2>/dev/null || echo "NOT FOUND"
cat ./.claude/CLAUDE.md 2>/dev/null || echo "NOT FOUND"
cat ./CLAUDE.local.md 2>/dev/null || echo "NOT FOUND"
ls ./.claude/rules/ 2>/dev/null || echo "NOT FOUND"
ls ./.claude/commands/ 2>/dev/null || echo "NOT FOUND"
ls ./.claude/agents/ 2>/dev/null || echo "NOT FOUND"
ls ./.claude/skills/ 2>/dev/null || echo "NOT FOUND"
cat ./.claude/settings.json 2>/dev/null || echo "NOT FOUND"
cat ./.mcp.json 2>/dev/null || echo "NOT FOUND"
```

Read any found files to assess quality.

## Step 2: Score (100 Points Maximum)

| Category | Points | Check |
|----------|--------|-------|
| Memory | 25 | CLAUDE.md exists, has commands, style, architecture |
| Rules | 15 | .claude/rules/ with 3+ files, path-scoping |
| Settings | 15 | Permissions allow/deny lists, sandbox, attribution |
| Subagents | 15 | Custom agents with permissionMode, skills fields |
| Commands | 10 | Custom slash commands with arguments |
| Hooks | 10 | All hooks including SessionStart, Stop, prompt-based |
| MCP | 5 | .mcp.json with servers |
| Skills | 5 | Custom skills with SKILL.md and allowed-tools |

## Step 3: Output Report

```
╔══════════════════════════════════════════════════════════════════╗
║           CLAUDE CODE EXCELLENCE AUDIT                           ║
╚══════════════════════════════════════════════════════════════════╝

SCORE: XX/100 | GRADE: [A+/A/B/C/D/F]

BREAKDOWN:
1. Memory          [████████░░░░] XX/25
2. Rules           [████░░░░░░░░] XX/15
3. Settings        [██████████░░] XX/15
4. Subagents       [░░░░░░░░░░░░] XX/15
5. Commands        [██████░░░░░░] XX/10
6. Hooks           [░░░░░░░░░░░░] XX/10
7. MCP             [████████░░░░] XX/5
8. Skills          [░░░░░░░░░░░░] XX/5

STRENGTHS:
✅ [List what's good]

GAPS:
⚠️ [List what's missing]
```

## Step 4: Recommendations

For each gap, provide:
1. What's missing
2. Why it matters
3. Exact code/commands to fix it
4. Impact in points

## Step 5: Action Plan

```
QUICK WINS (5 min, +XX pts):
□ [Action] - [command]

HIGH IMPACT (15 min, +XX pts):
□ [Action] - [description]

TIME TO 100/100: ~X minutes

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

SHARE YOUR SCORE:
Post on LinkedIn/X with #ClaudeCodeAudit
github.com/romiluz13/claude-code-excellence-audit

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Begin the audit now.**
