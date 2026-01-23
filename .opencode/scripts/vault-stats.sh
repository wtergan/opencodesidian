#!/bin/bash

# Vault Statistics Script
# Shows basic stats about your OpenVault PARA system

echo "=== OpenVault Statistics ==="
echo ""

echo "📝 Note Counts by PARA Folder:"
echo "  Inbox:       $(find 00_Inbox -name "*.md" 2>/dev/null | wc -l | tr -d ' ')"
echo "  Projects:    $(find 01_Projects -name "*.md" 2>/dev/null | wc -l | tr -d ' ')"
echo "  Areas:       $(find 02_Areas -name "*.md" 2>/dev/null | wc -l | tr -d ' ')"
echo "  Resources:   $(find 03_Resources -name "*.md" 2>/dev/null | wc -l | tr -d ' ')"
echo "  Archive:     $(find 04_Archive -name "*.md" 2>/dev/null | wc -l | tr -d ' ')"
echo "  Metadata:    $(find 06_Metadata -name "*.md" 2>/dev/null | wc -l | tr -d ' ')"
echo "  Old Vault:   $(find 07_OLD_VAULT -name "*.md" 2>/dev/null | wc -l | tr -d ' ')"
echo ""

echo "📎 Attachments:"
echo "  Organized:   $(find 05_Attachments/Organized -type f 2>/dev/null | wc -l | tr -d ' ')"
echo "  Unprocessed: $(find 05_Attachments/Unprocessed -type f 2>/dev/null | wc -l | tr -d ' ')"
echo ""

echo "📊 Total Notes: $(find . -name "*.md" -not -path "./.opencode*" -not -path "./.obsidian*" 2>/dev/null | wc -l | tr -d ' ')"
echo ""

echo "🔄 Recent Activity (last 7 days):"
find . -name "*.md" -mtime -7 -type f -not -path "./.opencode*" 2>/dev/null | head -10 | while read file; do
    echo "  - $(basename "$file")"
done

echo ""
echo "📁 OpenCode Commands: $(ls .opencode/commands/*.md 2>/dev/null | wc -l | tr -d ' ')"
echo "🛠️  OpenCode Skills:   $(ls -d .opencode/skills/*/ 2>/dev/null | wc -l | tr -d ' ')"
