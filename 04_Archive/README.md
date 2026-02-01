# 🗄️ Archive

Completed projects and inactive items.

## What Goes Here

- **Completed projects** with their final state
- **Inactive items** no longer relevant to current work
- **Historical notes** for future reference
- **Old versions** of active documents

## Why Archive (Not Delete)

- Preserve context for future reference
- Learn from past work
- Potential to revive dormant ideas
- Maintain history

## Structure

Organize by source:
```
04_Archive/
├── Projects/      # Completed projects
├── Areas/         # Paused area notes
├── Resources/     # Outdated resources
└── Legacy/        # Pre-PARA content
```

## Archiving Process

### When to Archive

**Projects**:
- All objectives completed
- Deliverable shipped
- No further work planned
- Learnings extracted

**Areas**:
- Responsibility no longer relevant
- Standards changed
- Life circumstances shifted

**Resources**:
- Information outdated
- No longer relevant to interests
- Superseded by better resources

### How to Archive

1. **Add completion metadata**:
   - Completion date
   - Final outcome
   - Key learnings
   - Why it ended

2. **Extract learnings**:
   - Move reusable insights to `03_Resources/`
   - Document what worked/didn't
   - Note tools/techniques discovered

3. **Update frontmatter**:
   ```yaml
   ---
   created: YYYY-MM-DD
   completed: YYYY-MM-DD
   status: archived
   tags: [project, archived]
   ---
   ```

4. **Update links**:
   - Fix any links from active notes
   - Add archive links if needed

5. **Move to archive**:
   ```bash
   mv 01_Projects/project-name.md 04_Archive/Projects/
   ```

### Example Archive Workflow

**Completing a project**:
```
1. Final review of project note
2. Add completion section:
   ## Completed YYYY-MM-DD
   - Final outcome: ...
   - Key learnings: ...
   - What worked: ...
   - What didn't: ...

3. Extract learnings to Resources:
   - Create note in 03_Resources/Learnings/
   - Link to archived project

4. Update status to archived
5. Move to 04_Archive/Projects/
```

## Searching Archive

The archive is still searchable! Use:

**Obsidian search**:
- Search includes archive by default
- Use path filters if needed: `path:04_Archive`

**OpenCode research**:
```
/research-assistant [topic]
```
This searches the entire vault, including archive.

## Maintenance

**Yearly**:
- Review archive organization
- Consolidate similar archived items
- Clean up duplicates

**When searching**:
- Check archive for relevant historical context
- Revive ideas if circumstances change

## Tips

- **Archive, don't delete** - Storage is cheap, context is valuable
- **Document completion** - Future you will want to know what happened
- **Extract before archiving** - Pull out reusable learnings
- **Keep searchable** - Archive is still part of your knowledge base
- **Review periodically** - Old projects might spark new ideas

---

*The archive is your history. Learn from it, but don't live in it.*
