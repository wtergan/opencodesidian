---
description: Process inbox items using PARA triage
---

# Inbox Processor

Analyzes inbox items and suggests PARA destinations. Uses @archivist for intelligent categorization.

## Process

1. List all files in 00_Inbox/
2. For each file:
   - Spawn @archivist to analyze
   - Archivist reads content, suggests destination, identifies connections
   - Returns structured analysis
3. Synthesize all archivist outputs
4. Present categorized recommendations
5. User decides: move, combine, delete, or keep each item

## PARA Categorization

Archivist suggests destinations based on:

**→ 01_Projects/**:
- Has deadline or target completion date
- Has specific outcome or deliverable
- Is currently active

**→ 02_Areas/**:
- Ongoing indefinitely, no end date
- Requires regular attention
- Standards or metrics to uphold

**→ 03_Resources/**:
- Topics of interest, not project-specific
- Reference material for future use
- Knowledge to preserve

**→ 04_Archive/**:
- Completed projects with outputs
- Inactive items no longer relevant
- Old versions of active documents

**→ Delete**:
- No lasting value
- Redundant with existing notes
- Temporary or transient

## Output

Returns categorized analysis with:
- Items analyzed count
- PARA destination suggestions per item
- Confidence scores and related notes
- Patterns identified across items
- Recommendations for user action

User makes final decisions on moves/combines/deletes.
