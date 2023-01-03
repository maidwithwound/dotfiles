require "paq" {
  "savq/paq-nvim";

  -- ui
  -- 'morhetz/gruvbox';
  'shaunsingh/nord.nvim';

  -- coding specefic
  -- {"neoclide/coc.nvim", branch="release"};
  'preservim/nerdtree';
  'preservim/tagbar';
  'mfussenegger/nvim-dap';
  'rcarriga/nvim-dap-ui';
  'neovim/nvim-lspconfig'; -- nvim-cmp {{{
  'hrsh7th/cmp-vsnip'; -- snippet completion
  'hrsh7th/vim-vsnip'; -- snippet engine
  'hrsh7th/cmp-nvim-lsp'; -- lsp completion
  'hrsh7th/cmp-buffer'; -- buffer completion {{{
  'hrsh7th/cmp-path'; -- }}}
  'hrsh7th/cmp-cmdline';
  'simrat39/rust-tools.nvim'; -- rust completion (over rust-analyzer)
  'hrsh7th/nvim-cmp'; 
  'mattn/emmet-vim'; -- }}}

  -- ui
  'kyazdani42/nvim-web-devicons';
  'akinsho/bufferline.nvim';

  -- tools
  {'phaazon/hop.nvim', run=require'hop'.setup()};
  'nvim-lua/popup.nvim'; -- i dunno what these two plugin does
  'nvim-lua/plenary.nvim';
  'nvim-telescope/telescope.nvim'; -- modern fuzzy analog
  'hood/popui.nvim';
  -- {'nvim-treesitter/nvim-treesitter', run=vim.cmd ':TSUpdate'};

  -- syntax
  'axvr/org.vim';
  'bfrg/vim-cpp-modern';
  'sheerun/vim-polyglot';
  'frazrepo/vim-rainbow';
}

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
