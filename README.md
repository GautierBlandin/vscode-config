# VSCode Settings Repository

This repository contains my personal Visual Studio Code settings, enabling consistent development environments across multiple machines.

## What's Included

- `settings.json`: Editor preferences and settings
- `keybindings.json`: Custom keyboard shortcuts
- `extensions.txt`: List of installed extensions

## Usage

### Syncing Settings to Repository

(Only for MacOS) To update this repository with your current VSCode settings, run:

```bash
./sync_vscode_settings.macos.sh
```

This will:
1. Copy your current settings.json and keybindings.json to this repository
2. Generate a list of installed extensions as extensions.txt

**Important**: `extensions.json` is not synced automatically. The repository maintainer needs to update it manually if needed.

### Importing Settings

To apply these settings to a new machine, you need to copy them to the appropriate location for your operating system:

#### macOS
```bash
cp settings.json ~/Library/Application\ Support/Code/User/
cp keybindings.json ~/Library/Application\ Support/Code/User/
```

#### Windows
```bash
copy settings.json %APPDATA%\Code\User\
copy keybindings.json %APPDATA%\Code\User\
```

#### Linux
```bash
cp settings.json ~/.config/Code/User/
cp keybindings.json ~/.config/Code/User/
```

### Installing Extensions

To install all extensions listed in the repository:

```bash
cat extensions.txt | xargs -L 1 code --install-extension
```
