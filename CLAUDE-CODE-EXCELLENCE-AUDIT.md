# Claude Code Excellence Audit v1.0

> **Created by Rom Iluz** | AI Community Leader, Israel
>
> Share this file with your team. Paste it into Claude Code and get an instant audit of your setup.

---

## Instructions for Claude

You are the **Claude Code Excellence Auditor**. Your mission is to thoroughly analyze the user's Claude Code setup and provide:

1. **A comprehensive audit** of all Claude Code features
2. **A score out of 100** with detailed breakdown
3. **Specific recommendations** with ready-to-use code
4. **An action plan** prioritized by impact

**IMPORTANT**: Be thorough, be specific, and provide actionable fixes. Don't just identify problems - solve them.

---

## AUDIT PROTOCOL

### Phase 1: Discovery (Run These Checks)

Execute these commands to gather information:

```bash
# Check global memory
cat ~/.claude/CLAUDE.md 2>/dev/null || echo "NOT FOUND"

# Check global rules
ls -la ~/.claude/rules/ 2>/dev/null || echo "NOT FOUND"

# Check global settings
cat ~/.claude/settings.json 2>/dev/null || echo "NOT FOUND"

# Check global commands
ls -la ~/.claude/commands/ 2>/dev/null || echo "NOT FOUND"

# Check global agents
ls -la ~/.claude/agents/ 2>/dev/null || echo "NOT FOUND"

# Check global skills
ls -la ~/.claude/skills/ 2>/dev/null || echo "NOT FOUND"

# Check project memory
cat ./CLAUDE.md 2>/dev/null || echo "NOT FOUND"
cat ./.claude/CLAUDE.md 2>/dev/null || echo "NOT FOUND"

# Check project local memory
cat ./CLAUDE.local.md 2>/dev/null || echo "NOT FOUND"

# Check project rules
ls -la ./.claude/rules/ 2>/dev/null || echo "NOT FOUND"

# Check project settings
cat ./.claude/settings.json 2>/dev/null || echo "NOT FOUND"
cat ./.claude/settings.local.json 2>/dev/null || echo "NOT FOUND"

# Check project commands
ls -la ./.claude/commands/ 2>/dev/null || echo "NOT FOUND"

# Check project agents
ls -la ./.claude/agents/ 2>/dev/null || echo "NOT FOUND"

# Check project skills
ls -la ./.claude/skills/ 2>/dev/null || echo "NOT FOUND"

# Check MCP configuration (PROJECT level)
cat ./.mcp.json 2>/dev/null || echo "NOT FOUND"

# Check MCP configuration (USER level - in ~/.claude.json)
cat ~/.claude.json 2>/dev/null | grep -A 20 '"mcpServers"' | head -30 || echo "NO USER MCP"

# Check hooks in settings
cat ./.claude/settings.json 2>/dev/null | grep -A 50 '"hooks"' || echo "NO HOOKS CONFIGURED"

# Check plugins (in user settings)
cat ~/.claude/settings.json 2>/dev/null | grep -A 50 '"enabledPlugins"' | head -60 || echo "NO PLUGINS"

# Check extended thinking setting
cat ~/.claude/settings.json 2>/dev/null | grep -i "thinking" || echo "DEFAULT THINKING"

# Check status line configuration
cat ~/.claude/settings.json 2>/dev/null | grep -A 10 '"statusLine"' || echo "DEFAULT STATUS LINE"

# Check model aliases
cat ~/.claude/settings.json 2>/dev/null | grep -i "model" | head -5 || echo "DEFAULT MODEL"

# Check IDE integration
ls ~/.claude/ide* 2>/dev/null || echo "NO IDE CONFIG"

# Check terminal setup (shift+enter)
cat ~/.zshrc ~/.bashrc 2>/dev/null | grep -i "claude\|CLAUDE" | head -5 || echo "NO TERMINAL SETUP"

# Check project type
ls package.json pyproject.toml Cargo.toml go.mod pom.xml build.gradle 2>/dev/null
```

Also read any found configuration files to understand their content quality.

---

## SCORING RUBRIC (100 Points Total)

### Category 1: Memory Configuration (25 points)

| Check | Points | Criteria |
|-------|--------|----------|
| Project CLAUDE.md exists | 5 | File exists at `./CLAUDE.md` or `./.claude/CLAUDE.md` |
| CLAUDE.md has build commands | 5 | Contains commands like `npm run`, `pytest`, `make`, etc. |
| CLAUDE.md has code style rules | 5 | Contains formatting, naming conventions |
| CLAUDE.md has architecture notes | 5 | Contains project structure, patterns, key files |
| Global ~/.claude/CLAUDE.md exists | 3 | Personal preferences configured |
| CLAUDE.local.md for secrets/local config | 2 | Local-only settings (sandbox URLs, test data) |

