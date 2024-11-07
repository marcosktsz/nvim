# Simply the most beautiful neovim config you'll ever witness

![Screenshot](./screenshots/Screenshot.png)

This is my personal Neovim configuration for 2024, optimized with [Lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management. It includes a robust set of plugins and custom shortcuts tailored for an efficient coding environment.

## Features

### Key Plugins

- **[Telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)**: Fuzzy finder for files, buffers, and more.
- **[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)**: Enhanced syntax highlighting and code navigation.
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)**: Easy configuration for built-in LSP support.
- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)**: Fast and customizable statusline.
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)**: Autocompletion plugin with sources for LSP, snippets, and more.
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)**: Git integration with signs and hunk actions.
- **[alpha-nvim](https://github.com/goolord/alpha-nvim)**: Start screen with a customizable dashboard.
- **[oil.nvim](https://github.com/stevearc/oil.nvim)**: A modern file explorer that provides an alternative to netrw.
- **[trouble.nvim](https://github.com/folke/trouble.nvim)**: A pretty diagnostics list.
- **[harpoon](https://github.com/ThePrimeagen/harpoon)**: Quick file navigation.
- **[lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)**: Git integration with LazyGit.
- **[zen-mode.nvim](https://github.com/folke/zen-mode.nvim)**: Distraction-free coding.
- **[flash.nvim](https://github.com/folke/flash.nvim)**: Enhanced motion and search.

### Keybindings

The `<Leader>` key is set to **`space`** in this configuration.

#### File Navigation

- **`<Leader>ff`**: Find files using Telescope
- **`<Leader>fg`**: Live grep with Telescope
- **`<Leader>fb`**: Find buffers with Telescope
- **`<Leader>fr`**: Recent files with Telescope
- **`<Leader>oo`**: Open Oil file explorer

#### Git Integration

- **`<Leader>lg`**: Open LazyGit
- **`<Leader>gs`**: Git status with Telescope
- **`<Leader>gb`**: Git branches with Telescope
- **`<Leader>gf`**: Git files with Telescope

#### LSP Features

- **`<Leader>ca`**: Code actions
- **`<Leader>rn`**: Rename symbol
- **`gr`**: Show references
- **`gd`**: Go to definition
- **`K`**: Show documentation

#### Debug Features

- **`<Leader>db`**: Toggle breakpoint
- **`<Leader>dc`**: Continue debugger

#### Window Management

- **`<Leader>sv`**: Split window vertically
- **`<Leader>sh`**: Split window horizontally
- **`<Leader>se`**: Make splits equal size
- **`<Leader>sx`**: Close current split

#### Other Features

- **`<Leader>zm`**: Toggle Zen Mode
- **`<Leader>xx`**: Toggle Trouble diagnostics
- **`<Leader>u`**: Show undo history
- **`<Leader>mp`**: Format file

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/marcosktsz/nvim ~/.config/nvim
   ```

2. **Launch nvim and enjoy**

Lazy will automatically bootstrap the preconfigured plugins
