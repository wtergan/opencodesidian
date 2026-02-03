# OpenVault

AI-powered knowledge management using PARA methodology + multi-agent orchestration.

[![OpenCode](https://img.shields.io/badge/OpenCode-Ready-blue)](https://opencode.ai)
[![Obsidian](https://img.shields.io/badge/Obsidian-Compatible-purple)](https://obsidian.md)
[![PARA](https://img.shields.io/badge/PARA-Method-green)]()

---

## Quick Start

1. **Open in Obsidian**: File → Open Vault → Select this folder
2. **Start OpenCode**: Run `opencode` in this directory  
3. **Try it**: `/thinking-partner "Explore my goals for this week"`

---

## What is OpenVault?

OpenVault combines:
- **PARA Method**: Projects, Areas, Resources, Archive organization
- **Multi-Agent System**: Helm coordinates specialized subagents
- **Local-First**: Your data stays in markdown files you control

### The Helm

Your primary agent "Helm" coordinates specialist subagents:
- **@researcher**: Vault + web research (Exa, Context7)
- **@writer**: Content creation (blogs, scripts, essays)
- **@editor**: Polish, de-ai-ify, refine
- **@extractor**: PDF/image → markdown
- **@archivist**: PARA maintenance

Each subagent returns 0.00-1.00 quality scores and compact summaries (no JSON artifacts).

---

## PARA Structure

| Folder | Purpose |
|--------|---------|
| `00_Inbox/` | Quick capture (unprocessed) |
| `01_Projects/` | Active initiatives |
| `02_Areas/` | Ongoing responsibilities |
| `03_Resources/` | Reference knowledge |
| `04_Archive/` | Completed items |
| `05_Attachments/` | Media files |
| `06_Metadata/` | Templates & config |

---

## Core Commands

| Command | Purpose | Flow |
|---------|---------|------|
| `/capture` | Quick inbox dump | Primary agent |
| `/log` | Daily note logging | Primary agent |
| `/research` | Vault + web research | Spawns @researcher |
| `/write` | Content creation | Spawns @writer |
| `/edit` | Polish content | Spawns @editor |
| `/extract` | PDF/image extraction | Spawns @extractor |
| `/inbox-processor` | PARA triage | Spawns @archivist |
| `/daily-review` | End-of-day reflection | Display-only synthesis |
| `/weekly-synthesis` | Weekly patterns | Creates weekly note |
| `/create-command` | Create new command | Uses command-template |

---

## MCP Configuration

Configure in `~/.config/opencode/opencode.json`:

```json
{
  "mcp": {
    "exa": {
      "command": ["npx", "-y", "exa-mcp-server", 
        "tools=web_search_exa,web_search_advanced_exa,get_code_context_exa,deep_search_exa,crawling_exa"],
      "environment": { "EXA_API_KEY": "your-key" }
    },
    "context7": {
      "command": ["npx", "-y", "@upstash/context7-mcp@latest"]
    }
  }
}
```

---

## Daily Workflow

**Morning**: Check Inbox, review priorities
**Day**: `/capture` for ideas, `/log` for work sessions
**Evening**: `/daily-review` to capture progress

---

## Weekly Workflow

**Sunday/Monday**:
1. `/weekly-synthesis` - Find patterns
2. `/inbox-processor` - Clear inbox
3. Review active projects

---

## Key Features

- **Quality Scoring**: Every subagent returns 0.00-1.00 scores
- **Isolated Contexts**: Subagents don't pollute main context
- **Obsidian-Native**: WikiLinks, callouts, frontmatter-first
- **Template-Driven**: All outputs use standardized templates
- **User Control**: Manual progression between workflow steps

---

## Philosophy

1. **Go fundamental**: Dig into principles, not surface tools
2. **First-party sources**: Your vault first, external second
3. **Systematic thinking**: Reusable patterns over one-offs
4. **Anti-fragile**: Multiple approaches, keep options open

---

## Documentation

- **AGENTS.md**: Full system reference (updated for v2.0)
- **.opencode/agent/**: Agent definitions (no temperature, no JSON)
- **.opencode/commands/**: Slash commands (flexible primary agent)
- **.opencode/skills/**: Specialized knowledge
- **06_Metadata/Templates/**: Note templates (lowercase-dash format)

---

## Resources

- [AGENTS.md](AGENTS.md) - System documentation
- [PARA Method](https://fortelabs.com/blog/para/) - Organization system
- [OpenCode](https://opencode.ai) - AI CLI tool
- [Obsidian](https://obsidian.md) - Knowledge base app

---

*Built with OpenCode + Obsidian using PARA methodology*
