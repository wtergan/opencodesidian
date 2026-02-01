# 📎 Attachments

Images, PDFs, and other media files.

## Structure

```
05_Attachments/
├── Organized/      # Filed by project/topic
│   ├── ProjectName/
│   └── TopicName/
└── Unprocessed/    # New uploads to sort
```

## Workflow

### Adding Files

1. **Drop files into `Unprocessed/`**
   - Screenshots
   - PDFs
   - Photos
   - Documents

2. **Link to them in relevant notes**:
   ```markdown
   ![[Pasted image 20240101.png]]
   ![[document.pdf]]
   ```

3. **When organizing, move to `Organized/[folder]/`**
   - Create folders as needed
   - Use project/topic names
   - Keep organized structure flat

### Processing Workflow

**Weekly**:
1. Review `Unprocessed/` folder
2. Identify what each file is
3. Rename with descriptive names
4. Move to appropriate `Organized/` subfolder
5. Update any broken links in notes

**Using Gemini Vision** (if configured):
```
Analyze this image and suggest a filename: [[image.png]]
```

## File Naming

Consider prefixes for quick identification:
- `screenshot-` for screen captures
- `diagram-` for diagrams and charts
- `photo-` for photographs
- `doc-` for documents
- `pdf-` for PDF files

**Examples**:
- `screenshot-2024-01-error-message.png`
- `diagram-system-architecture.png`
- `doc-project-proposal.pdf`

## Linking in Notes

### Basic Image Link
```markdown
![[image.png]]
```

### Image with Caption
```markdown
![[image.png]]
*Caption describing the image*
```

### PDF Link
```markdown
![[document.pdf]]
```

### Resized Image
```markdown
![[image.png|500]]  # Width of 500px
```

## Maintenance

### Finding Orphaned Files

Files not linked in any note:
```bash
# Check for unprocessed files
ls -la 05_Attachments/Unprocessed/

# Find potentially orphaned files in Organized/
```

**OpenCode can help**:
```
Find any attachments in 05_Attachments/ that aren't linked in notes
```

### Managing File Sizes

- Keep individual files under 10MB for Git
- Compress images if needed
- Consider external hosting for large files
- Use `npm run attachments:sizes` if available

### Periodic Cleanup

**Monthly**:
1. Process `Unprocessed/` folder
2. Check for orphaned files
3. Remove unused attachments
4. Verify all links work

## Tips

- **Use descriptive names** - `screenshot-error.png` not `image-1.png`
- **Process regularly** - Don't let Unprocessed/ pile up
- **Create folders as needed** - Organized/ structure should grow organically
- **Link immediately** - When you add an attachment, link it right away
- **Use prefixes** - Makes searching and sorting easier

## MCP Integration (Optional)

### Gemini Vision
If configured in `.opencode/opencode.json`:
- Analyze images without describing them
- Extract text from PDFs
- Compare multiple images
- Auto-generate filenames

**Example**:
```
Look at [[screenshot-error.png]] and tell me what the error is
```

---

*Attachments are supporting evidence. Keep them organized and accessible.*
