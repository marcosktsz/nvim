# Simply the most swag neovim config of all time

![Screenshot](./screenshots/base.png)

![Screenshot](./screenshots/debugger.png)

![Screenshot](./screenshots/ai.png)

This is my personal Neovim configuration for 2025, using [Lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management. It includes a robust set of plugins and custom shortcuts tailored for an efficient coding environment.

## Prerequisites

- Neovim >= 0.11.0
- [ripgrep](https://github.com/BurntSushi/ripgrep) - Required for snacks picker live grep
- [lazygit](https://github.com/jesseduffield/lazygit) - Cool git integration
- A [Nerd Font](https://www.nerdfonts.com/) - Required for icons (I recommend JetBrainsMono Nerd Font)

## Features

### Key Plugins

- **[snacks picker](https://github.com/snacks-picker/snacks-picker.nvim)**: Fuzzy finder for files, buffers, and more.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Enhanced syntax highlighting and code navigation.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Easy configuration for built-in LSP support.
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: Fast and customizable statusline.
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** & **[vim-fugitive](https://github.com/tpope/vim-fugitive)**: Advanced Git integration, in-line blame, and full command suite.
- **[oil.nvim](https://github.com/stevearc/oil.nvim)**: A modern file explorer that provides an alternative to netrw.
- **[trouble.nvim](https://github.com/folke/trouble.nvim)**: A pretty diagnostics list.
- **[harpoon](https://github.com/ThePrimeagen/harpoon)**: Quick file navigation.
- **[flash.nvim](https://github.com/folke/flash.nvim)**: Enhanced motion and search.
- **[conform.nvim](https://github.com/stevearc/conform.nvim)**: Fast and flexible formatter.
- **[which-key.nvim](https://github.com/folke/which-key.nvim)**: On-the-fly keybinding hints.
- **[surround.nvim](https://github.com/kylechui/nvim-surround)**: Surround text objects easily.
- **[comment.nvim](https://github.com/numToStr/Comment.nvim)**: Fast, context-aware commenting.
- **[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)**: Indentation guides with context.
- **[noice.nvim](https://github.com/folke/noice.nvim)**: Enhanced Neovim UI for command line, messages, and LSP.
- **[dressing.nvim](https://github.com/stevearc/dressing.nvim)**: Improved prompts/UI for select/input.
- **[ufo.nvim](https://github.com/kevinhwang91/nvim-ufo)**: Powerful code folding.
- **[tmux.nvim](https://github.com/aserowy/tmux.nvim)**: Seamless tmux integration.
- **[csv.nvim](https://github.com/martineausimon/nvim-csv)**: Edit and pretty print CSV files.
- **[dadbod.nvim](https://github.com/tpope/vim-dadbod)**: Database integration (SQL inside Neovim).
- **[blink.nvim](https://github.com/atornblad/blink.nvim)**: Improved visual motion and selection feedback.
- **[render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim)**: Beautiful Markdown rendering with extensive options.
- **[undo-tree](https://github.com/mbbill/undotree)**: Visualize and browse undo history (via an equivalent Lua plugin).
- **[nvim-dap](https://github.com/mfussenegger/nvim-dap)**: Debug Adapter Protocol core integration.
- **[lspsaga.nvim](https://github.com/nvimdev/lspsaga.nvim)**: UI and UX improvements for LSP.
- **[supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim)**: Lightning-fast AI code completions.
- **[goose.nvim](https://github.com/azorng/goose.nvim)**: Modern in-editor AI interface.
- **[copilot-lsp](https://github.com/copilotlsp-nvim/copilot-lsp)**: GitHub Copilot LSP integration with NES (Next Edit Suggestions).
- **[mini.diff](https://github.com/echasnovski/mini.diff)**: Minimal and fast diffs.
- **[lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)**: Quick access to lazygit within Neovim.
- **[context.nvim](https://github.com/nvim-treesitter/nvim-treesitter-context)**: Persistent code context for long files.

### Key Features

- 🚀 Fast startup with lazy loading
- 📦 Automatic plugin management
- 🔍 Fuzzy finding with snacks picker
- 🐛 Integrated debugging
- 📝 Code completion using blink
- 🔧 Format on save
- 🎯 Git integration
- ⚡ Tmux/Zellij integration
- 🤖 Multiple AI integrations (Goose, Supermaven, Copilot)

### Keybindings

The `<Leader>` key is set to **`space`** in this configuration.

#### File Navigation

- **`<Leader>ff`**: Find files using snacks picker
- **`<Leader>fg`**: Git files
- **`<Leader>fb`**: Find buffers
- **`<Leader>fr`**: Recent files
- **`<Leader>oo`**: Open Oil file explorer

#### Git Integration

- **`<Leader>lg`**: Open LazyGit
- **`<Leader>gs`**: Git status with snacks picker
- **`<Leader>gb`**: Git branches with snacks picker
- **`<Leader>gf`**: Git files with snacks picker

#### LSP Features

- **`<Leader>ca`**: Code actions
- **`<Leader>rn`**: Rename symbol
- **`gr`**: Show references
- **`gd`**: Go to definition
- **`K`**: Show documentation
- **`<Leader>[d or ]d`**: Next/Previous lspsaga diagnostic
- **`<Leader>d`**: Inline lspsaga diagnostic

#### Debugging

- **`<Leader>db`**: Toggle breakpoint
- **`<Leader>dc`**: Start/Continue debugging
- **`<F8>`**: Start/Continue debugging
- **`<F9>`**: Step into
- **`<F10>`**: Step over
- **`<F11>`**: Step out
- **`<Leader>de`**: Evaluate variable under cursor
- **`<Leader>dt`**: Toggle debugger UI
- **`<Leader>dx`**: Terminate debugger

#### AI and Code Assistance

- **`<C-g>`**: Open Goose AI input
- **`<Leader>gos`**: Select Goose session
- **`<C-f>`**: Accept Supermaven suggestion
- **`<C-]>`**: Clear Supermaven suggestion
- **`<C-w>`**: Accept Supermaven word
- **`<C-a>`**: Apply Copilot NES (Next Edit Suggestions)

#### Other Features

- **`<Leader>zm`**: Toggle Zen Mode
- **`<Leader>xx`**: Toggle Trouble diagnostics
- **`<Leader>u`**: Show undo history
- **`<Leader>mp`**: Format file

## Installation

1. **Install Prerequisites**:

   ```bash
   # On macOS
   brew install neovim ripgrep fd lazygit goose
   ```

2. **Clone the repository**:

   ```bash
   git clone https://github.com/marcosktsz/nvim ~/.config/nvim
   ```

3. **Launch and enjoy**

Lazy will automatically bootstrap and install all preconfigured plugins on first launch.

## Customization

The configuration is organized into modules under `lua/kita/`. Key configuration files:

- `lua/kita/core/options.lua`: General Neovim settings
- `lua/kita/core/keymaps.lua`: Key mappings
- `lua/kita/plugins/`: Individual plugin configurations
- `lua/kita/plugins/ai.lua`: AI integrations (Goose, Supermaven, Copilot)
