#!/bin/bash

# OpenVault Migration Helper
# Assists with migrating content from 07_OLD_VAULT to PARA structure

set -e

echo "📦 OpenVault Migration Helper"
echo "============================="
echo ""

if [ ! -d "07_OLD_VAULT" ]; then
    echo "❌ No 07_OLD_VAULT directory found. Nothing to migrate."
    exit 0
fi

echo "Found old vault content:"
echo ""

# Count files in each old directory
for dir in 07_OLD_VAULT/*/; do
    if [ -d "$dir" ]; then
        count=$(find "$dir" -name "*.md" 2>/dev/null | wc -l | tr -d ' ')
        dirname=$(basename "$dir")
        echo "  📁 $dirname: $count notes"
    fi
done

echo ""
echo "Suggested migration mapping:"
echo ""
echo "  07_OLD_VAULT/notes/      → 03_Resources/"
echo "  07_OLD_VAULT/projects/   → 01_Projects/ or 04_Archive/"
echo "  07_OLD_VAULT/journal/    → 02_Areas/Journal/"
echo "  07_OLD_VAULT/ideas/      → 00_Inbox/ (for processing)"
echo "  07_OLD_VAULT/memories/   → 03_Resources/Memory/"
echo "  07_OLD_VAULT/todos/      → 01_Projects/ (integrate with projects)"
echo "  07_OLD_VAULT/active-recall/ → 04_Archive/ (if using Anki now)"
echo ""
echo "To migrate, you can:"
echo "  1. Run OpenCode and use /inbox-processor to triage"
echo "  2. Move files manually with 'mv 07_OLD_VAULT/[folder]/* [destination]/'"
echo "  3. Ask OpenCode: 'Help me migrate my old notes to PARA'"
echo ""
echo "⚠️  This script doesn't move files automatically."
echo "    Use OpenCode commands for intelligent migration assistance."
