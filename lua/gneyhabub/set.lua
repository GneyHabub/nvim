vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 8

vim.api.nvim_exec([[
  augroup eslint_autocmds
    autocmd!
    autocmd BufWritePre *.js,*.ts,*.tsx,*.jsx :EslintFixAll
  augroup END
]], false)

