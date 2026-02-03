---
description: Log a thought, task, or work session to today's daily note
---

# Daily Logger

Captures timestamped entries to daily note. Smart routing: tasks go to Tasks section, thoughts go to Capture section.

## Process

1. Identify today's date (YYYY-MM-DD) and current time (HH:MM)
2. Check for daily note: `02_Areas/Journal/Daily/[Date].md`
3. If missing:
   - Load skill({ name: 'templates' })
   - Read "06_Metadata/Templates/daily-note-template.md"
   - Create note from template
4. Determine entry type:
   - Task? (starts with "- [ ]" or "task:") → Tasks section
   - Thought? → Capture section with timestamp
5. Append to appropriate section
6. Update frontmatter: increment tasks_done or tasks_total
7. Return confirmation to user

## Entry Types

**Task Entry** (detected by pattern):
```
/log - [ ] Review pull request for authentication feature
/log task: Call dentist to schedule appointment
```
→ Goes to `## Tasks` section
→ Updates `tasks_total` in frontmatter

**Capture Entry** (default):
```
/log Starting work on muon detection blog post
/log Interesting insight: graph databases solve the connection problem
```
→ Goes to `## Capture` section with timestamp: `- **14:30**: [content]`

## Template Usage

When creating new daily note:
1. Load skill: `skill({ name: 'templates' })`
2. Read: `06_Metadata/Templates/daily-note-template.md`
3. Replace `{{date:YYYY-MM-DD}}` with actual date
4. Write to: `02_Areas/Journal/Daily/YYYY-MM-DD.md`

## Frontmatter Updates

Track progress in YAML frontmatter:
- `tasks_done`: Increment when task completed
- `tasks_total`: Increment when new task added
- `mood`: Optional user-specified
- `energy_level`: Optional user-specified

## Output

Confirmation: "Logged to 02_Areas/Journal/Daily/YYYY-MM-DD.md"

## Examples

/log - [ ] Email team about meeting time
/log Working on topology notes integration
/log task: Buy groceries on way home
/log Breakthrough idea: Use manifold visualization for LCDM section
