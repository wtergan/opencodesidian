---
description: Create a new OpenCode command
---

# Create New Command

I'll help you create a new OpenCode command for your vault.

## Your Input

**Command Details:** $ARGUMENTS

## Process

1. **Understand Requirements**
   - What should the command do?
   - What vault folders does it work with?
   - What output should it produce?

2. **Design Structure**
   - Command name (kebab-case)
   - Input arguments
   - Output format

3. **Create Command File**
   - Load skill({ name: 'templates' })
   - Read "06_Metadata/Templates/command-template.md"
   - Customize for specific command
   - Write to `.opencode/commands/[command-name].md`

## Best Practices

- Keep commands focused on one task
- Use clear, descriptive names
- Include example usage
- Document required arguments
- Specify output format
- Reference vault folders explicitly (00_Inbox, 01_Projects, etc.)

## OpenCode Command Reference

Commands in OpenCode use markdown files with YAML frontmatter:
- `description`: Shows in command list
- `agent`: Optional, specify which agent to use
- `model`: Optional, override model for this command

The command file name becomes the command. For example:
- `thinking-partner.md` → `/thinking-partner`
- `daily-review.md` → `/daily-review`

## Related: Creating Skills

For creating **skills** (reusable knowledge packages used by commands/agents), use `/create-skill` instead:
- **Commands** = User-facing slash commands (what we're creating here)
- **Skills** = Internal capabilities loaded by `skill({ name: '...' })`

Skills extend agent capabilities with specialized knowledge and workflows.

Let me help you create your command!
