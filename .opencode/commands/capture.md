---
description: Quick capture to inbox - dump ideas, links, unprocessed thoughts
---

# Capture

Quickly capture ideas, links, or thoughts to the Inbox for later processing.

## Process

1. Get today's date and current time
2. Create entry in `00_Inbox/` with timestamp
3. Format: `MM-DD-HHMM-[summary].md` (e.g., `02-02-1430-muon-blog-idea.md`)
4. Use `06_Metadata/Templates/daily-note-template.md` as base structure (simplified)

## Entry Format

```markdown
---
captured: YYYY-MM-DD HH:MM
tags: [capture]
status: unprocessed
---

## Content

[User input]

## Context
- Source: [if mentioned]
- Related to: [if mentioned]

---
*Process with `/inbox-processor` when ready*
```

## Usage Examples

/capture Idea for muon blog - compare cosmic ray detection methods
/capture Link to interesting article about graph databases https://example.com
/capture Remember to check old physics notes for topology examples

## Output

"Captured to Inbox: 00_Inbox/02-02-1430-muon-blog-idea.md"
