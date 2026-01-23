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
└── Templates/        # Note templates
    ├── Daily Note Template.md
    ├── Project Template.md
    ├── Research Note Template.md
    ├── Area Template.md
    └── Weekly Synthesis Template.md
```

## Using Templates

### Manual
1. Copy template content
2. Create new note in appropriate PARA folder
3. Paste and fill in

### With OpenCode
```
Create a new project using the Project Template.
Name it [Project Name] and put it in 01_Projects.
```

### With Obsidian Templates Plugin
1. Go to Settings → Community Plugins → Templates
2. Set template folder to `06_Metadata/Templates`
3. Use `Ctrl/Cmd + T` to insert a template

## Available Templates

### Daily Note Template
Quick daily captures with sections for:
- Capture (quick thoughts)
- Questions (curiosities)
- Insights (learnings)
- Connections (links)
- For Tomorrow (follow-ups)

### Project Template
Full project structure with:
- Project overview and dates
- Objectives checklist
- Context and success criteria
- Progress log
- Next actions

### Research Note Template
Research capture format with:
- Source and date
- Summary and key insights
- Notable quotes
- Questions raised
- Connections to other notes

### Area Template
Ongoing responsibility tracking:
- Overview and status
- Key metrics/goals
- Active commitments
- Routines
- Review notes

### Weekly Synthesis Template
Weekly review format:
- Week at a glance
- Key themes
- Progress by project
- Energy audit
- Next week intentions

## OpenCode Prompts

### Template Usage
```
Show me available templates in 06_Metadata/Templates.
Create a new [type] note using the appropriate template.
```

### Quick Project Creation
```
Create a new project called "[name]" using the Project Template.
```

### Documentation
```
Check 06_Metadata/Reference for documentation on [topic].
```

## Best Practices

- **Document as you go** - Capture workflows while fresh
- **Iterate templates** - Improve based on usage
- **Date everything** - Context matters
- **Keep it simple** - Complex systems break
