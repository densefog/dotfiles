-- setup lazy
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


require("lazy").setup({
  --"folke/tokyonight.nvim",
  -- { "catppuccin/nvim", name = "catppuccin" },
  -- "tomasiser/vim-code-dark",
  -- 'Mofiqul/vscode.nvim',
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "onedark"
    end
  },
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'                  -- optional, updated every week. (see issue #1193)
  },
  "folke/which-key.nvim",
  --{ "folke/neoconf.nvim", cmd = "Neoconf" },
  --"folke/neodev.nvim",
  "nvim-lualine/lualine.nvim", -- bottom line
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
  },
  --"rrethy/nvim-treesitter-endwise", -- end of function help
  "tpope/vim-endwise",
  "tpope/vim-fugitive",
  "tpope/vim-unimpaired",
  -- telescope
  {
    "nvim-telescope/telescope.nvim", 
    branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {'junegunn/fzf', build = "fzf#install()"},
  { 'junegunn/fzf.vim'},
  "skwp/greplace.vim",              -- Gsearch and replace for text in files

  "rizzatti/dash.vim",              -- dash documentation
  "kburdett/vim-nuuid",             -- generate a UUID
  "scrooloose/nerdcommenter",       -- comment out code
  "christoomey/vim-tmux-navigator", -- tmux / vim navigation
  "janko-m/vim-test",               -- shortcuts for testing
  "esamattis/slimux",               -- tmux testing integration
  -- lsp integration
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "mhinz/vim-mix-format", -- elixir formatting
  ----"mfussenegger/nvim-dap",
  -- "jose-elias-alvarez/null-ls.nvim", -- for formatting
  "mfussenegger/nvim-lint", -- linting
  --
  -- git gutter
  -- "airblade/vim-gitgutter",
  "lewis6991/gitsigns.nvim",
  -- Completion
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  -- Vsnip
  --'hrsh7th/cmp-vsnip',
  --'hrsh7th/vim-vsnip',
  -- Lua Snip
  --"saadparwaiz1/cmp_luasnip",
  --"L3MON4D3/LuaSnip",
   "dcampos/nvim-snippy",
   "dcampos/cmp-snippy",
  -- end snippets
  "MattesGroeger/vim-bookmarks",  -- bookmarks
  --"terryma/vim-multiple-cursors", -- sublime ish functionality
  "mg979/vim-visual-multi", -- multiple cursors
  "cappyzawa/trim.nvim", -- trim whitespace
})
