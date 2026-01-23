---
name: templates
description: Note templates for consistent vault structure
---

# Templates

This skill provides access to standardized note templates for the vault.

## Available Templates

### 1. Daily Note Template
**Location**: `06_Metadata/Templates/Daily Note Template.md`
**Usage**: Quick daily captures with sections for thoughts, questions, insights, and tomorrow's focus.

### 2. Project Template
**Location**: `06_Metadata/Templates/Project Template.md`
**Usage**: New projects with objectives, context, success criteria, progress log, and next actions.

### 3. Research Note Template
**Location**: `06_Metadata/Templates/Research Note Template.md`
**Usage**: Capturing research with source, key insights, quotes, questions, and connections.

### 4. Area Template
**Location**: `06_Metadata/Templates/Area Template.md`
**Usage**: Ongoing responsibilities with current status, routines, and review sections.

### 5. Weekly Synthesis Template
**Location**: `06_Metadata/Templates/Weekly Synthesis Template.md`
**Usage**: Weekly review format with themes, progress, insights, and next week planning.

## How to Use Templates

### Manual Usage
1. Navigate to `06_Metadata/Templates/`
2. Copy the desired template content
3. Create new note in appropriate PARA folder
4. Paste and fill in

### With OpenCode
```
Create a new project note using the Project Template.
Place it in 01_Projects and name it [project-name].
```

### With Obsidian Templates Plugin
If you have the Templates plugin enabled:
1. Set template folder to `06_Metadata/Templates/`
2. Use `Ctrl/Cmd + T` to insert a template

## Template Placeholders

Templates use these placeholders:
- `{{date}}` or `{{date:YYYY-MM-DD}}` - Current date
- `{{title}}` - Note title
- `{{time}}` - Current time

## Creating Custom Templates

1. Create new file in `06_Metadata/Templates/`
2. Name it `[Type] Template.md`
3. Include:
   - Frontmatter section
   - Clear section headers
   - Placeholder text in comments (`<!-- -->`)
   - Links section for connections
