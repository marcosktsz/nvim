# Simply the most swag Neovim config of all time

![Screenshot](./screenshots/base.png)

![Screenshot](./screenshots/debugger.png)

This is my personal Neovim configuration for 2025, powered by [Lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management. It features a modular Lua layout, modern UI tweaks and a workflow tuned for speed and clarity.

---

## Structure & Loading

- Config root: `~/.config/nvim/`
- **Main entry**: [`init.lua`](./init.lua)
  - Loads: `kita.core` and `kita.lazy`
- **Core settings**: [`lua/kita/core/`](./lua/kita/core/)
  - `options.lua`: Neovim options
  - `keymaps.lua`: Key mappings
- **Plugins**: [`lua/kita/plugins/`](./lua/kita/plugins/)
- **Custom AI**: [`lua/kita/plugins/ai.lua`](./lua/kita/plugins/ai.lua)

**GUI & Terminal integration:**
- [Neovide](https://github.com/neovide/neovide) settings are auto-applied.
- The config will sync background color to your terminal and tmux, whenever your theme changes or you enter/exit Neovim—for a seamless look across tabs and splits!

---

## Prerequisites

- Neovim >= 0.11.0
- [ripgrep](https://github.com/BurntSushi/ripgrep) - for live grep
- [lazygit](https://github.com/jesseduffield/lazygit) - for built-in git workflow
- A [Nerd Font](https://www.nerdfonts.com/) (recommended: JetBrainsMono Nerd Fontn
---

## Features

### Key Plugins
*See full lists in `lua/kita/plugins/`*

#### Core & Navigation
- **snacks.nvim**: Fuzzy finder, picker, terminals
- **oil.nvim**: File explorer replacing netrw
- **harpoon**: Quick file marks
- **flash.nvim / telescope.nvim**: Lightning-fast jump/search

#### AI & Completion
- **blink.cmp**: Snippet & completion
- **supermaven-nvim**: Next-gen AI completion & chat

#### LSP & Syntax
- **nvim-lspconfig / mason.nvim / lspsaga.nvim**: Easy server/installer
- **nvimreesitter** (+autotag & context comment)

#### Git
- **gitsigns**: Gutter integrate
- **vim-fugitive, lazygit.nvim**: Full-featured git

#### UI & Editing
- **lualine.nvim, noice.nvim, dressing.nvim**: UI polish
- **which-key.nvim / indent-blankline.nvim / nvim-highlight-colors**
- **nvim-surround, Comment.nvim, nvim-autopairs**
- **nvim-ufo**: Powerful folding

#### Debugging, Format, DB
- **nvim-dap, nvim-dap-ui, trouble.nvim**: Debug & diagnostics
- **conform.nvim**: Formatter
- **vim-dadbod, vim-dadbod-ui, csvview.nvim**

#### Terminal/Tmux/Zellij
- **vim-tmux-navigator, zellij-nav.nvim**

#### Notes/Todo
- **todo-comments.nvim, zen-mode.nvim**

---

## Major Features

- 🚀 Fast startup with aggressive lazy loading
- 📦 Easy plugin management (auto bootstrap)
- 🔍 Snacks picker for almost everything
- 🐛 Built-in debugging and LSP
- 🎯 Full git & branch workflow
- ⚡ Tmux & Zellij seamless navigation
- 📝 Format-on-save by default
- 🖼️ Color/theme sync across terminal/tmux

---

## Example Keybindings

_<Leader> is `space`_

**File & Code**
- `<Leader>ff` — Find files (snacks picker)
- `<Leader>oo` — Open Oil
- `<Leader>ca` — Code action (LSP)
- `<Leader>rn` — Rename symbol (LSP)
- `gr`, `gd` — References, Def (LSP)

**Git**
- `<Leader>lg` — LazyGit
- `<Leader>gs`/`gb`/`gf` — Git status/branches/files

**Debug**
- `<Leader>db`/`dc`/`de`/`dt`/`dx` — Full dap debugging suite

**AI**
- `<C-f>` — Supermaven accept

**Other**
- `<Leader>zm` — Zen Mode
- `<Leader>xx` — Trouble diagnostics panel
- `<Leader>u` — Undo history picker

---

## Install

```bash
brew install neovim ripgrep fd lazygit
# or use your preferred Linux package manager

git clone https://github.com/marcosktsz/nvim ~/.config/nvim
nvim # open and plugins install automatically!
```

---

## Customize

- Core Options: [`lua/kita/core/options.lua`](./lua/kita/core/options.lua)
- Keymaps:      [`lua/kita/core/keymaps.lua`](./lua/kita/core/keymaps.lua)
- Plugins:      [`lua/kita/plugins/`](./lua/kita/plugins/)

[Happy hacking!]