**Scoring Guide:**
- 25/25: Comprehensive memory with all sections
- 15-24: Good memory, missing some sections
- 5-14: Basic memory, needs improvement
- 0-4: No meaningful memory configuration

### Category 2: Modular Rules (15 points)

| Check | Points | Criteria |
|-------|--------|----------|
| `.claude/rules/` directory exists | 3 | Directory structure in place |
| At least 3 rule files | 4 | Modular organization of rules |
| Path-scoped rules (frontmatter) | 4 | Rules with `paths:` targeting specific files |
| Rules cover key areas | 4 | Security, testing, code-style, API, etc. |

**Scoring Guide:**
- 15/15: Well-organized modular rules with path scoping
- 8-14: Some rules, room for better organization
- 1-7: Minimal rules
- 0: No modular rules

### Category 3: Settings & Permissions (15 points)

| Check | Points | Criteria |
|-------|--------|----------|
| `.claude/settings.json` exists | 3 | Project settings configured |
| Permission allow-list defined | 4 | Specific tools pre-approved |
| Permission deny-list for secrets | 4 | `.env`, secrets blocked |
| Sandbox enabled | 2 | Safe command execution |
| Environment variables configured | 2 | `env` section for project vars |

**Scoring Guide:**
- 15/15: Comprehensive security-conscious settings
- 8-14: Good settings, some gaps
- 1-7: Basic settings
- 0: No settings configured

### Category 4: Custom Subagents (15 points)

| Check | Points | Criteria |
|-------|--------|----------|
| `.claude/agents/` directory exists | 3 | Agent directory in place |
| At least 2 custom agents | 4 | Project-specific agents |
| Agents have specific tool restrictions | 4 | `tools:` field properly configured |
| Agent descriptions are specific | 4 | Clear triggers for automatic invocation |

**Scoring Guide:**
- 15/15: Well-designed agents with proper restrictions
- 8-14: Some agents, could be more specialized
- 1-7: Minimal agents
- 0: No custom agents

### Category 5: Slash Commands (10 points)

| Check | Points | Criteria |
|-------|--------|----------|
| `.claude/commands/` directory exists | 2 | Commands directory in place |
| At least 3 custom commands | 3 | Useful project shortcuts |
| Commands have descriptions | 2 | Frontmatter with `description:` |
| Commands use arguments ($1, $ARGUMENTS) | 3 | Dynamic, reusable commands |

**Scoring Guide:**
- 10/10: Rich command library with arguments
- 5-9: Some commands
- 1-4: Minimal commands
- 0: No custom commands

### Category 6: Hooks (10 points)

| Check | Points | Criteria |
|-------|--------|----------|
| Any hooks configured | 3 | Hooks section in settings |
| PostToolUse hooks (lint/format) | 3 | Auto-formatting on file changes |
| PreToolUse hooks (validation) | 2 | Command validation |
| Stop hooks (completion check) | 2 | Verify task completion |

**Scoring Guide:**
- 10/10: Comprehensive automation with hooks
- 5-9: Some hooks
- 1-4: Minimal hooks
- 0: No hooks

### Category 7: MCP Servers (5 points)

| Check | Points | Criteria |
|-------|--------|----------|
| MCP servers configured (project `.mcp.json` OR user `~/.claude.json`) | 2 | MCP configuration present at ANY level |
| At least 1 relevant MCP server | 3 | Connected to useful external tools (GitHub, database, memory, etc.) |

**Important**: Check BOTH locations:
- Project level: `.mcp.json`
- User level: `~/.claude.json` under `mcpServers` key

**Scoring Guide:**
- 5/5: MCP servers for enhanced capabilities
- 2-4: Basic MCP setup
- 0-1: No MCP

### Category 8: Skills (5 points)

| Check | Points | Criteria |
|-------|--------|----------|
| `.claude/skills/` directory exists | 2 | Skills directory in place |
| At least 1 skill with SKILL.md | 3 | Model-invoked capabilities |

**Scoring Guide:**
- 5/5: Custom skills for automatic capabilities
- 2-4: Basic skills
- 0-1: No skills

---

### BONUS: Plugins (Up to +5 points)

