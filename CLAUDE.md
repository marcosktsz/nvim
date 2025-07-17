# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal Neovim configuration powered by Lazy.nvim plugin manager. The config follows a modular Lua structure with modern UI tweaks optimized for speed and clarity.

## Architecture

### Core Structure
- **Entry point**: `init.lua` - loads `kita.core` and `kita.lazy`
- **Core configuration**: `lua/kita/core/`
  - `options.lua` - Neovim settings (2-space tabs, relative numbers, etc.)
  - `keymaps.lua` - Key mappings with space as leader
- **Plugin management**: `lua/kita/lazy.lua` - Lazy.nvim bootstrap and setup
- **Plugin configurations**: `lua/kita/plugins/` - Individual plugin configs
- **LSP configurations**: `lua/kita/plugins/lsp/` - Language server setups

### Key Configuration Details
- Uses 2-space indentation for all files
- Leader key is space
- Python host program: `/Users/marco/.asdf/shims/python`
- Lazy.nvim auto-installs plugins on first run
- Format-on-save is commented out but available via `<leader>mp`

## Plugin Ecosystem

### Core Plugins
- **snacks.nvim**: Main fuzzy finder and picker
- **oil.nvim**: File explorer (replaces netrw)
- **blink.cmp**: Completion engine
- **supermaven-nvim**: AI completion and chat
- **nvim-lspconfig + mason.nvim**: Language servers
- **conform.nvim**: Code formatting
- **nvim-treesitter**: Syntax highlighting
- **lazygit.nvim**: Git interface

### Installed Language Servers & Tools
Via mason-tool-installer:
- prettier, stylua, isort, debugpy
- basedpyright, ruff (Python)
- lua-language-server
- emmet-language-server
- tailwindcss-language-server
- vtsls (TypeScript)

## Development Commands

### Plugin Management
```bash
# Open Neovim (plugins auto-install on first run)
nvim

# Update plugins (from within Neovim)
:Lazy update

# Check plugin status
:Lazy
```

### Formatting
```bash
# Format current file/selection (within Neovim)
<leader>mp  # Uses conform.nvim with prettier/stylua/etc.
```

### Git Workflow
```bash
# Open LazyGit interface
<leader>lg

# Git operations via keymaps
<leader>gs  # Git status
<leader>gb  # Git branches
<leader>gf  # Git files
```

### Key Keybindings
- `<leader>ff` - Find files (snacks picker)
- `<leader>oo` - Open Oil file explorer
- `<leader>ca` - Code actions (LSP)
- `<leader>rn` - Rename symbol (LSP)
- `<leader>cp` - Copy relative file path to clipboard
- `<leader>ss` - Save file
- `<leader>mp` - Format file/selection
- `<leader>db/dc/de/dt/dx` - Debug operations

## File Organization

When modifying this config:
- Add new plugins to `lua/kita/plugins/`
- LSP configs go in `lua/kita/plugins/lsp/`
- Core settings in `lua/kita/core/`
- Follow existing plugin structure pattern (return table with setup function)
- Use lazy loading with appropriate events for performance

## Installation Requirements

- Neovim >= 0.11.0
- ripgrep (for live grep)
- lazygit (for git workflow)
- A Nerd Font (recommended: JetBrainsMono Nerd Font)

## Special Features

- Auto-syncs background color with terminal/tmux
- Neovide GUI integration
- Tmux/Zellij navigation integration
- AI completion with Supermaven
- Built-in debugging with nvim-dap
- Database tools (vim-dadbod)

