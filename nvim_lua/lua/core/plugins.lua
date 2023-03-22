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
  -- "folke/tokyonight.nvim",
  {"catppuccin/nvim", name = "catppuccin"},
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
  },                                -- highlighting code
  "rrethy/nvim-treesitter-endwise", -- end of function help
  {
    {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
  }, -- find / grep
  {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make"
    }
  },
  --"kelly-lin/telescope-ag",
  "rizzatti/dash.vim",              -- dash documentation
  "kburdett/vim-nuuid",             -- generate a UUID
  "scrooloose/nerdcommenter",       -- comment out code
  "skwp/greplace.vim",              -- Gsearch and replace for text in files
  "christoomey/vim-tmux-navigator", -- tmux / vim navigation
  "janko-m/vim-test",               -- shortcuts for testing
  "esamattis/slimux",               -- tmux testing integration
  -- lsp integration
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  ----"mfussenegger/nvim-dap",
  "jose-elias-alvarez/null-ls.nvim", -- for formatting
  -- "mfussenegger/nvim-lint", -- linting
  "lewis6991/gitsigns.nvim", -- git signs
  -- Completion
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  -- Lua Snip
  "saadparwaiz1/cmp_luasnip",
  "L3MON4D3/LuaSnip",
  "MattesGroeger/vim-bookmarks", -- bookmarks
  "terryma/vim-multiple-cursors", -- sublime ish functionality
})
