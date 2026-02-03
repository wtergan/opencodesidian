---
name: templates
description: Note templates for consistent vault structure
---

# Templates

Access standardized note templates. **Always load skill first**.

## Quick Usage (90% of cases)

```javascript
// 1. Load skill first
skill({ name: 'templates' })

// 2. Read template
const template = read("06_Metadata/Templates/daily-note-template.md")

// 3. Replace placeholders and write
const content = template.replace(/{{date:YYYY-MM-DD}}/g, '2026-02-02')
write("02_Areas/Journal/Daily/2026-02-02.md", content)
```

## Available Templates

| Template | Location | Usage |
|----------|----------|-------|
| Daily Note | `Templates/daily-note-template.md` | Daily captures |
| Project | `Templates/project-template.md` | Active initiatives |
| Research Note | `Templates/research-note-template.md` | Research findings |
| Area | `Templates/area-template.md` | Ongoing responsibilities |
| Weekly Synthesis | `Templates/weekly-synthesis-template.md` | Weekly reviews |
| Writing Output | `Templates/writing-output-template.md` | Content drafts |
| Extraction Output | `Templates/extraction-output-template.md` | PDF/image extraction |
| Command | `Templates/command-template.md` | New commands |

## Critical Rules

- **Frontmatter first**: YAML at top, no H1 title
- **No title section**: Filename is title in Obsidian
- **WikiLinks**: Use `[[note-name]]` not `[text](path)`

## Placeholders

- `{{date:YYYY-MM-DD}}` → 2026-02-02
- `{{title}}` → project-name
- `{{time}}` → 14:30

---

**Remember**: Always call `skill({ name: 'templates' })` first.
