# Claude Code Excellence Audit v1.0

[![GitHub stars](https://img.shields.io/github/stars/romiluz13/claude-code-excellence-audit?style=social)](https://github.com/romiluz13/claude-code-excellence-audit)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Updated](https://img.shields.io/badge/Updated-December%202025-blue)](https://github.com/romiluz13/claude-code-excellence-audit)
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Certified-purple)](https://code.claude.com)

> **Audit your Claude Code setup. Get a score. Reach 100/100.**

Created by **[Rom Iluz](https://github.com/romiluz13)**

**Last Updated**: December 11, 2025 - Covers ALL Claude Code features

---

## What Is This?

A self-diagnostic tool that audits your Claude Code project setup and provides:

- **Score out of 100** with detailed breakdown
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
| **Settings** | 15 | Permissions allow/deny lists, sandbox, env vars, attribution |
| **Subagents** | 15 | Custom agents with `permissionMode`, `skills`, proactive descriptions |
| **Slash Commands** | 10 | Custom commands with arguments, `model` override |
| **Hooks** | 10 | All hook types including SessionStart, Stop, prompt-based hooks |
| **MCP Servers** | 5 | Project `.mcp.json` OR user-level in `~/.claude.json` |
| **Skills** | 5 | Model-invoked capabilities with `allowed-tools` restriction |

**Total: 100 points maximum**

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
- Tool restrictions (`tools:` field)
- Model selection (`model:` field)
- Permission modes (`permissionMode:` field)
- Skills auto-loading (`skills:` field)
- Resumable agents (via `agentId`)
- Built-in subagents: `general-purpose`, `Plan`, `Explore` (Haiku)

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
- `extraKnownMarketplaces` for team distribution

### Output Styles (NEW December 2025)
- Built-in: `Default`, `Explanatory`, `Learning`
- Custom styles in `.claude/output-styles/`
- `keep-coding-instructions` option
- Non-coding workflows support

### Checkpointing (NEW December 2025)
- Automatic edit tracking
- `/rewind` command for quick recovery
- Conversation and code restoration
- Session-level safety net

### Headless Mode (NEW December 2025)
- `claude -p` for programmatic execution
- `--output-format json|stream-json`
- `--allowedTools` and `--disallowedTools`
- `--mcp-config` for MCP server loading
- Session management (`--resume`, `--continue`)

### Status Line (NEW December 2025)
- Custom script-based status lines
- JSON input with model, cost, context info
- Git branch integration
- Token usage tracking

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

1. Memory Configuration      [██████████████████░░] 23/25
2. Modular Rules            [██████████░░░░░░░░░░]  8/15
3. Settings & Permissions   [████████████████████] 15/15
4. Custom Subagents         [██████████░░░░░░░░░░]  8/15
5. Slash Commands           [████████░░░░░░░░░░░░]  4/10
6. Hooks                    [░░░░░░░░░░░░░░░░░░░░]  0/10
7. MCP Servers              [████████████████████]  5/5
8. Skills                   [████████░░░░░░░░░░░░]  4/5

```

---

## Grading Scale

| Score | Grade | Status |
|-------|-------|--------|
| 95-100 | A+ | EXCELLENT - State of the art! |
| 85-94 | A | GREAT - Minor improvements possible |
| 75-84 | B | GOOD - Some features missing |
| 65-74 | C | FAIR - Significant gaps |
| 50-64 | D | NEEDS WORK - Many features missing |
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
    ├── perfect-setup/                 # Example A+ setup (project-level)
    │   ├── CLAUDE.md
    │   ├── .claude/
    │   │   ├── rules/
    │   │   ├── agents/
    │   │   ├── commands/
    │   │   ├── skills/
    │   │   ├── scripts/               # Custom scripts (statusline, etc.)
    │   │   ├── output-styles/         # Custom output styles
    │   │   └── settings.json          # Includes hooks, statusLine, attribution
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

## Share Your Score!

Got your score? Share it with the community!

### LinkedIn Post Template:
```
Just audited my Claude Code setup with the Excellence Audit!

My Score: XX/100 | Grade: [GRADE]

Are you maximizing your Claude Code potential?
Try it yourself: github.com/romiluz13/claude-code-excellence-audit

#ClaudeCode #AI #DeveloperTools #ClaudeCodeAudit
```

### Twitter/X Template:
```
My Claude Code Excellence Score: XX/100 [GRADE]

How do you score? /audit your setup now:
github.com/romiluz13/claude-code-excellence-audit

#ClaudeCode #AI
```

### Achievement Badges
- **A+ (95-100)**: Claude Code Master
- **A (85-94)**: Excellence Achiever
- **B (75-84)**: Advanced User

**Tag me on [LinkedIn](https://www.linkedin.com/in/rom-iluz/) when you share your score!**

---

## Hall of Fame - Perfect Scores

Share your 100/100 score and get featured here!

| Developer | Score | Project | Link |
|-----------|-------|---------|------|
| @romiluz13 | 95/100 | claude-code-excellence-audit | [Example](./examples/perfect-setup/) |
| *Your name here* | | | |

---

## Contributing

Found a gap in the audit? Have better templates? PRs welcome!

- **Issues**: Report bugs or suggest features
- **PRs**: Improve audit criteria or add templates

---

## Related Resources

- [Claude Code Documentation](https://code.claude.com/docs/en/overview)
- [Memory Management](https://code.claude.com/docs/en/memory)
- [Hooks Reference](https://code.claude.com/docs/en/hooks)
- [MCP Integration](https://code.claude.com/docs/en/mcp)
- [Subagents](https://code.claude.com/docs/en/subagents)
- [Agent Skills](https://code.claude.com/docs/en/skills)
- [Plugins](https://code.claude.com/docs/en/plugins)
- [Output Styles](https://code.claude.com/docs/en/output-styles)
- [Settings Reference](https://code.claude.com/docs/en/settings)
- [Headless Mode](https://code.claude.com/docs/en/headless)

---

## License

MIT - Share freely with your team and community.

---

**Made with AI Excellence in mind.**

*If this helped you, give it a star and share with your team!*
