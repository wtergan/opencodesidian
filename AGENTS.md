# OpenVault: OpenCode + Obsidian Knowledge System

A comprehensive AI-powered second brain using the PARA organizational method with OpenCode CLI integration.

---

## Quick Start

```bash
# 1. Open vault in Obsidian
# File → Open Vault → Select this folder

# 2. Start OpenCode in vault directory
opencode

# 3. Try a command
/thinking-partner "What should I work on?"
```

---

## Core Philosophy

### AI as Thinking Partner, Not Just Writing Assistant

This system treats AI as a collaborative thinking partner that:
- **Asks before answering** - Questions help clarify and deepen understanding
- **Connects ideas** - Identifies patterns across your notes
- **Resists rushing** - Stays in exploration mode until ready
- **Surfaces assumptions** - Gently challenges implicit beliefs

### Thinking Mode vs Writing Mode

**Thinking Mode** (Research & Exploration):
- Start with questions to understand your goals
- Search existing notes for relevant context
- Make connections between ideas
- Maintain a log of insights and progress
- **Use when**: Exploring new topics, problem-solving, brainstorming

**Writing Mode** (Content Creation):
- Generate drafts based on research
- Structure and edit content
- Create final deliverables
- **Use when**: Writing documentation, articles, project summaries

### Key Principles

1. **Local files = full control** - Your data stays yours
2. **Structure enables creativity** - PARA frees your mind from organization
3. **Iteration beats perfection** - Capture now, refine later
4. **The goal is insight, not just information** - Quality over quantity
5. **Be a token maximalist** - More context = better results

---

## Directory Structure (PARA Method)

| Folder | Purpose | Example Contents |
|--------|---------|------------------|
| `00_Inbox/` | Quick capture, unprocessed items | Daily notes, quick thoughts, links to process |
| `01_Projects/` | Active, time-bound initiatives | "Q4 Marketing Campaign", "Book Draft" |
| `02_Areas/` | Ongoing responsibilities (no end date) | Health, Finances, Career, Relationships |
| `03_Resources/` | Reference materials & knowledge | AI Research, Writing Tips, Book Notes |
| `04_Archive/` | Completed or inactive items | Finished projects, old notes |
| `05_Attachments/` | Images, PDFs, media files | Screenshots, documents, diagrams |
| `06_Metadata/` | Templates & documentation | Note templates, reference guides |
| `07_OLD_VAULT/` | Migrated content from previous system | Legacy notes awaiting migration |

### PARA Decision Framework

**Projects** (01_Projects/)
- Has a **deadline** or target completion date
- Has a **specific outcome** or deliverable
- Requires multiple steps to complete
- Is currently active (not someday/maybe)
- **Examples**: "Website Redesign", "Conference Talk Prep", "Book Chapter"

**Areas** (02_Areas/)
- **No end date** - ongoing indefinitely
- Requires **regular attention** to maintain
- Has standards or metrics you want to uphold
- Part of your life/work you're committed to
- **Examples**: "Health", "Finances", "Career Development", "Relationships"

**Resources** (03_Resources/)
- **Topics of interest** regardless of current projects
- **Reference material** you might need later
- **Knowledge** you want to preserve
- Not tied to a specific timeline
- **Examples**: "AI Research", "Programming Patterns", "Recipes"

**Archive** (04_Archive/)
- **Completed projects** with their outputs
- **Inactive items** no longer relevant to current work
- **Old versions** of active documents
- Preserved for future reference and learning

---

## OpenCode Commands

### Available Commands

| Command | Description | Primary Agent |
|---------|-------------|---------------|
| `/thinking-partner` | Socratic exploration, problem-solving, brainstorming | Thinking Partner |
| `/daily-review` | End-of-day reflection and planning | Reviewer |
| `/inbox-processor` | Triage inbox items using PARA method | Inbox Processor |
| `/research-assistant` | Deep vault search, synthesis, gap analysis | Research Assistant |
| `/weekly-synthesis` | Weekly pattern finding and theme emergence | Synthesis Engine |
| `/templates` | Creating new notes using standardized PARA templates | Template Scaffolder |
| `/vault-ops` | PARA structure maintenance and organization | Vault Architect |
| `/de-ai-ify` | Remove AI patterns from text | De-AI-ifier |
| `/create-command` | Create new custom commands | - |
| `/context` | Load code context from linked project | - |
| `/log` | Log thought/task to today's daily note | - |

