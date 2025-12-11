# Claude Code Excellence Audit v1.0

> **Audit your Claude Code setup. Get a score. Reach 100/100.**

Created by **[Rom Iluz](https://github.com/romiluz13)** | AI Community Leader, Israel | MongoDB Developer Advocate

**Last Updated**: December 11, 2025 - Covers ALL Claude Code features

---

## What Is This?

A self-diagnostic tool that audits your Claude Code project setup and provides:

- **Score out of 100** (+5 bonus) with detailed breakdown
- **Gap analysis** - what you're missing
- **Ready-to-use fixes** - copy-paste solutions
- **Action plan** - prioritized steps to excellence

## Quick Start

### Option 1: Copy-Paste (Fastest)

1. Open Claude Code in your project
2. Copy the contents of [`CLAUDE-CODE-EXCELLENCE-AUDIT.md`](./CLAUDE-CODE-EXCELLENCE-AUDIT.md)
3. Paste it into Claude Code
4. Claude will audit your setup and provide recommendations

### Option 2: Install as Slash Command (Recommended)

```bash
# Create commands directory
mkdir -p ~/.claude/commands

# Download the audit command
curl -o ~/.claude/commands/audit.md https://raw.githubusercontent.com/romiluz13/claude-code-excellence-audit/main/audit.md

# Now use it in any project!
/audit
```

### Option 3: Use as Skill (Auto-Invoke)

```bash
# Create skills directory
mkdir -p ~/.claude/skills/excellence-audit

# Download the skill
curl -o ~/.claude/skills/excellence-audit/SKILL.md https://raw.githubusercontent.com/romiluz13/claude-code-excellence-audit/main/SKILL.md

# Claude will automatically use it when relevant
```

---

## What Gets Audited? (December 2025)

| Category | Points | What's Checked |
|----------|--------|----------------|
| **Memory** | 25 | CLAUDE.md files, build commands, code style, architecture |
| **Modular Rules** | 15 | `.claude/rules/*.md`, path-scoping, organization |
| **Settings** | 15 | Permissions allow/deny lists, sandbox, env vars |
| **Subagents** | 15 | Custom agents in `.claude/agents/`, tool restrictions |
| **Slash Commands** | 10 | Custom commands in `.claude/commands/`, arguments |
| **Hooks** | 10 | PreToolUse, PostToolUse, Stop hooks |
| **MCP Servers** | 5 | Project `.mcp.json` OR user-level in `~/.claude.json` |
| **Skills** | 5 | Model-invoked capabilities in `.claude/skills/` |
| **BONUS: Plugins** | +5 | Enabled plugins in settings |
| **BONUS: Advanced** | +10 | Extended thinking, status line, IDE, terminal setup, model aliases |

**Total: 100 points + 15 bonus = 115 maximum**

---

## Features Covered (As of December 2025)

### Memory System
- Project memory (`./CLAUDE.md`, `./.claude/CLAUDE.md`)
- Global memory (`~/.claude/CLAUDE.md`)
- Local memory (`./CLAUDE.local.md`)
- Memory imports (`@path/to/file` syntax)
- Enterprise policy memory

### Modular Rules
- Rule files in `.claude/rules/`
- Path-scoped rules (YAML frontmatter with `paths:`)
- Subdirectory organization
- Symlink support
- User-level rules (`~/.claude/rules/`)

### Settings & Permissions
- Permission allow/deny lists
- Sandbox configuration
- Environment variables
- Attribution settings
- Default permission modes

### Custom Subagents
- Agent definitions in `.claude/agents/`
- Tool restrictions
- Model selection
- Resumable agents

### Slash Commands
- Custom commands in `.claude/commands/`
- Frontmatter support (description, allowed-tools, argument-hint)
- Arguments (`$ARGUMENTS`, `$1`, `$2`)
- Bash execution (`!`backticks)
- File references (`@file.js`)

### Hooks
- PreToolUse, PostToolUse
- UserPromptSubmit
- Stop, SubagentStop
- SessionStart, SessionEnd
- Notification, PreCompact

### MCP Servers
- Project-level (`.mcp.json`)
- User-level (`~/.claude.json` mcpServers)
- Remote HTTP/SSE servers
- Local stdio servers

### Skills
- Model-invoked capabilities
- SKILL.md format
- Tool restrictions
- Auto-discovery via description

### Plugins
- Plugin marketplace
- Enabled/disabled plugins
- Plugin-provided commands, agents, skills

---

## Sample Output

```
╔══════════════════════════════════════════════════════════════════╗
║           CLAUDE CODE EXCELLENCE AUDIT REPORT                    ║
╚══════════════════════════════════════════════════════════════════╝

┌─────────────────────────────────────────────────────────────────┐
│                    OVERALL SCORE: 67/100                        │
│                    GRADE: C                                     │
│                    STATUS: FAIR - Significant gaps              │
└─────────────────────────────────────────────────────────────────┘

CATEGORY BREAKDOWN:
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. Memory Configuration      [██████████████░░░░░░] 18/25
2. Modular Rules            [████░░░░░░░░░░░░░░░░]  4/15
3. Settings & Permissions   [██████████████████░░] 14/15
4. Custom Subagents         [░░░░░░░░░░░░░░░░░░░░]  0/15
5. Slash Commands           [██████████░░░░░░░░░░]  5/10
6. Hooks                    [░░░░░░░░░░░░░░░░░░░░]  0/10
7. MCP Servers              [██████████░░░░░░░░░░]  5/5
8. Skills                   [░░░░░░░░░░░░░░░░░░░░]  0/5

BONUS:
+ Plugins                   [████████████████████] +5/5
```

---

## Grading Scale

| Score | Grade | Status |
|-------|-------|--------|
| 95-105 | A+ | LEGENDARY - Maximum excellence! |
| 90-94 | A+ | EXCELLENT - State of the art! |
| 80-89 | A | GREAT - Minor improvements possible |
| 70-79 | B | GOOD - Some features missing |
| 60-69 | C | FAIR - Significant gaps |
| 50-59 | D | NEEDS WORK - Many features missing |
| 0-49 | F | POOR - Basic setup required |

---

## Files in This Repo

```
claude-code-excellence-audit/
├── README.md                          # This file
├── CLAUDE-CODE-EXCELLENCE-AUDIT.md    # Main audit (copy-paste version)
├── audit.md                           # Slash command version (/audit)
├── SKILL.md                           # Auto-invoke skill version
└── examples/
    ├── perfect-setup/                 # Example 100/100 setup
    │   ├── CLAUDE.md
    │   ├── .claude/
    │   │   ├── rules/
    │   │   ├── agents/
    │   │   ├── commands/
    │   │   ├── skills/
    │   │   └── settings.json
    │   └── .mcp.json
    └── templates/
        └── QUICK-START.md             # Quick templates for fast setup
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
| Add modular rules (3 files) | +12 | 5 min |
| Add one hook | +5 | 2 min |
| Add one skill | +5 | 3 min |

**Minimum viable setup (~30 points in 5 minutes):**
1. CLAUDE.md with build commands
2. settings.json with deny list for secrets

---

## Contributing

Found a gap in the audit? Have better templates? PRs welcome!

- **Issues**: Report bugs or suggest features
- **PRs**: Improve audit criteria or add templates

---

## Related Resources

- [Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code)
- [Claude Code Memory](https://docs.anthropic.com/en/docs/claude-code/memory)
- [Claude Code Hooks](https://docs.anthropic.com/en/docs/claude-code/hooks)
- [Claude Code MCP](https://docs.anthropic.com/en/docs/claude-code/mcp)

---

## License

MIT - Share freely with your team and community.

---

**Made with AI Excellence in mind.**

*If this helped you, give it a star and share with your team!*
