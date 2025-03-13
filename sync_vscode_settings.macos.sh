#!/bin/bash

# sync_vscode_settings.sh
# Script to synchronize VSCode settings with this repository

# Define colors for output
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${YELLOW}Syncing VSCode settings to repository...${NC}"

# VSCode settings paths
VSCODE_SETTINGS="$HOME/Library/Application Support/Code/User/settings.json"
VSCODE_KEYBINDINGS="$HOME/Library/Application Support/Code/User/keybindings.json"

# Repository paths
REPO_SETTINGS="./settings.json"
REPO_KEYBINDINGS="./keybindings.json"

# Sync settings.json
if [ -f "$VSCODE_SETTINGS" ]; then
    cp "$VSCODE_SETTINGS" "$REPO_SETTINGS"
    echo -e "${GREEN}✓${NC} Synced settings.json"
else
    echo -e "${YELLOW}⚠ Warning:${NC} settings.json not found at $VSCODE_SETTINGS"
fi

# Sync keybindings.json
if [ -f "$VSCODE_KEYBINDINGS" ]; then
    cp "$VSCODE_KEYBINDINGS" "$REPO_KEYBINDINGS"
    echo -e "${GREEN}✓${NC} Synced keybindings.json"
else
    echo -e "${YELLOW}⚠ Warning:${NC} keybindings.json not found at $VSCODE_KEYBINDINGS"
fi

# Generate list of installed extensions
code --list-extensions > extensions.txt
echo -e "${GREEN}✓${NC} Generated extensions.txt"

echo -e "${GREEN}Sync complete!${NC}"
echo -e "${YELLOW}Note:${NC} Please commit and push these changes to your repository."
