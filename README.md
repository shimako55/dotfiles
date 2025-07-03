# dotfiles

My personal dotfiles for macOS development environment.

## Overview

This repository contains my personal configuration files for a macOS development environment, optimized for:
- Terminal productivity with modern CLI tools
- Kubernetes development workflow
- Neovim-based text editing
- Window management with yabai
- Japanese language support (OCR, TTS)

## Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Install Homebrew packages
./install-apps.sh

# Configure macOS system preferences
./setup-macos.sh

# Create symlinks (manual process - see Installation section)
```

## What's Included

### Shell Configuration (ZSH)
- **`.zshrc`** - Main configuration with starship, direnv, zoxide, asdf, atuin, and vim mode
- **`.zsh_aliases`** - Extensive aliases for enhanced productivity
- **`.zshenv`** - Environment variables
- **`.zprofile`**, **`.zlogin`** - Shell initialization files

### Terminal & Development Tools
- **Starship** - Cross-shell prompt with git status and kubernetes context
- **Neovim** - LazyVim configuration with custom plugins
- **WezTerm** - GPU-accelerated terminal with custom color scheme
- **Warp** - Modern terminal with AI features
- **k9s** - Terminal UI for Kubernetes with custom theme
- **lazygit** - Terminal UI for git

### Window Management
- **yabai** - Tiling window manager configuration
- **skhd** - Simple hotkey daemon for yabai control

### Custom Scripts (`bin/`)
- **`ocr.sh`** - OCR tool for PDF/images with Japanese support
- **`speak.sh`** - Text-to-speech using VOICEVOX
- **`voice.sh`** - Voice-related utilities
- **`fleeting-note.sh`** - Raycast script for Obsidian quick notes

### Modern CLI Replacements
- `eza` → `ls` (with icons and git status)
- `bat` → `cat` (with syntax highlighting)
- `btop` → `top` (better process viewer)
- `fd` → `find` (faster and more intuitive)
- `rg` → `grep` (ripgrep - faster search)
- `zoxide` → `cd` (smarter directory navigation)

## Installation

### Prerequisites
- macOS (tested on latest versions)
- [Homebrew](https://brew.sh/)
- Git

### Setup Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Install packages**
   ```bash
   ./install-apps.sh  # Installs all Brewfile packages
   ```

3. **Configure macOS settings**
   ```bash
   ./setup-macos.sh  # Sets system preferences
   ```

4. **Create symlinks**
   ```bash
   # ZSH configuration
   ln -sf ~/dotfiles/.zshrc ~/.zshrc
   ln -sf ~/dotfiles/.zshenv ~/.zshenv
   ln -sf ~/dotfiles/.zprofile ~/.zprofile
   ln -sf ~/dotfiles/.zlogin ~/.zlogin
   ln -sf ~/dotfiles/.zsh ~/.zsh

   # Config directory
   ln -sf ~/dotfiles/.config ~/.config

   # Other dotfiles
   ln -sf ~/dotfiles/.starship.toml ~/.starship.toml
   ln -sf ~/dotfiles/.yabairc ~/.yabairc
   ln -sf ~/dotfiles/.skhdrc ~/.skhdrc
   ln -sf ~/dotfiles/.warp ~/.warp

   ```

5. **Additional setup**
   ```bash
   # Start yabai and skhd
   yabai --start-service
   skhd --start-service

   # Install asdf plugins (for language version management)
   asdf plugin add nodejs
   asdf plugin add python
   # ... add other languages as needed
   ```

## Key Features

### Productivity Aliases
- `ll`, `la`, `lt` - Enhanced directory listings
- `g` - Git shortcuts (e.g., `gst` for status, `gco` for checkout)
- `k` - Kubectl shortcuts

### Development Environment
- **asdf** - Universal version manager for Node.js, Python, etc.
- **direnv** - Per-directory environment variables
- **atuin** - Shell history sync and search
- **fzf** - Fuzzy finder integration

### Japanese Language Support
- OCR script supports Japanese text recognition
- VOICEVOX integration for Japanese text-to-speech

## Customization

### Adding New Aliases
Edit `.zsh/.zsh_aliases` and add your custom aliases:
```bash
alias myalias='your-command-here'
```

### Modifying Neovim Configuration
Neovim uses LazyVim. Configuration files are in `.config/nvim/`:
- `lua/config/` - Core configuration
- `lua/plugins/` - Plugin configurations

### Updating Brewfile
Add new packages to `Brewfile` and run:
```bash
brew bundle
```

## Troubleshooting

### ZSH plugins not loading
Ensure all required tools are installed:
```bash
brew install starship direnv zoxide asdf atuin
```

### Yabai permissions
Yabai requires accessibility permissions:
1. System Preferences → Security & Privacy → Privacy → Accessibility
2. Add and enable yabai

### OCR script not working
Requires macOS 13.0+ for Vision framework support

## License

This repository is for personal use. Feel free to fork and modify for your own needs.

## Acknowledgments

- LazyVim for the excellent Neovim framework
- The Homebrew community for package management
- All the open-source tool maintainers
