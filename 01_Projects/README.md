# 📋 Projects

Active, time-bound initiatives with specific outcomes.

## What Makes a Project

- Has a **deadline** or target completion date
- Has a **specific outcome** or deliverable
- Requires multiple steps to complete
- Is currently active (not someday/maybe)

## Examples

- "Q1 Website Redesign"
- "Book Chapter Draft"
- "Conference Talk Prep"
- "Home Office Setup"

## Structure

Each project should have:
- Clear objectives
- Success criteria
- Progress log
- Next actions

Use the **Project Template** from `06_Metadata/Templates/`.

## Project Lifecycle Workflow

### Starting a Project

1. **Create project note**:
   ```
   /templates Create a new project called "[Project Name]"
   ```

2. **Define the project**:
   - Add objectives (checkboxes)
   - Set target completion date
   - Document context (why this project?)
   - Define success criteria

3. **Explore with thinking partner**:
   ```
   /thinking-partner I'm starting [project]. Let's explore the approach.
   ```

4. **Set up code link** (if applicable):
   - Add `code_path: /path/to/code` to frontmatter
   - Add `repo_url: https://github.com/...` to frontmatter

### Active Project Management

**Daily**:
- Log progress with `/log`
- Update progress log section
- Check off completed objectives

**Weekly**:
- Review during `/weekly-synthesis`
- Update next actions
- Move stuck items to "Blocked"
- Log major milestones

**Using the Context Command**:
If your project has a `code_path` in frontmatter:
```
/context 01_Projects/my-project.md
```
This analyzes the linked codebase and reports status.

### Completing a Project

When a project is finished:

1. **Add completion notes**:
   - Final outcome
   - Key learnings
   - What worked/didn't work

2. **Extract reusable learnings** to `03_Resources/`

3. **Update status** in frontmatter to `status: completed`

4. **Move to archive**:
   ```bash
   mv 01_Projects/project-name.md 04_Archive/Projects/
   ```

5. **Update any linked notes** with completion status

## Project Note Structure

Standard sections in a project note:
```
# Project Name

## Project Overview
- Start Date: YYYY-MM-DD
- Target Completion: YYYY-MM-DD
- Status: Active

## Objectives
- [ ] Objective 1
- [ ] Objective 2

## Context
Why this project? What problem does it solve?

## Success Criteria
How will we know this is complete?

## Key Resources
- [[related-note]]
- [External link](url)

## Progress Log
### YYYY-MM-DD - Entry title
- What was done
- Insights

## Open Questions
- What needs to be figured out?

## Next Actions
- [ ] Immediate next step
- [ ] Another action
```

## Tracking Progress

### Daily Logging
Throughout the day, use `/log` to capture:
```
/log Starting implementation of feature X
/log Idea: use different approach for Y
/log Blocked on Z, need to research
```

### Weekly Reviews
During `/weekly-synthesis`, projects section includes:
- What advanced this week
- What's blocked
- Next week's focus

## Tips

- **Be specific** with objectives (SMART goals)
- **Log as you go** - Don't wait until the end
- **Link to resources** - Connect with `03_Resources/`
- **Review weekly** - Keep momentum, identify blocks early
- **Archive when done** - Don't leave completed projects active

---

*Active projects drive your work. Keep them updated, or they become areas.*
