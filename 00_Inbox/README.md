# 📥 Inbox

Quick capture point for new ideas, notes, and incoming items.

## Purpose

This is the entry point for everything new. Don't worry about organization here - just capture quickly and process later.

## What Goes Here

- Quick thoughts and ideas
- Links to check out later
- Daily notes in progress
- Anything you haven't categorized yet

## Processing

### Daily Workflow
1. **Capture first, organize later** - Don't slow down to categorize
2. **Use daily notes** - One note per day for stream of consciousness
3. **Dump links and quotes** - Save now, process later
4. **Don't let it pile up** - Process weekly

### Weekly Processing (via `/inbox-processor`)
Every week, review your inbox and:
- Move project-related notes to `01_Projects/`
- Move ongoing topics to `02_Areas/`
- Move reference material to `03_Resources/`
- Archive completed items to `04_Archive/`
- Delete what's no longer relevant

**Trigger inbox processing:**
```
/inbox-processor
```

### Processing Decision Framework

Use the PARA method when processing:
- **→ 01_Projects**: Has deadline, specific outcome, time-bound
- **→ 02_Areas**: Ongoing responsibility, no end date (health, finances, career)
- **→ 03_Resources**: Reference material, knowledge, topics of interest
- **→ 04_Archive**: Old/completed, no longer active
- **→ Delete**: No value, redundant, or temporary

## Workflow Integration

### Morning Routine
1. Check inbox for yesterday's captures
2. Review daily note from yesterday
3. Note any items needing immediate processing

### Throughout the Day
1. **Capture quickly** - Don't organize during work
2. **Use `/log`** for session tracking
3. **Date everything** - Use YYYY-MM-DD format

### End of Day
1. Quick review of captures
2. Flag items for tomorrow
3. Run `/daily-review` to plan next day

## Tips

- Don't aim for perfection... the inbox is meant to be messy
- Don't let inbox grow too large (>10 items triggers processing)
- Process at least weekly (ideally daily)
- Use descriptive filenames for easier processing
- Date notes (YYYY-MM-DD) to aid with sorting

## File Naming

Suggested formats:
- Daily notes: `2024-03-15.md`
- Quick captures: `2024-03-15 - Meeting with Team.md`
- Web clips: `2024-03-15 - Article Title - Source.md`
- Ideas: `Idea - Brief Description.md`

---

*Remember: Capture first, organize later. The inbox is your scratchpad, not your filing system.*
