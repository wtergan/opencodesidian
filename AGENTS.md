# OpenVault Agentic System

AI-powered knowledge management using PARA methodology with multi-agent orchestration.

---

## System Overview

This system uses **multi-agent orchestration** where:
- **Primary agent** handles direct user interaction
- **Orchestrator** routes commands to specialized subagents
- **Subagents** work in isolated contexts with quality scoring

### Architecture

```
User → Primary/Orchestrator → Subagent(s) → Quality Output
              ↓                    ↓
        Command Routing      Isolated Context
                                    ↓
                          Quality Scores (0.00-1.00)
```

---

## Agent Registry

| Agent | Mode | Purpose | Quality Dimensions |
|-------|------|---------|-------------------|
| **helm** | primary | Command router, subagent coordinator | Workflow coordination |
| **@researcher** | subagent | Vault + web research (Exa/Context7) | Coverage, Sources, Relevance |
| **@writer** | subagent | Content creation (blogs, scripts, essays) | Structure, Clarity, Grounding |
| **@editor** | subagent | Polish, de-ai-ify, refine | Polish, Logic, Consistency |
| **@extractor** | subagent | PDF/image/document → markdown | Accuracy, Completeness, Format |
| **@archivist** | subagent | PARA maintenance, archiving | Coverage, Connections, Relevance |

Every subagent returns work with 0.00-1.00 quality scores and compact summary (no JSON artifacts).

---

## Available Commands

| Command | Purpose |
|---------|---------|
| `/thinking-partner` | Socratic exploration, brainstorming |
| `/capture` | Quick inbox dump (00_Inbox/) |
| `/log` | Daily note logging (Journal/Daily/) |
| `/research` | Vault + web research (spawns @researcher) |
| `/write` | Content creation (spawns @writer) |
| `/edit` | Polish existing content (spawns @editor) |
| `/extract` | PDF/image extraction (spawns @extractor) |
| `/inbox-processor` | PARA triage (spawns @archivist) |
| `/daily-review` | End-of-day reflection (display-only synthesis) |
| `/weekly-synthesis` | Weekly pattern finding |
| `/create-command` | Create new command from template |
| `/vault-ops` | PARA maintenance help |
| `/de-ai-ify` | Remove AI patterns |
| `/context` | Load code from linked project |

---

## Core Workflows

### Daily Workflow
1. **Morning**: Check 00_Inbox/ for captures
2. **During day**: `/capture` for quick ideas, `/log` for work sessions
3. **End of day**: `/daily-review` to capture progress

### Content Creation Workflow
1. **Research**: `/research [topic]` → returns findings + sources + quality scores
2. **Draft**: `/write [brief]` → returns draft + quality scores  
3. **Polish**: `/edit [content]` → returns polished content + quality scores

### Extraction Workflow
1. **Extract**: `/extract 05_Attachments/file.pdf` → returns clean markdown
2. **Process**: Move extracted content to appropriate PARA folder

### Weekly Workflow
1. **Pattern finding**: `/weekly-synthesis`
2. **Inbox clearing**: `/inbox-processor`
3. **Project review**: Update active project statuses

---

## PARA Directory Structure

```
Vault/
├── 00_Inbox/              # Quick capture (unprocessed)
├── 01_Projects/           # Active, time-bound initiatives
├── 02_Areas/              # Ongoing responsibilities
│   └── Journal/Daily/     # Daily notes (YYYY-MM-DD.md)
├── 03_Resources/          # Reference materials
├── 04_Archive/            # Completed/inactive items
├── 05_Attachments/        # Media files
├── 06_Metadata/           # Templates & docs
│   └── Templates/
└── .opencode/             # Agent definitions
    ├── agent/             # Subagent definitions
    ├── commands/          # Slash commands
    └── skills/            # Specialized knowledge
```

### PARA Decision Framework

- **Projects (01_Projects/)**: Has deadline, specific outcome, currently active
- **Areas (02_Areas/)**: Ongoing indefinitely, requires regular attention, no end date
- **Resources (03_Resources/)**: Topics of interest, reference material, not time-bound
- **Archive (04_Archive/)**: Completed projects, inactive items, old versions

---

## Skills System

Skills provide specialized knowledge for vault operations.

### Architecture

**Subagents load skills internally** — commands should NOT pre-load skills before spawning subagents:
- Each subagent loads required skills at the start of their process
- This prevents double-loading and redundant template reads
- Keeps command files clean and focused on orchestration

### Usage by Role

| Skill | Purpose | Loaded By |
|-------|---------|-----------|
| `templates` | Note creation templates | @writer, @researcher, @extractor |
| `vault-ops` | PARA structure knowledge | @archivist, @researcher |
| `obsidian-markdown` | Obsidian formatting rules | @writer, @editor |
| `nano-banana` | Image generation/editing | Writing workflows |

---

## System Instructions

- **Skills in subagents**: Subagents load required skills internally — commands don't pre-load them
- **Subagent isolation**: Subagents work in isolated contexts and cannot spawn other agents
- **Three-tier output system**: 
  - Commands = brief descriptions (what user sees)
  - Agents = compact returns to primary (summary + scores)
  - Templates = full files written to vault
- **Quality scores**: Every subagent returns 0.00-1.00 scores (no JSON artifacts)
- **User control**: Manual progression between workflow steps (research → write → edit)
- **Agent flexibility**: Commands work with any primary agent (no `agent: helm` lock-in)
- **Thinking mode**: Start with exploration before execution for complex creative work

---

## MCP Configuration (Global)

Configure in `~/.config/opencode/opencode.json`:

```json
{
  "mcp": {
    "exa": {
      "type": "local",
      "command": ["npx", "-y", "exa-mcp-server", 
        "tools=web_search_exa,web_search_advanced_exa,get_code_context_exa,deep_search_exa,crawling_exa"],
      "environment": { "EXA_API_KEY": "${EXA_API_KEY}" },
      "enabled": true
    },
    "context7": {
      "type": "local",
      "command": ["npx", "-y", "@upstash/context7-mcp@latest"],
      "environment": {},
      "enabled": true
    }
  }
}
```

---

## File Conventions

### Naming
- **Daily notes**: `YYYY-MM-DD.md` in `02_Areas/Journal/Daily/`
- **Projects**: `project-name.md` in `01_Projects/`
- **Research**: `topic-name.md` in `03_Resources/`
- **Areas**: `area-name.md` in `02_Areas/`

### Cross-Linking (Obsidian)
- Basic: `[[note-name]]`
- With display: `[[note-name|Display Text]]`
- To heading: `[[note-name#Heading]]`
- Block ID: `[[note-name#^block-id]]`

### Frontmatter Format
All notes start with YAML frontmatter (no title section):
```yaml
---
created: YYYY-MM-DD
tags: [tag1, tag2]
status: active
---
```

---

## Philosophy

### AI as Thinking Partner
- Asks before answering
- Connects ideas across notes
- Resists rushing to solutions
- Surfaces hidden assumptions
- Dig into principples, not surface level... why does this work? what are the implications? what are the alternatives?
- Everything becomes a workflow. Seek reusable patterns, not one-off solutions

### Modes of Work
- **Thinking Mode**: Exploration, questions, connections (use `/thinking-partner`)
- **Execution Mode**: Task completion, content creation (use specific commands)

### Key Principles
1. **Local files = full control** - Your data stays yours
2. **Structure enables creativity** - PARA frees mental overhead
3. **Iteration beats perfection** - Capture now, refine later
4. **Quality over quantity** - Insight > information
5. **Be a token maximalist** - More context = better results

---

*Built with OpenCode + Obsidian using PARA methodology and multi-agent orchestration*