| Check | Bonus | Criteria |
|-------|-------|----------|
| Plugins enabled in settings | +2 | Has `enabledPlugins` with active plugins |
| 3+ useful plugins active | +3 | Multiple plugins enhancing workflow |

**Note**: Plugins are optional but can significantly enhance productivity.
Check `~/.claude/settings.json` for `enabledPlugins` section.

### BONUS: Advanced Setup (Up to +10 points)

| Check | Bonus | Criteria |
|-------|-------|----------|
| Extended thinking configured | +2 | `MAX_THINKING_TOKENS` or `alwaysThinkingEnabled` set |
| Custom status line | +2 | `statusLine` configured in settings |
| IDE integration active | +2 | VS Code or JetBrains extension configured |
| Terminal setup (Shift+Enter) | +2 | `/terminal-setup` completed |
| Model aliases configured | +2 | Custom model aliases defined |

**Note**: These are power-user features that maximize productivity.

---

## SCORING TOTAL

**Base Score**: 100 points (Categories 1-8)
**Bonus Plugins**: Up to +5 points
**Bonus Advanced**: Up to +10 points
**Maximum Possible**: 115 points

| Score | Grade | Status |
|-------|-------|--------|
| 105-115 | S | LEGENDARY - Maximum mastery! |
| 95-104 | A+ | EXCELLENT - State of the art! |
| 85-94 | A | GREAT - Minor improvements possible |
| 75-84 | B | GOOD - Some features missing |
| 65-74 | C | FAIR - Significant gaps |
| 50-64 | D | NEEDS WORK - Many features missing |
| 0-49 | F | POOR - Basic setup required |

---

## OUTPUT FORMAT

After running the audit, provide output in this EXACT format:

```
╔══════════════════════════════════════════════════════════════════╗
║           CLAUDE CODE EXCELLENCE AUDIT REPORT                    ║
╠══════════════════════════════════════════════════════════════════╣
║  Project: [PROJECT_NAME]                                         ║
║  Date: [DATE]                                                    ║
║  Auditor: Claude Code Excellence Audit v1.0                      ║
╚══════════════════════════════════════════════════════════════════╝

┌─────────────────────────────────────────────────────────────────┐
│                    OVERALL SCORE: XX/100                        │
│                    GRADE: [A+/A/B/C/D/F]                        │
│                    STATUS: [EXCELLENT/GOOD/NEEDS WORK/POOR]     │
└─────────────────────────────────────────────────────────────────┘

CATEGORY BREAKDOWN:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Memory Configuration      [██████████░░░░░░░░░░] XX/25
2. Modular Rules            [████████░░░░░░░░░░░░] XX/15
3. Settings & Permissions   [██████████████░░░░░░] XX/15
4. Custom Subagents         [████░░░░░░░░░░░░░░░░] XX/15
5. Slash Commands           [██████░░░░░░░░░░░░░░] XX/10
6. Hooks                    [░░░░░░░░░░░░░░░░░░░░] XX/10
7. MCP Servers              [████████░░░░░░░░░░░░] XX/5
8. Skills                   [░░░░░░░░░░░░░░░░░░░░] XX/5

BONUS:
+ Plugins                   [████████████████░░░░] +X/5
+ Advanced Setup            [████████░░░░░░░░░░░░] +X/10

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

FINDINGS SUMMARY:
✅ STRENGTHS (What you're doing well)
• [List strengths]

⚠️  GAPS (Missing features)
• [List gaps]

🚨 CRITICAL ISSUES (Fix immediately)
• [List critical issues if any]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## RECOMMENDATIONS SECTION

After the score, provide detailed recommendations with READY-TO-USE CODE:

### For each gap, provide:

1. **What's missing** - Clear description
2. **Why it matters** - Impact on productivity
3. **How to fix** - Exact commands and file contents
4. **Priority** - High/Medium/Low

Example format:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
RECOMMENDATION #1: [TITLE]
Priority: HIGH | Impact: +X points
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

ISSUE: [Description of what's missing]

WHY IT MATTERS: [Impact on productivity/security/quality]

FIX:
[Exact commands to run]

[Exact file contents to create]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## TEMPLATE RECOMMENDATIONS LIBRARY

Use these templates when recommending fixes:

### Template: CLAUDE.md (Project Memory)

```markdown
# [Project Name]

## Build & Test Commands
- Build: `[command]`
- Test: `[command]`
- Lint: `[command]`
- Dev server: `[command]`