### Command Details

#### `/thinking-partner` - Collaborative Exploration

**When to use**: Starting new projects, exploring complex problems, brainstorming

**Workflow**:
1. Start by understanding the topic or challenge
2. Search the vault for relevant existing notes
3. Ask 3-5 clarifying questions
4. Track insights and connections as conversation develops
5. Periodically summarize what's emerging

**Example usage**:
```
/thinking-partner I'm considering a career change into AI engineering
/thinking-partner Help me explore the architecture for a new feature
```

**Key Prompts You'll See**:
- "What's behind that thought?"
- "How does this connect to [other concept]?"
- "What would the opposite look like?"
- "What's the real challenge here?"

---

#### `/daily-review` - End-of-Day Reflection

**When to use**: End of workday, before sleep, weekly check-ins

**Process**:
1. **Today's Activity** - Find all notes modified today
2. **Progress Assessment** - What was accomplished? What got stuck?
3. **Capture Insights** - Key learnings, new connections
4. **Tomorrow's Setup** - Top 3 priorities, open loops

**Output**: Creates/updates daily note in `02_Areas/Journal/Daily/`

**Sections captured**:
- ✓ Accomplished
- Progress Made (by project/area)
- Insights
- Blocked/Stuck
- Discovered Questions
- Tomorrow's Focus
- Open Loops

**Example usage**:
```
/daily-review
```

---

#### `/inbox-processor` - PARA Triage

**When to use**: Weekly (or when inbox feels full), processing captured items

**Process**:
1. **Scan the Inbox** - List all files in `00_Inbox/`
2. **Analyze Each Item** - Read content, identify type
3. **Categorize** - Suggest PARA destination with reasoning
4. **Identify Patterns** - Common themes, notes to combine, missing connections

**Categorization Rules**:
- **→ 01_Projects**: Has deadline, specific outcome
- **→ 02_Areas**: Ongoing responsibility, no end date
- **→ 03_Resources**: Reference material, knowledge
- **→ 04_Archive**: Old/completed, no longer active
- **→ Delete**: No value, redundant, temporary

**Example usage**:
```
/inbox-processor
```

---

#### `/research-assistant` - Deep Knowledge Search

**When to use**: Starting research on a topic, finding connections, gap analysis

**Process**:
1. **Initial Search** - Search entire vault for topic
2. **Deep Dive** - Read relevant notes, extract insights, identify contradictions
3. **Synthesis** - Summarize findings, highlight patterns, suggest next steps

