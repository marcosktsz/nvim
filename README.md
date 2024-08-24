# Simply the most beautiful neovim config you'll ever witness

![Alpha](./screenshots/alpha.png)

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

### Keybindings

The `<Leader>` key is set to **`space`** in this configuration.

- **`<Leader>ff`**: Find files using Telescope.
- **`<Leader>ee`**: NvimTree.
- **`<Leader>fg`**: Live grep with Telescope.
- **`<Leader>fb`**: Find buffers with Telescope.
- **`<Leader>fr`**: Recent files with Telescope.
- **`<Leader>gs`**: Git status with Gitsigns.
- **`<Leader>gh`**: View Git hunk.
- **`<Leader>gd`**: Go to definition with LSP.
- **`<Leader>rn`**: Rename symbol with LSP.
- **`<Leader>ca`**: Code actions with LSP.
- **`<Leader>oo`**: Open Oil file explorer.

## Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/marcosktsz/nvim ~/.config/nvim

   ```

2. **Launch nvim and enjoy**
   Lazy will automatically bootstrap the preconfigured plugins

## Screenshots

![files](./screenshots/files.png)

![Telescope](./screenshots/telescope.png)

![Lazy](./screenshots/lazy.png)
