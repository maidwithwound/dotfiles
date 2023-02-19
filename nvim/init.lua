-- vim.cmd [[packadd packer.nvim]]

-- require('packer').startup(function(use)
--   -- ui
--   use 'morhetz/gruvbox'
--   -- 'shaunsingh/nord.nvim'
-- 
--   -- coding specefic
--   -- {"neoclide/coc.nvim", branch="release"}
--   use 'preservim/nerdtree'
--   use 'preservim/tagbar'
--   use 'mfussenegger/nvim-dap'
--   use 'rcarriga/nvim-dap-ui'
--   use 'neovim/nvim-lspconfig' -- nvim-cmp {{{
--   use 'hrsh7th/cmp-nvim-lsp' -- lsp completion
--   use 'hrsh7th/cmp-buffer' -- buffer completion {{{
--   use 'hrsh7th/cmp-path' -- }}}
--   use 'hrsh7th/cmp-cmdline'
--   use 'simrat39/rust-tools.nvim' -- rust completion (over rust-analyzer)
--   use 'hrsh7th/nvim-cmp' 
--   use 'mattn/emmet-vim' -- }}}
-- 
--   -- ui
--   use 'kyazdani42/nvim-web-devicons'
--   use 'akinsho/bufferline.nvim'
-- 
--   -- tools
--   use { 'phaazon/hop.nvim', run=function() require'hop'.setup() end }
--   use 'nvim-lua/popup.nvim' -- i dunno what these two plugin does
--   use 'nvim-lua/plenary.nvim'
--   use 'nvim-telescope/telescope.nvim' -- modern fuzzy analog
--   use 'hood/popui.nvim'
--   -- {'nvim-treesitter/nvim-treesitter', run=vim.cmd ':TSUpdate'}
-- 
--   -- syntax
--   use 'axvr/org.vim'
--   use 'bfrg/vim-cpp-modern'
--   use 'sheerun/vim-polyglot'
--   use 'frazrepo/vim-rainbow'
-- end)
 
require("plugins")
require("sets") -- sets
require("maps") -- keybinds?
require("plugins.nvimdap")
require("plugins.nvim-cmp.nvimcmp")
require("plugins.nerdtree")
require("plugins.bufferline")
require("plugins.emmet")
vim.cmd 'source ~/.config/nvim/themes.vim'

-- plugin settings
-- vim.cmd 'source ~/.config/nvim//cocnvim.vim'
-- vim.cmd 'source ~/.config/nvim//nerdtree.vim'
