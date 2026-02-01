---
description: Load code context from a linked project note
---

# Context Bridge

Connects the current project note to its linked code repository to provide immediate technical context.

## Task

1.  Read the provided project note to find the `code_path` frontmatter field.
2.  If found, navigate to that directory.
3.  Analyze the current state of the codebase (files, git status, dependencies).
4.  Report the findings back to the user to ground the conversation.

## Process

1.  **Extract Path**:
    *   Read the specified project note.
    *   Look for `code_path: /path/to/code` in the YAML frontmatter.
    *   If missing, ask the user to add it.

2.  **Analyze Codebase**:
    *   Run `ls -F` in the `code_path` to see structure.
    *   Run `git status -s` to see active changes.
    *   **Heuristic Read**:
        *   If `package.json` exists, read it (dependencies).
        *   If `requirements.txt` or `pyproject.toml` exists, read it.
        *   Always read `README.md` if present.

3.  **Synthesize**:
    *   Summarize the project state (e.g., "React App, clean git state, main dependency is X").
    *   List any uncommitted changes.

## Output

**Code Context Loaded**
- **Path**: `[code_path]`
- **Status**: [Clean/Dirty]
- **Stack**: [Key technologies detected]
- **Recent Context**: [Brief summary of README/manifest]

## Example Usage

/context 01_Projects/prediction-market.md
/context (if you are already discussing a specific project)