**Output Structure**:
- Existing Knowledge in vault
- Key Themes with supporting notes
- Contradictions/Tensions
- Gaps (what's missing)
- Connections to related topics
- Recommended Next Steps

**Example usage**:
```
/research-assistant Graph databases
/research-assistant How do I currently manage projects?
```

---

#### `/weekly-synthesis` - Pattern Finding

**When to use**: End of week, Sunday evening, beginning of new week

**Process**:
1. **Gather Week's Work** - All notes created/modified this week
2. **Identify Patterns** - Recurring themes, breakthroughs, energy patterns
3. **Synthesize Learning** - How thinking evolved, connections discovered
4. **Assess Progress** - Projects advanced, areas maintained

**Output**: Weekly synthesis note with:
- Week at a Glance (notes count, active projects)
- Key Themes (with contexts and next actions)
- Major Insights
- Progress by Project
- Questions Emerged
- Energy Audit (what gave/drained energy)
- Connections Made
- Next Week's Intentions

**Example usage**:
```
/weekly-synthesis
```

---

#### `/templates` - Note Creation

**When to use**: Creating new notes, ensuring consistency

**Available Templates**:
- **Daily Note** - Quick daily captures
- **Project** - New projects with objectives, progress log
- **Research Note** - Research with source, insights, connections
- **Area** - Ongoing responsibilities with metrics
- **Weekly Synthesis** - Weekly review format

**Example usage**:
```
/templates Create a new project called "Website Redesign"
/templates Create a daily note for today
```

---

#### `/vault-ops` - PARA Maintenance

**When to use**: Reorganizing, understanding structure, file operations

**Capabilities**:
- Explain PARA structure and categorization
- Help organize content
- Understand file naming conventions
- Guide cross-linking practices

**Example usage**:
```
/vault-ops How should I organize my career notes?
/vault-ops Where should I put this learning resource?
```

---

#### `/de-ai-ify` - Humanize Text

**When to use**: Editing AI-generated content, removing robotic patterns

**Removes**:
- Overused transitions ("Moreover", "Furthermore")
- AI clichés ("In today's fast-paced world")
- Hedging language ("It's important to note")
- Corporate buzzwords ("utilize", "leverage", "synergy")
- Robotic patterns (always 3 examples, parallel structures)

**Adds**:
- Varied sentence lengths
- Conversational tone
- Direct statements
- Personal perspective

**Example usage**:
```
/de-ai-ify /path/to/file.md
/de-ai-ify [paste text here]
```

---

#### `/log` - Quick Daily Capture

**When to use**: Throughout the day, quick thoughts, session tracking

**Process**:
1. Identifies today's date
2. Finds/creates daily note in `02_Areas/Journal/Daily/`
3. Appends timestamped entry under `## Capture`

**Example usage**:
```
/log Starting the authentication feature implementation
/log Idea: use a graph database for the knowledge map
/log Meeting with team - decided on API approach
```

---

#### `/context` - Code Context Bridge

**When to use**: Working on projects linked to code repositories

**Requirements**: Project note must have `code_path` in frontmatter

**Process**:
1. Reads project note to find `code_path`
2. Analyzes codebase (files, git status, dependencies)
3. Reports findings to ground conversation

**Example usage**:
```
/context 01_Projects/my-project.md
```

---

## Skills System

Skills provide deep operational knowledge for specific domains:

### Available Skills

| Skill | Purpose | Load With |
|-------|---------|-----------|
| `vault-ops` | PARA structure, file conventions, organization | `Load skill: vault-ops` |
| `templates` | Note templates and creation workflows | `Load skill: templates` |

### Loading Skills

```
Load skill: vault-ops
Load skill: templates
```

Or reference in conversation:
```
Using the vault-ops skill, help me organize my notes...
```

---

## Workflows

### Daily Workflow

**Morning**:
1. Check `00_Inbox/` for captures from yesterday
2. Review today's priorities from yesterday's daily note
3. Quick scan of active projects

**During Day**:
1. Capture to `00_Inbox/` quickly (don't organize yet)
2. Use `/log` for session tracking
3. Work in thinking mode first, writing mode second

**End of Day**:
1. Run `/daily-review` to capture progress
2. Plan tomorrow's top 3 priorities
3. Note any open loops

### Weekly Workflow

**Sunday Evening or Monday Morning**:
1. Run `/weekly-synthesis` for pattern finding
2. Run `/inbox-processor` to clear inbox
3. Review active projects, update status
4. Plan week's focus areas

### Project Lifecycle Workflow

**Starting**:
1. Use `/templates` to create project note
2. Define objectives and success criteria
3. Use `/thinking-partner` to explore approach

**Active**:
1. Daily progress logging
2. Weekly status updates
3. Resource gathering to `03_Resources/`

**Completing**:
1. Add completion notes and outcomes
2. Extract reusable learnings to `03_Resources/`
3. Move to `04_Archive/Projects/`
4. Update any related active notes

### Inbox Processing Workflow

**Trigger**: When inbox > 10 items or weekly review

1. Run `/inbox-processor`
2. Review each item's suggested destination
3. Move files to appropriate PARA folder
4. Delete or archive what's no longer relevant
5. Combine related notes when appropriate

---

## Best Practices

### From Experience

1. **Start in thinking mode** - Resist urge to generate content immediately
2. **Be a token maximalist** - More context = better results. Give AI your full context
3. **Save everything** - Capture chats, fragments, partial thoughts
4. **Trust but verify** - Always read AI-generated content
5. **Break your flow deliberately** - AI helps you resume easily, so interrupting is okay
6. **Process inbox weekly** - Don't let it become a graveyard
7. **Date everything** - Context matters for future you
8. **Keep it simple** - Complex systems break

### File Naming

- Use lowercase with hyphens: `my-project-name.md`
- Projects: `project-name.md`
- Daily notes: `YYYY-MM-DD.md`
- Research: `topic-name.md`
- Prefix for quick ID: `screenshot-`, `diagram-`, `doc-`

### Cross-Linking

Use Obsidian wiki-links:
- Basic: `[[note-name]]`
- With display text: `[[note-name|Display Text]]`
- To heading: `[[note-name#Heading]]`

### Frontmatter Standards

```yaml
---
created: YYYY-MM-DD
tags: [tag1, tag2]
status: active/completed/archived
---
```

---

## OpenCode vs Claude Code

Understanding the differences between OpenCode (what you're using) and Claude Code (the original inspiration):

| Feature | Claude Code | OpenCode |
|---------|-------------|----------|
| **Configuration** | `.claude/CLAUDE.md` | `.opencode/opencode.json` + `AGENTS.md` |
| **Knowledge Modules** | "Agents" in `.claude/agents/` | "Skills" in `.opencode/skills/` |
| **Command Format** | Same: `/command-name` | Same: `/command-name` |
| **Sessions** | Persistent with resume capability | Session-based |
| **MCP Support** | Yes | Yes (via `opencode.json`) |
| **Custom Commands** | Yes, via `.claude/commands/` | Yes, via `.opencode/commands/` |

**Key Points**:
- Both use markdown files with YAML frontmatter for commands
- Both support MCP integrations (Gemini Vision, Firecrawl)
- OpenCode uses "skills" where Claude Code uses "agents" - same concept, different name
- Your `.opencode/opencode.json` configures MCP servers and permissions

---

## Helper Scripts

Located in `.opencode/scripts/`:

```bash
# View vault statistics
bash .opencode/scripts/vault-stats.sh

# Migration guidance for 07_OLD_VAULT
bash .opencode/scripts/migrate-existing.sh

# Initialize PARA structure (if starting fresh)
bash .opencode/scripts/init-vault.sh
```

---

## MCP Integrations (Optional)

Configure in `.opencode/opencode.json`:

### Gemini Vision
- **Purpose**: Image/document analysis
- **Setup**: Requires `GEMINI_API_KEY`
- **Use**: Direct image analysis without describing them

### Firecrawl
- **Purpose**: Web scraping and research
- **Setup**: Requires `FIRECRAWL_API_KEY`
- **Use**: Save full web content to vault

---

## Migration from 07_OLD_VAULT

If you have content in `07_OLD_VAULT/` from a previous system:

### Suggested Mapping

| Old Location | PARA Destination |
|--------------|------------------|
| `notes/` | `03_Resources/` |
| `projects/` (active) | `01_Projects/` |
| `projects/` (done) | `04_Archive/Projects/` |
| `journal/` | `02_Areas/Journal/` |
| `ideas/` | `00_Inbox/` (for processing) |
| `memories/` | `03_Resources/Memory/` |
| `todos/` | Integrate with `01_Projects/` |

### Migration Options

1. **Intelligent (Recommended)**:
   ```
   Help me migrate my old notes from 07_OLD_VAULT to PARA
   ```

2. **Guided**:
   ```bash
   bash .opencode/scripts/migrate-existing.sh
   ```

3. **Manual**: Review and move files individually

---

## Troubleshooting

### OpenCode can't find notes
- Ensure you're running from vault root directory
- Check file permissions
- Verify `.md` extension on markdown files

### Commands not working
- Check `.opencode/commands/` exists
- Verify command files have proper frontmatter
- Ensure OpenCode is started in vault directory

### Inbox growing too large
- Run `/inbox-processor` weekly
- Don't aim for perfection - "good enough" is fine
- Some items legitimately stay in inbox (daily notes)

### Attachment management
- Drop files to `05_Attachments/Unprocessed/`
- Move to `Organized/` when linked in notes
- Use prefixes for quick identification

---

## Tips for Success

1. **The bicycle feels wobbly at first** - Trust the process, it gets natural
2. **Capture first, organize later** - Don't slow down to categorize
3. **Use daily notes** - One note per day for stream of consciousness
4. **Don't let inbox pile up** - Process at least weekly
5. **Iterate your templates** - Improve based on actual usage
6. **Document as you go** - Capture workflows while fresh
7. **Review regularly** - Weekly synthesis is your friend

---

## Resources

- [Obsidian Documentation](https://help.obsidian.md)
- [PARA Method](https://fortelabs.com/blog/para/)
- [OpenCode Documentation](https://opencode.ai)
- [Claudesidian Inspiration](https://github.com/heyitsnoah/claudesidian)

---

*Built with [OpenCode](https://opencode.ai) + [Obsidian](https://obsidian.md) using the PARA Method*
