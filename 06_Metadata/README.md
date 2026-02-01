# ⚙️ Metadata

Vault configuration, documentation, and organizational tools.

## Purpose

The metadata folder contains:
- Documentation about the vault
- Templates for consistent note creation
- Reference guides and how-tos
- Workflow documentation

## Structure

```
06_Metadata/
├── Reference/        # Guides and documentation
│   ├── OpenCode Prompts.md
│   └── ...
└── Templates/        # Note templates
    ├── Daily Note Template.md
    ├── Project Template.md
    ├── Research Note Template.md
    ├── Area Template.md
    └── Weekly Synthesis Template.md
```

## Templates

### Available Templates

| Template | Purpose | Location |
|----------|---------|----------|
| **Daily Note** | Quick daily captures | `Templates/Daily Note Template.md` |
| **Project** | Active initiatives | `Templates/Project Template.md` |
| **Research Note** | Knowledge capture | `Templates/Research Note Template.md` |
| **Area** | Ongoing responsibilities | `Templates/Area Template.md` |
| **Weekly Synthesis** | Weekly reviews | `Templates/Weekly Synthesis Template.md` |

### Using Templates

#### With OpenCode (Recommended)

**Create from template**:
```
/templates Create a new project called "[Name]"
/templates Create a daily note for today
/templates Create a research note about [Topic]
```

**Specify location**:
```
Create a new project called "Website Redesign" and put it in 01_Projects
```

#### Manual (Obsidian)

1. Go to `06_Metadata/Templates/`
2. Copy desired template content
3. Create new note in appropriate PARA folder
4. Paste and customize

#### With Obsidian Templates Plugin

1. Go to Settings → Community Plugins → Templates
2. Set template folder to `06_Metadata/Templates`
3. Use `Ctrl/Cmd + T` to insert template

### Template Placeholders

Templates use these placeholders:
- `{{date}}` or `{{date:YYYY-MM-DD}}` - Current date
- `{{title}}` - Note title
- `{{time}}` - Current time

**Note**: These work with Obsidian Templates plugin. OpenCode replaces them automatically.

## Template Details

### Daily Note Template

Quick daily captures with sections for:
- **Capture** - Quick thoughts throughout the day
- **Questions** - Curiosities and wonderings
- **Insights** - Learnings and realizations
- **Connections** - Links to other notes
- **For Tomorrow** - Follow-ups needed

**Usage**:
```
/log Starting the new feature implementation
```
This auto-creates a daily note if needed and logs the entry.

### Project Template

Full project structure with:
- **Project Overview** - Dates and status
- **Objectives** - Checkbox list of goals
- **Context** - Why this project exists
- **Success Criteria** - How to know it's done
- **Key Resources** - Links to relevant notes
- **Progress Log** - Timeline of work done
- **Open Questions** - Things to figure out
- **Next Actions** - Immediate next steps

**Special Fields**:
```yaml
---
created: YYYY-MM-DD
status: active
tags: [project]
code_path: /path/to/code        # Link to codebase
repo_url: https://github.com/... # Link to repository
---
```

### Research Note Template

Research capture format with:
- **Summary** - Key points (2-3 sentences)
- **Key Insights** - Bullet list of learnings
- **Notable Quotes** - Memorable passages
- **Questions Raised** - Curiosities sparked
- **Connections** - Links to other notes
- **Action Items** - Follow-ups needed

### Area Template

Ongoing responsibility tracking:
- **Overview** - What this area is
- **Current Status** - How things are going
- **Key Metrics/Goals** - Standards to uphold
- **Active Commitments** - Ongoing promises
- **Routines** - Regular activities
- **Resources** - Tools and references
- **Review Notes** - Periodic assessments

### Weekly Synthesis Template

Weekly review format:
- **Week at a Glance** - Stats and accomplishments
- **Key Themes** - Patterns that emerged
- **Major Insights** - Breakthrough realizations
- **Progress by Project** - Status updates
- **Questions Emerged** - New curiosities
- **Energy Audit** - What gave/drained energy
- **Connections Made** - New links discovered
- **Next Week's Intentions** - Focus areas
- **To Process** - Items needing attention

## Reference Materials

### OpenCode Prompts

Located in `06_Metadata/Reference/OpenCode Prompts.md`

Contains:
- Common OpenCode commands
- Workflow shortcuts
- Quick reference for daily use

## Customizing Templates

### Creating New Templates

1. Create new file in `06_Metadata/Templates/`
2. Name it `[Type] Template.md`
3. Include:
   - Frontmatter section
   - Clear section headers
   - Placeholder text in comments (`<!-- -->`)
   - Links section for connections

**Example structure**:
```markdown
---
description: Template description
---

# {{title}}

---
created: {{date:YYYY-MM-DD}}
tags: []
---

## Section 1
<!-- Instructions for this section -->

## Section 2
<!-- More instructions -->

## Related
- Projects: 
- Resources: 
- Notes: 
```

### Iterating Existing Templates

As you use templates:
1. Note what works and what doesn't
2. Adjust section order
3. Add/remove sections based on need
4. Update placeholder text
5. Share improvements

## Best Practices

- **Document as you go** - Capture workflows while fresh
- **Iterate templates** - Improve based on actual usage
- **Date everything** - Context matters for future you
- **Keep it simple** - Complex systems break
- **Use consistently** - Templates only help if you use them

## Workflow Integration

### Starting Work

1. **New project?** → Use Project Template
2. **Research?** → Use Research Note Template
3. **New day?** → Daily Note auto-created with `/log`
4. **Weekly review?** → Weekly Synthesis Template

### During Work

- Reference templates for structure
- Log to daily notes with `/log`
- Create research notes as you learn

### End of Work

- Review filled templates
- Archive completed projects
- Update area notes

---

*Templates enable consistency. Customize them to fit your workflow.*
