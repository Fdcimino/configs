local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("ciminof.remap")
require("ciminof.set")


require("lazy").setup({
{'christoomey/vim-tmux-navigator'},
{ "folke/neodev.nvim", opts = {} },
{ 'kepano/flexoki-neovim', name = 'flexoki' },
{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
{'williamboman/mason.nvim'},
{'williamboman/mason-lspconfig.nvim'},
{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
{'neovim/nvim-lspconfig'},
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp'},
{'L3MON4D3/LuaSnip'},
{'tpope/vim-fugitive'},
{'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
},
{'akinsho/toggleterm.nvim', version = "*", config = true}
})


vim.cmd("colorscheme flexoki-dark")
