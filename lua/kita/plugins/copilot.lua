return{
  "github/copilot.vim",
  vim.keymap.set("i", "<C-f>", 'copilot#Accept("<CR>")',{
    expr = true,
    replace_keycodes = false
  })
}
