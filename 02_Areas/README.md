# 🔄 Areas

Ongoing responsibilities and standards to maintain.

## What Makes an Area

- **No end date** - ongoing indefinitely
- Requires **regular attention** to maintain
- Has standards or metrics you want to uphold
- Part of your life/work you're committed to

## Examples

- **Health** - fitness, nutrition, sleep
- **Finances** - budgeting, investments
- **Career** - skills, networking, growth
- **Relationships** - family, friends
- **Home** - maintenance, organization
- **Learning** - ongoing education, skill development

## Structure

Each area might contain:
- Overview and current status
- Key metrics or goals
- Routines and habits
- Review notes

Use the **Area Template** from `06_Metadata/Templates/`.

## Subfolders

Consider organizing by domain:
```
02_Areas/
├── Health/
├── Career/
├── Finances/
├── Relationships/
├── Home/
└── Journal/        # Daily/weekly reflections
    └── Daily/
```

## Area Workflow

### Creating an Area

1. **Use template**:
   ```
   /templates Create a new area called "[Area Name]"
   ```

2. **Define the area**:
   - What is this responsibility?
   - Why does it matter?
   - Current status
   - Key metrics/goals

3. **Establish routines**:
   - Regular activities
   - Review frequency (weekly/monthly)
   - Standards to maintain

### Daily Management

**Morning**:
- Review active areas
- Note any routines due today

**Using `/log`**:
```
/log Morning meditation done (Health)
/log Reviewed budget for the week (Finances)
/log Connected with mentor (Career)
```

### Weekly Reviews

During `/weekly-synthesis`, areas are assessed:
- Which areas received attention?
- Which were neglected?
- Standards met or slipping?

### Monthly Deep Reviews

For each area, review:
1. **Current status** - Update the overview
2. **Metrics** - Track progress on goals
3. **Routines** - Are they working?
4. **Resources** - New tools, connections, learnings

## Area Note Structure

Standard sections in an area note:
```
# Area Name

## Overview
What is this area? Why does it matter?

## Current Status
How are things going in this area?

## Key Metrics/Goals
- Metric 1: Current → Target
- Metric 2: Current → Target

## Active Commitments
Ongoing commitments in this area:
- Commitment 1
- Commitment 2

## Routines
Regular activities:
- Daily: 
- Weekly:
- Monthly:

## Resources
Tools, people, references:
- [[related-note]]
- Tool: 
- Person:

## Review Notes
### YYYY-MM-DD - Monthly Review
- What went well:
- What to improve:
- Next month's focus:

## Related
- Projects: [[project-note]]
- Resources: [[resource-note]]
```

## Journal Subfolder

### Daily Notes Location

Daily notes are stored in:
```
02_Areas/Journal/Daily/YYYY-MM-DD.md
```

### Creating Daily Notes

1. **Use template**:
   ```
   /templates Create a daily note for today
   ```

2. **Or use `/log`** which auto-creates:
   ```
   /log Starting work on project X
   ```
   This creates the daily note if it doesn't exist.

### Daily Note Structure

```
# YYYY-MM-DD

## Capture
- **09:00**: Started the day with...
- **11:30**: Meeting about...

## Questions
- What am I curious about today?

## Insights
- What did I learn or realize?

## Connections
- Links to other notes or ideas

## For Tomorrow
- What needs follow-up?
```

### End of Day Process

Run `/daily-review` to:
1. Summarize accomplishments
2. Log insights
3. Note blocked items
4. Set tomorrow's priorities
5. Track open loops

## Maintenance

**Weekly**:
- Quick check: Which areas got attention?
- Log any area-related activities

**Monthly**:
- Deep review of each area
- Update metrics and status
- Assess routines
- Plan next month's focus

**Quarterly**:
- Major area review
- Archive areas no longer relevant
- Create new areas as needed

## Tips

- **Areas are not goals** - They're ongoing responsibilities
- **Define standards** - What does "good" look like?
- **Review regularly** - Or they slip
- **Connect to projects** - Projects often serve areas
- **Keep metrics simple** - Track only what matters

---

*Areas are the foundation. Projects come and go, but areas remain.*
