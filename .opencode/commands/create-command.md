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
   - Location: `.opencode/commands/[command-name].md`
   - Include proper frontmatter
   - Clear instructions
   - Example usage

## Command Template

```markdown
---
description: [One-line description shown in command list]
---

# Command Name

Brief description of what this command does.

## Task

[Clear description of the task]

## Process

1. [Step 1]
2. [Step 2]
3. [Step 3]

## Output

[Expected output format]

## Example Usage

/command-name [arguments]
```

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

Let me help you create your command!
