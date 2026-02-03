---
description: Extract content from PDFs, images, documents
---

# Extract Command

Extracts text and structure from PDFs, images, and documents into clean markdown.

## Process

1. Parse file path from $ARGUMENTS
2. Validate file exists in 05_Attachments/
3. Load skill({ name: 'templates' })
4. Read "06_Metadata/Templates/extraction-output-template.md"
5. Spawn @extractor with file path and template
6. Extractor extracts and writes to 00_Inbox/
7. Suggest PARA destination based on content

## Usage

/extract 05_Attachments/physics-notes.pdf
/extract 05_Attachments/handwritten-ideas.jpg
/extract 05_Attachments/research-paper.pdf

## Supported Formats

- **PDFs**: Research papers, documents, scanned notes
- **Images**: Screenshots, handwritten notes, diagrams
- **Text files**: .txt, .md, .docx (converted)
- **Goodnotes exports**: PDFs with handwritten notes

## Output

Extractor writes to 00_Inbox/extracted-[filename].md. Returns: summary + quality scores (Accuracy, Completeness, Format) + suggested PARA destination.

## Post-Extraction

After extraction:
1. Review extracted content
2. Move to appropriate PARA folder
3. Link to related notes
4. Delete original or keep in Attachments
