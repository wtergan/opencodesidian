---
description: Log a thought, task, or work session to today's daily note
---

# Daily Logger

Captures a timestamped entry into your daily note, creating the note if it doesn't exist.

## Task

1.  Identify today's date and the current time.
2.  Locate the daily note in `02_Areas/Journal/Daily/YYYY-MM-DD.md`.
3.  If the note does not exist, create it using the content from `06_Metadata/Templates/Daily Note Template.md`.
4.  Append the user's input as a timestamped bullet point under the `## Capture` section.

## Process

1.  **Get Context**: Determine today's date (YYYY-MM-DD) and current time (HH:MM).
2.  **Check File**: Look for `02_Areas/Journal/Daily/[Date].md`.
3.  **Create (if needed)**:
    *   Read `06_Metadata/Templates/Daily Note Template.md`.
    *   Replace `{{date}}` placeholders.
    *   Write the new file.
4.  **Log Entry**:
    *   Read the daily note.
    *   Locate the `## Capture` header.
    *   Insert ` - **HH:MM**: [User Input]` immediately after the header (or at the end of the existing list in that section).

## Output

"Logged to [Date]: **HH:MM**: [Input]"

## Example Usage

/log starting the gemma3 inference debugging
/log idea: we should use a graph database for the knowledge map
