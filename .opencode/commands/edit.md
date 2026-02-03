---
description: Polish and refine content - improves clarity, logic, removes AI patterns
---

# Edit Command

Polishes existing content: improves clarity, strengthens logic, removes AI patterns.

## Process

1. Identify content to edit:
   - File path: `/edit path/to/file.md`
   - Inline: User provides content in prompt
2. Determine edit scope:
   - Light: Fix typos, smooth sentences
   - Medium: Restructure paragraphs, clarify
   - Heavy: Reorganize sections, rewrite
3. Spawn @editor with content and scope
4. Editor returns polished content following OFM rules
5. Return edited content with changes highlighted

## Usage

/edit 03_Resources/my-draft.md
/edit [paste content directly]
/edit Make this more conversational: [content]

## Edit Scope Detection

**Light**: 
- "quick edit", "typos", "polish"
- High-quality input

**Medium** (default):
- "improve", "clarify", "refine"
- Solid draft needing polish

**Heavy**:
- "rewrite", "restructure", "major revision"
- Quality scores < 0.70
- Structural issues mentioned

## What Gets Edited

**Language Polish**:
- Word choice
- Sentence flow
- Readability

**Logic Strengthening**:
- Argument structure
- Soundness of reasoning
- Logical gaps

**De-AI-ification**:
- Remove "Moreover", "Furthermore"
- Cut "In today's fast-paced world"
- Replace hedging with direct statements
- Add varied sentence lengths
- Inject human voice

**Consistency**:
- Tone
- Style
- Terminology

## Output

Returns: edited content + quality scores (Polish, Logic, Consistency).
