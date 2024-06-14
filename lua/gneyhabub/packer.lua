-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

-- Packer can manage itself
use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  -- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use ('theprimeagen/harpoon')
use ('mbbill/undotree')
use ('tpope/vim-fugitive')
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use ('github/copilot.vim')
use ('ThePrimeagen/vim-be-good')
use ('nvim-tree/nvim-web-devicons')
use ({
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
})
use({
  "dnlhc/glance.nvim",
  config = function()
    require('glance').setup({
      -- your configuration
    })
  end,
})
use ({
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
})
use ('airblade/vim-gitgutter')
use { "catppuccin/nvim", as = "catppuccin" }
use { 'shaunsingh/moonlight.nvim' }
use ({'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim'})
use ('ray-x/go.nvim')
use("petertriho/nvim-scrollbar")
use {
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
        require('distant'):setup()
    end
}
use ('https://codeberg.org/esensar/nvim-dev-container')
end)

