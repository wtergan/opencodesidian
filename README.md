# OpenVault

An OpenCode + Obsidian vault using the PARA organizational method.

## Quick Start

1. **Open in Obsidian** - File → Open Vault → Select this folder
2. **Start OpenCode** - Run `opencode` in this directory
3. **Try a command** - `/thinking-partner 'What should I work on?'`

## Directory Structure

| Folder | Purpose |
|--------|---------|
| `00_Inbox/` | Quick capture, unprocessed items |
| `01_Projects/` | Active, time-bound initiatives |
| `02_Areas/` | Ongoing responsibilities (no end date) |
| `03_Resources/` | Reference materials & knowledge |
| `04_Archive/` | Completed or inactive items |
| `05_Attachments/` | Images, PDFs, media files |
| `06_Metadata/` | Templates & documentation |
| `07_OLD_VAULT/` | Migrated content from previous system |

## OpenCode Commands

| Command | Description |
|---------|-------------|
| `/thinking-partner` | Collaborative exploration and problem-solving |
| `/daily-review` | End-of-day reflection and capture |
| `/inbox-processor` | Triage inbox items using PARA method |
| `/research-assistant` | Deep vault search and synthesis |
| `/weekly-synthesis` | Weekly pattern finding and review |
| `/create-command` | Create new custom commands |
| `/de-ai-ify` | Remove AI patterns from text |

## The PARA Method

**Projects** - Have a deadline and specific outcome
- Example: "Q4 Marketing Campaign", "Book Draft"

**Areas** - Ongoing without an end date
- Example: "Health", "Finances", "Career"

**Resources** - Topics of ongoing interest
- Example: "AI Research", "Writing Tips"

**Archive** - Inactive items for reference
- Completed projects, old notes

## Daily Workflow

1. **Morning**: Check `00_Inbox/` for captures from yesterday
2. **During day**: Capture to `00_Inbox/` quickly
3. **End of day**: Run `/daily-review` to process and plan
4. **Weekly**: Run `/weekly-synthesis` to find patterns

## Templates

Located in `06_Metadata/Templates/`:
- Daily Note Template
- Project Template
- Research Note Template
- Area Template
- Weekly Synthesis Template

## Helper Scripts

```bash
# View vault statistics
bash .opencode/scripts/vault-stats.sh

# Migration guidance
bash .opencode/scripts/migrate-existing.sh
```

## MCP Integrations (Optional)

Configure in `.opencode/opencode.json`:
- **Gemini Vision** - Image/document analysis (requires `GEMINI_API_KEY`)
- **Firecrawl** - Web scraping (requires `FIRECRAWL_API_KEY`)

---

*Built with [OpenCode](https://opencode.ai) • Inspired by [Claudesidian](https://github.com/heyitsnoah/claudesidian)*
