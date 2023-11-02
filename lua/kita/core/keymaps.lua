vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>ss", ":w<CR>")
keymap.set("n", "<leader>=", "<C-w>=")

keymap.set("n", "<leader><F5>", ":UndotreeToggle<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- prev tab

-- plugin keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- toggle nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telscope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")

--harpoon keybindings
keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>")
keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>")
keymap.set("n", "<leader>h1", ":lua require('harpoon.ui').nav_file(1)")
keymap.set("n", "<leader>h2", ":lua require('harpoon.ui').nav_file(2)")
keymap.set("n", "<leader>h3", ":lua require('harpoon.ui').nav_file(3)")
keymap.set("n", "<leader>h4", ":lua require('harpoon.ui').nav_file(4)")

--oil
keymap.set("n", "<leader>oo", ":Oil --float<CR>", { desc = "Open parent directory" })

keymap.set("n", "<leader>zm", ":ZenMode<CR>")
