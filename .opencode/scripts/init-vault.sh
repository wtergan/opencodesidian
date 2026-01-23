#!/bin/bash

# OpenVault Initialization Script
# Creates PARA directory structure for a fresh vault

set -e

echo "🚀 OpenVault Setup"
echo "=================="
echo ""

# PARA directories
dirs="00_Inbox 01_Projects 02_Areas 03_Resources 04_Archive 06_Metadata"
attachment_dirs="05_Attachments/Organized 05_Attachments/Unprocessed"
metadata_dirs="06_Metadata/Templates 06_Metadata/Reference"
opencode_dirs=".opencode/commands .opencode/skills .opencode/scripts"

echo "Creating PARA structure..."

for dir in $dirs; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "  ✅ Created: $dir/"
  else
    echo "  ℹ️  Exists: $dir/"
  fi
done

for dir in $attachment_dirs; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "  ✅ Created: $dir/"
  else
    echo "  ℹ️  Exists: $dir/"
  fi
done

for dir in $metadata_dirs; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "  ✅ Created: $dir/"
  else
    echo "  ℹ️  Exists: $dir/"
  fi
done

echo ""
echo "Creating OpenCode structure..."

for dir in $opencode_dirs; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "  ✅ Created: $dir/"
  else
    echo "  ℹ️  Exists: $dir/"
  fi
done

echo ""
echo "🎉 Vault initialized!"
echo ""
echo "Directory structure:"
echo "  00_Inbox/        - Quick capture"
echo "  01_Projects/     - Active projects with deadlines"
echo "  02_Areas/        - Ongoing responsibilities"
echo "  03_Resources/    - Reference materials"
echo "  04_Archive/      - Completed/inactive items"
echo "  05_Attachments/  - Media files"
echo "  06_Metadata/     - Templates and docs"
echo ""
echo "Next steps:"
echo "  1. Open this folder in Obsidian"
echo "  2. Run: opencode"
echo "  3. Try: /thinking-partner 'What should I work on?'"
