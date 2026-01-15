#!/bin/bash

# Define paths
CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDE_PACKS="$HOME/.claude/packs/wellness"
CLAUDE_COMMANDS="$HOME/.claude/commands"

echo "🌿 Connecting Wellness Pack to Global Brain..."

# 1. Create the Pack folder
mkdir -p "$CLAUDE_PACKS/commands"

# 2. Copy Rules
cp "$CURRENT_DIR/rules.md" "$CLAUDE_PACKS/rules.md"

# 3. Copy Commands
# (No templates to link here, so we just direct copy)
cp "$CURRENT_DIR/commands/"*.md "$CLAUDE_PACKS/commands/"

# 4. Link to Global Commands (for easy access in /help)
cp "$CLAUDE_PACKS/commands/"*.md "$CLAUDE_COMMANDS/"

echo "✅ Wellness Pack Installed!"
echo "   Persona: Functional Medicine & Science"
