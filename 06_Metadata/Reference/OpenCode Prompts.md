# OpenCode Prompts for Vault Operations

Common prompts and patterns for using OpenCode with your vault.

## Getting Started

### First Session
```
I'm new to this vault. Help me understand the structure and 
what's already here.
```

### Thinking Mode
```
I'm working on [topic/project]. Let's explore in thinking mode - 
ask me questions, don't rush to solutions.
```

## Daily Workflows

### Morning Planning
```
What did I work on yesterday? What should I focus on today?
Check my inbox and recent notes.
```

### Quick Capture
```
Add a quick note to inbox: [your thought here]
```

### End of Day
```
/daily-review

or manually:

Help me review today. What did I accomplish? 
What insights emerged? What's for tomorrow?
```

## Inbox Processing

### Full Triage
```
/inbox-processor

or: Process my inbox using PARA method.
```

### Single Item
```
I have a note about [topic]. Should this be a project, 
area, resource, or archived?
```

## Research & Exploration

### Topic Research
```
/research-assistant [topic]

or: Search my vault for everything related to [topic] 
and synthesize what I know.
```

### Connection Finding
```
What connections exist between [concept A] and [concept B] 
in my notes?
```

### Gap Analysis
```
What don't I know about [topic]? Where are the gaps 
in my research?
```

## Project Management

### New Project
```
Create a new project called "[name]" using the Project Template.
Put it in 01_Projects.
```

### Project Status
```
What's the status of my [project name] project?
What are the blockers and next actions?
```

### Complete Project
```
Archive [project name]. Summarize what was accomplished 
and move to 04_Archive.
```

## Weekly Review

### Full Synthesis
```
/weekly-synthesis

or: Create a weekly synthesis. What themes emerged this week?
What patterns do you see in my work?
```

### Energy Check
```
Looking at this week's work, what gave me energy? 
What drained me?
```

## Writing & Editing

### De-AI Text
```
/de-ai-ify [file path or paste text]

or: Make this text sound more human and less AI-generated.
```

### Draft Review
```
Review my draft at [file path]. 
Focus on clarity and flow, not grammar.
```

## Vault Maintenance

### Statistics
```
Run vault-stats.sh and show me what's in my vault.
```

### Orphan Check
```
Find notes that aren't linked to anything else.
```

### Cleanup Suggestions
```
What in my vault could be archived or deleted? 
What needs attention?
```

## Template Usage

### List Templates
```
Show me available templates in 06_Metadata/Templates.
```

### Use Template
```
Create a new [type] note using the [Template Name] template.
Name it [name] and put it in [folder].
```

## Tips

1. **Be specific** - "Help with my project" < "Help with the API integration in my website project"
2. **Think out loud** - Share context even if you're not sure it's relevant
3. **Use thinking mode** - Say "thinking mode" to get questions instead of answers
4. **Reference files** - Point to specific notes when relevant
5. **Iterate** - Build on previous responses rather than starting fresh
