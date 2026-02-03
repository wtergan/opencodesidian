---
description: Research vault and/or web - finds existing notes and new information
---

# Research Command

Conducts vault search and/or web research on a topic.

## Process

1. Parse research topic from $ARGUMENTS
2. Determine research type needed:
   - Vault search (existing notes)
   - Web search (external sources)
   - Both (comprehensive)
3. Spawn @researcher with query and scope
4. Researcher conducts research and writes to 03_Resources/[topic].md
5. Return findings summary with quality scores

## Output

Researcher writes to 03_Resources/[topic-name].md. Returns: summary + quality scores (Coverage, Sources, Relevance).

## Usage

/research graph databases for knowledge management
/research existing notes on topology  [vault only implied]
/research latest AI developments 2026  [web only implied]

## Research Scope Detection

**Vault search only**:
- "existing notes"
- "what do I have on..."
- "find my notes about..."

**Web search only**:
- "latest", "recent", "2026", "2025"
- "best practices"
- "how to..."
- No mention of existing notes

**Both**:
- General topics without scope specification
- "comprehensive research"
- User explicitly asks for both