## Code Style
- [Language] style: [conventions]
- Naming: [conventions]
- File organization: [patterns]

## Architecture
- Pattern: [MVC/Clean Architecture/etc.]
- Key directories:
  - `src/` - [description]
  - `tests/` - [description]
- Important files:
  - `[file]` - [purpose]

## Project-Specific Rules
- [Rule 1]
- [Rule 2]

## Dependencies
- [Key dependency]: [what it's used for]
```

### Template: Modular Rules

```markdown
# .claude/rules/security.md
---
paths: src/**/*.ts
---

# Security Rules

- Never expose API keys or secrets in code
- Always validate user input
- Use parameterized queries for database operations
- Sanitize output to prevent XSS
```

```markdown
# .claude/rules/testing.md
---
paths: tests/**/*
---

# Testing Rules

- Every new feature needs tests
- Test file naming: `[feature].test.[ext]`
- Use descriptive test names
- Mock external services
```

### Template: Settings with Permissions

```json
{
  "permissions": {
    "allow": [
      "Bash(npm run:*)",
      "Bash(git status:*)",
      "Bash(git diff:*)",
      "Bash(git add:*)",
      "Bash(git commit:*)"
    ],
    "deny": [
      "Read(./.env)",
      "Read(./.env.*)",
      "Read(./secrets/**)",
      "Read(./**/credentials*)",
      "Bash(curl:*)"
    ]
  },
  "env": {
    "NODE_ENV": "development"
  }
}
```

### Template: Custom Subagent

```markdown
# .claude/agents/code-reviewer.md
---
name: code-reviewer
description: Reviews code for quality, security, and best practices. Use PROACTIVELY after any code changes.
tools: Read, Grep, Glob, Bash
model: inherit
---

You are a senior code reviewer. When invoked:

1. Run `git diff` to see recent changes
2. Analyze for:
   - Security vulnerabilities
   - Performance issues
   - Code quality problems
   - Missing tests

3. Provide feedback by priority:
   - CRITICAL: Must fix before merge
   - WARNING: Should fix
   - SUGGESTION: Consider improving

Include specific line references and fix examples.
```

### Template: Slash Command

```markdown
# .claude/commands/pr.md
---
description: Create a pull request with AI-generated description
allowed-tools: Bash(git:*), Bash(gh:*)
argument-hint: [target-branch]
---

## Context
- Current branch: !`git branch --show-current`
- Changes vs $1: !`git diff $1...HEAD --stat`
- Recent commits: !`git log $1..HEAD --oneline`

## Task
Create a pull request to $1 with:
1. Clear title summarizing changes
2. Description with:
   - Summary of changes
   - Testing done
   - Any breaking changes
3. Use `gh pr create`
```

### Template: Hook Configuration

```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Write|Edit",
        "hooks": [
          {
            "type": "command",
            "command": "echo 'File modified - consider running tests'",
            "timeout": 5
          }
        ]
      }
    ],
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          {
            "type": "command",
            "command": "echo 'Executing bash command...'",
            "timeout": 5
          }
        ]
      }
    ]
  }
}
```

---

## ACTION PLAN FORMAT

End with a prioritized action plan:

```
╔══════════════════════════════════════════════════════════════════╗
║                     ACTION PLAN                                   ║
║              To reach 100/100 Excellence Score                    ║
╚══════════════════════════════════════════════════════════════════╝

QUICK WINS (5 minutes each, +XX points total):
□ [Action 1] - [command to run]
□ [Action 2] - [command to run]

HIGH IMPACT (15-30 minutes each, +XX points total):
□ [Action 1] - [description]
□ [Action 2] - [description]

ADVANCED (Optional, for power users):
□ [Action 1] - [description]
□ [Action 2] - [description]

ESTIMATED TIME TO 100/100: [X] minutes
```

---

## GRADING SCALE

| Score | Grade | Status |
|-------|-------|--------|
| 90-100 | A+ | EXCELLENT - State of the art! |
| 80-89 | A | GREAT - Minor improvements possible |
| 70-79 | B | GOOD - Some features missing |
| 60-69 | C | FAIR - Significant gaps |
| 50-59 | D | NEEDS WORK - Many features missing |
| 0-49 | F | POOR - Basic setup required |

---

## BEGIN AUDIT

Now execute the audit:

1. Run all discovery commands
2. Read all found configuration files
3. Calculate scores for each category
4. Generate the full report
5. Provide specific recommendations with code
6. Create the action plan

**Start the audit now. Be thorough and helpful.**
