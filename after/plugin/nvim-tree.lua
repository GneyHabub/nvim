require("nvim-tree").setup({
git = {
  enable = true,
  ignore = false,
  timeout = 500,
},
})

vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NvimTreeFocus<CR>")

require'nvim-web-devicons'.setup {}
