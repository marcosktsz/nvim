-- set leader key to space
vim.g.mapleader = " "

local km = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode

-- clear search highlights
km.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- save
km.set("n", "<leader>ss", "<cmd>w<CR>", { desc = "save" })
km.set("n", "<leader>SS", "<cmd>w<CR>", { desc = "save all" })
km.set("n", "<leader>qqq", "<cmd>qa<CR>", { desc = "quit all" })

km.set("n", "J", "mzJ`z")

km.set("n", "<C-d>", "<C-d>zz")
km.set("n", "<C-u>", "<C-u>zz")

km.set("i", "C-]", "<Esc>l")

km.set("n", "n", "nzzzv")
km.set("n", "N", "Nzzzv")

km.set("n", "Q", "<nop>")

-- delete single character without copying into register
km.set("n", "x", '"_x')

-- increment/decrement numbers
km.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
km.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
km.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

km.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
km.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
km.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
km.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
km.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab

km.set("v", "J", ":m '>+1<CR>gv=gv")
km.set("v", "K", ":m '<-2<CR>gv=gv")
