---
name: obsidian-markdown
description: Obsidian Flavored Markdown (OFM) formatting rules
---

# Obsidian Flavored Markdown (OFM)

Formatting rules for Obsidian vault files.

## Critical Rules

1. **Frontmatter first**: Start with `---\nkey: value\n---`
2. **No H1 title**: Filename is the title
3. **WikiLinks**: Use `[[note-name]]` not `[text](path)`

## Quick Usage

```javascript
// Load OFM conventions before writing
skill({ name: 'obsidian-markdown' })

// Now write following OFM rules:
// - Frontmatter first (no # Title)
// - Use [[wiki-links]]
// - Use callouts: > [!note]
write("01_Projects/project.md", content)
```

## Key Elements

| Element | Syntax | Example |
|---------|--------|---------|
| Frontmatter | `---\nkey: val\n---` | created: 2026-02-02 |
| WikiLink | `[[note]]` | [[project-ideas]] |
| Heading | `## Section` | ## Overview |
| Task | `- [ ] task` | - [ ] Review code |
| Callout | `> [!type]` | > [!warning] |

## Common Mistakes

❌ Wrong - H1 title:
```markdown
# My Project
---
created: 2026-02-02
```

✅ Correct - Frontmatter first:
```markdown
---
created: 2026-02-02
---

## Project Overview
```

❌ Wrong - Standard links:
```markdown
[See note](03_Resources/topic.md)
```

✅ Correct - WikiLinks:
```markdown
[[topic|See note]]
```

---

**Usage**: Load this skill before any write/edit operations.
