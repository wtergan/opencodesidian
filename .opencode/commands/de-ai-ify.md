---
description: Remove AI patterns and restore human voice
---

# De-AI-ify Text

Remove AI-generated patterns and restore natural human voice to your writing.

## Process

1. Parse file path from $ARGUMENTS (or use inline text)
2. Read original content
3. Spawn @editor with task: "de-ai-ify-only"
   - Editor performs de-AI-ification pass only
   - Skips structural/grammatical edits
4. Editor applies changes directly to file
5. Return change summary

## What Gets Removed

### 1. Overused Transitions

- "Moreover," "Furthermore," "Additionally," "Nevertheless"
- Excessive "However" usage
- "While X, Y" openings

### 2. AI Clichés

- "In today's fast-paced world"
- "Let's dive deep"
- "Unlock your potential"
- "Harness the power of"
- "It's important to note that"
- "At the end of the day"

### 3. Hedging Language

- "It's important to note"
- "It's worth mentioning"
- Vague quantifiers: "various," "numerous," "myriad"

### 4. Corporate Buzzwords

- "utilize" → "use"
- "facilitate" → "help"
- "optimize" → "improve"
- "leverage" → "use"
- "synergy" → (delete)

### 5. Robotic Patterns

- Rhetorical questions followed by immediate answers
- Obsessive parallel structures
- Always using exactly three examples
- Announcement of emphasis

## What Gets Added

### Natural Voice

- Varied sentence lengths
- Conversational tone
- Direct statements
- Specific examples

### Human Rhythm

- Natural transitions
- Confident assertions
- Personal perspective
- Authentic phrasing

## Usage

```
/de-ai-ify 03_Resources/my-draft.md
/de-ai-ify [paste content directly]
```

## Output

- **Modified file**: Original file is updated in-place
- **Change log**: Summary of patterns removed/changed
- **Quality note**: Brief assessment of human voice quality

## Example Transformations

**Before (AI):** "In today's rapidly evolving digital landscape, it's crucial to understand that leveraging AI effectively isn't just about utilizing cutting-edge technology—it's about harnessing its transformative potential to unlock unprecedented opportunities."

**After (Human):** "AI works best when you use it for specific tasks. Focus on what it does well: writing code, analyzing data, and answering questions."

## When to Use vs /edit

- **/de-ai-ify**: Quick voice-only cleanup (fastest path to natural tone)
- **/edit**: Full polish including structure, logic, consistency + de-ai-ify

The @editor has built-in de-AI-ify capabilities—this command just isolates that task for speed.
