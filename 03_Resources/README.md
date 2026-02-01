# 📚 Resources

Reference materials and topics of ongoing interest.

## What Makes a Resource

- **Topics of interest** regardless of current projects
- **Reference material** you might need later
- **Knowledge** you want to preserve
- Not tied to a specific timeline

## Examples

- **AI Research** - collected insights on AI/ML
- **Writing Tips** - techniques and advice
- **Programming** - code patterns, tools, tutorials
- **Books** - notes and summaries
- **Recipes** - cooking reference
- **People** - notable people and their ideas

## Structure

Organize by topic:
```
03_Resources/
├── Articles/          # Saved web content
├── Books/            # Book notes and summaries
├── Concepts/         # Evergreen idea notes
├── People/           # Notable people and thinkers
├── Tools/            # Software, methods, frameworks
├── Quotes/           # Memorable quotes
├── Examples/         # Case studies, references
├── AI/               # AI research, ideas, etc.
└── Learning/         # Course notes, tutorials
```

Use the **Research Note Template** for capturing new resources.

## Resource Workflow

### Capturing New Resources

1. **Create research note**:
   ```
   /templates Create a research note about [topic]
   ```

2. **Document the source**:
   - URL or book reference
   - Date accessed
   - Author/creator

3. **Extract key insights**:
   - Summary in 2-3 sentences
   - Key points (bullet list)
   - Notable quotes

4. **Make connections**:
   - Link to related notes
   - Note contradictions
   - Build on existing knowledge

### Research Note Structure

Standard sections in a research note:
```
# Topic Name

---
created: YYYY-MM-DD
source: [URL or reference]
tags: [research, topic]
---

## Summary
Key points in 2-3 sentences

## Key Insights
- Insight 1
- Insight 2
- Insight 3

## Notable Quotes
> "Important quote here"
> — Author Name

## Questions Raised
- What does this mean for...?
- How does this connect to...?

## Connections
- See: [[related-note]]
- Contradicts: [[other-perspective]]
- Builds on: [[foundation-concept]]

## Action Items
- [ ] Follow up on...
- [ ] Research further...
```

### Using Resources

When working on projects or exploring areas, search Resources for:
- Previous research
- Relevant techniques
- Patterns and examples
- Expert perspectives

**Search methods**:
1. **Obsidian search** - Use the search bar
2. **OpenCode research**:
   ```
   /research-assistant [topic]
   ```
   This searches the entire vault for the topic and synthesizes findings.

### Building Knowledge Networks

Connect resources to create a knowledge web:
- **Link liberally** - Use `[[note-name]]` liberally
- **Tag consistently** - Use tags like #ai, #writing, #productivity
- **Cross-reference** - Note contradictions and agreements
- **Update regularly** - Add new insights as you learn

## Resource Research Workflow

### Deep Research Session

When researching a topic:

1. **Initial search**:
   ```
   /research-assistant [topic]
   ```
   This finds all existing notes on the topic.

2. **Review findings**:
   - What knowledge exists?
   - What are the gaps?
   - What contradictions exist?

3. **Add new resources**:
   - Save articles with Firecrawl (if configured)
   - Create research notes
   - Extract key insights

4. **Synthesize**:
   - Create summary notes
   - Identify patterns
   - Connect to projects/areas

### Web Research with Firecrawl

If you have Firecrawl MCP configured:

**Save single article**:
```bash
npm run firecrawl:scrape -- "https://example.com/article" "03_Resources/Articles"
```

**Batch save multiple URLs**:
```bash
npm run firecrawl:batch -- urls.txt "03_Resources/Research"
```

## Maintenance

**Monthly**:
- Review for outdated information
- Archive items no longer relevant
- Connect orphaned notes
- Update links

**Quarterly**:
- Major review of topic organization
- Reorganize if needed
- Extract patterns for synthesis

## Tips

- **Capture everything** - You never know what you'll need
- **Connect liberally** - The value is in the network
- **Summarize ruthlessly** - Don't just copy-paste
- **Question everything** - Note doubts and contradictions
- **Review periodically** - Knowledge decays, refresh it

---

*Resources are your knowledge base. Build it carefully, use it often.*
