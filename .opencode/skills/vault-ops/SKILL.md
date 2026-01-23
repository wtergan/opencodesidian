---
name: vault-ops
description: Core PARA vault operations, directory structure, and file conventions
---

# Vault Operations

This skill provides the foundational knowledge for operating the OpenVault PARA system.

## Directory Structure

```
Vault/
├── 00_Inbox/        # Quick capture, unprocessed items
├── 01_Projects/     # Active, time-bound initiatives with deadlines
├── 02_Areas/        # Ongoing responsibilities without end dates
├── 03_Resources/    # Reference materials and knowledge base
├── 04_Archive/      # Completed/inactive items
├── 05_Attachments/  # Media files (images, PDFs, etc.)
│   ├── Organized/   # Filed by project/topic
│   └── Unprocessed/ # New uploads
├── 06_Metadata/     # Templates, reference docs, configuration
│   ├── Templates/   # Note templates
│   └── Reference/   # Guides and documentation
└── 07_OLD_VAULT/    # Migrated content from previous system
```

## PARA Categorization

### Projects (01_Projects/)
- Has a **deadline** or target completion date
- Has a **specific outcome** or deliverable
- Examples: "Q1 Website Redesign", "Book Chapter Draft", "Conference Talk Prep"

### Areas (02_Areas/)
- **Ongoing responsibility** without an end date
- Requires maintenance over time
- Examples: "Health", "Finances", "Career Development", "Relationships"

### Resources (03_Resources/)
- **Topics of ongoing interest**
- Reference material you might need later
- Examples: "AI Research", "Writing Tips", "Recipes", "Travel Destinations"

### Archive (04_Archive/)
- **Completed projects** with their outputs
- **Inactive items** no longer relevant
- Old notes that might be useful for reference

## File Naming Conventions

- Use lowercase with hyphens: `my-project-name.md`
- Projects: `project-name.md` in `01_Projects/`
- Daily notes: `YYYY-MM-DD.md` in `00_Inbox/` or `02_Areas/Journal/`
- Research: `topic-name.md` in `03_Resources/`

## Cross-Linking

Use Obsidian wiki-links:
- Basic link: `[[note-name]]`
- Link with display text: `[[note-name|Display Text]]`
- Link to heading: `[[note-name#Heading]]`

## Frontmatter Standards

All notes should include YAML frontmatter:

```yaml
---
created: YYYY-MM-DD
tags: [tag1, tag2]
status: active/completed/archived
---
```

## When to Use This Skill

Load this skill when:
- Creating new notes
- Organizing content
- Processing inbox items
- Understanding vault structure
