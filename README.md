# OpenVault

An OpenCode + Obsidian vault using the PARA organizational method.

**AI-powered second brain** for managing knowledge, projects, and ideas with local files and full control.

---

## Quick Start

1. **Open in Obsidian** - File → Open Vault → Select this folder
2. **Start OpenCode** - Run `opencode` in this directory
3. **Try a command** - `/thinking-partner 'What should I work on?'`

---

## Core Philosophy

### AI as Thinking Partner

This system treats AI as a collaborative thinking partner that:
- **Asks before answering** - Questions deepen understanding
- **Connects ideas** - Identifies patterns across notes
- **Resists rushing** - Stays in exploration mode
- **Surfaces assumptions** - Challenges implicit beliefs

### Thinking Mode vs Writing Mode

**Thinking Mode** (Research & Exploration):
- Ask questions to understand goals
- Search existing notes for context
- Make connections between ideas
- **Use when**: Exploring topics, problem-solving, brainstorming

**Writing Mode** (Content Creation):
- Generate drafts based on research
- Structure and edit content
- **Use when**: Writing documentation, articles, summaries

---

## Directory Structure (PARA)

| Folder | Purpose | Example |
|--------|---------|---------|
| `00_Inbox/` | Quick capture | Daily notes, quick thoughts |
| `01_Projects/` | Active initiatives | "Website Redesign", "Book Draft" |
| `02_Areas/` | Ongoing responsibilities | Health, Finances, Career |
| `03_Resources/` | Reference knowledge | AI Research, Book Notes |
| `04_Archive/` | Completed items | Finished projects |
| `05_Attachments/` | Media files | Images, PDFs |
| `06_Metadata/` | Templates & docs | Project templates, guides |
| `07_OLD_VAULT/` | Legacy content | Previous system migration |

### PARA Framework

**Projects** - Have deadline + specific outcome → `01_Projects/`

**Areas** - Ongoing, no end date → `02_Areas/`

**Resources** - Topics of interest → `03_Resources/`

**Archive** - Completed/inactive → `04_Archive/`

---

## OpenCode Commands

| Command | Purpose |
|---------|---------|
| `/thinking-partner` | Collaborative exploration |
| `/daily-review` | End-of-day reflection |
| `/inbox-processor` | Organize inbox (PARA triage) |
| `/research-assistant` | Deep vault search |
| `/weekly-synthesis` | Weekly pattern review |
| `/templates` | Create from templates |
| `/vault-ops` | PARA maintenance |
| `/de-ai-ify` | Remove AI patterns |
| `/log` | Quick daily capture |
| `/context` | Load code context |

**See AGENTS.md for detailed command documentation.**

---

## Daily Workflow

**Morning**:
1. Check `00_Inbox/` for yesterday's captures
2. Review today's priorities
3. Quick scan of active projects

**During Day**:
1. Capture to `00_Inbox/` quickly
2. Use `/log` for session tracking
3. Work in **thinking mode** first

**End of Day**:
1. Run `/daily-review` to capture progress
2. Plan tomorrow's top 3 priorities

---

## Weekly Workflow

**Sunday/Monday**:
1. `/weekly-synthesis` - Find patterns
2. `/inbox-processor` - Clear inbox
3. Review active projects
4. Plan week's focus

---

## Getting Started

### First Time Setup

1. **Initialize vault structure** (if needed):
   ```bash
   bash .opencode/scripts/init-vault.sh
   ```

2. **View vault stats**:
   ```bash
   bash .opencode/scripts/vault-stats.sh
   ```

3. **Migrate old content** (if applicable):
   ```bash
   bash .opencode/scripts/migrate-existing.sh
   ```

### Creating Your First Notes

```
/templates Create a daily note for today

/templates Create a project called "My First Project"

/thinking-partner I want to explore [topic]
```

---

## Documentation

- **AGENTS.md** - Complete system documentation
- **00_Inbox/README.md** - Inbox workflow
- **01_Projects/README.md** - Project lifecycle
- **02_Areas/README.md** - Area management
- **03_Resources/README.md** - Knowledge capture
- **04_Archive/README.md** - Archiving process
- **05_Attachments/README.md** - File management
- **06_Metadata/README.md** - Templates guide
- **07_OLD_VAULT/README.md** - Migration guide

---

## Tips for Success

1. **Start in thinking mode** - Resist generating content immediately
2. **Be a token maximalist** - More context = better results
3. **Save everything** - Capture chats, fragments, thoughts
4. **Trust but verify** - Always read AI-generated content
5. **Process inbox weekly** - Don't let it become a graveyard
6. **Use daily notes** - One note per day for stream of consciousness
7. **The bicycle feels wobbly at first** - Trust the process

---

## Resources

- [AGENTS.md](AGENTS.md) - Full documentation
- [Obsidian](https://obsidian.md) - Knowledge base app
- [PARA Method](https://fortelabs.com/blog/para/) - Organization system
- [OpenCode](https://opencode.ai) - AI CLI tool
- [Claudesidian](https://github.com/heyitsnoah/claudesidian) - Original inspiration

---

*Built with [OpenCode](https://opencode.ai) + [Obsidian](https://obsidian.md) using the PARA Method*
