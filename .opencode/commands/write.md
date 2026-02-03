---
description: Create content draft - transforms brief into structured content
---

# Write Command

Creates content drafts from briefs and research materials.

## Process

1. Parse writing brief from $ARGUMENTS
2. Check if research materials provided or exist in vault
3. Load skill({ name: 'obsidian-markdown' }) ← MANDATORY
4. Load skill({ name: 'templates' })
5. Read "06_Metadata/Templates/writing-output-template.md"
6. Spawn @writer with:
   - Brief/topic
   - Template reference
   - Any research materials (if provided)
7. Writer returns draft following OFM conventions
8. Apply template with filled content
9. Return draft to user (or write to specified path)

## Usage

/write Blog post about muon detection in cosmic rays
/write Video script comparing topology vs geometry
/write X thread about recent AI developments
/write Essay on the philosophy of scientific discovery

## Format Auto-Detection

Detect content type from keywords:

**Blog post**: "blog", "article", "post"
**Video script**: "video", "script", "YouTube"
**Essay**: "essay", "paper", "analysis"
**X post/thread**: "X", "tweet", "thread"

## User Control

This command creates the **first draft only**. User controls next steps:
- Request edits: `/edit [content]`
- Add research: `/research [topic]` then `/write` again
- Revise: Provide feedback and re-run `/write`

## Output

Returns: complete draft + quality scores (Structure, Clarity, Grounding).
