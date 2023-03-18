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
  "folke/tokyonight.nvim",
  --"Mofiqul/vscode.nvim",
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly'                  -- optional, updated every week. (see issue #1193)
  },
  "folke/which-key.nvim",
  --{ "folke/neoconf.nvim",                       cmd = "Neoconf" },
  "folke/neodev.nvim",
  "nvim-lualine/lualine.nvim",                                                                               -- bottom line
  "nvim-treesitter/nvim-treesitter",                                                                         --
  "rrethy/nvim-treesitter-endwise",
  { 'nvim-telescope/telescope.nvim',            tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' } }, -- find / grep
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  "rizzatti/dash.vim",                                                                                       -- dash documentation
  "kburdett/vim-nuuid",                                                                                      -- generate a UUID
  "scrooloose/nerdcommenter",                                                                                -- comment out code
  "skwp/greplace.vim",                                                                                       -- Gsearch and replace for text in files
  "christoomey/vim-tmux-navigator",                                                                          -- tmux / vim navigation
  "janko-m/vim-test",                                                                                        -- shortcuts for testing
  "esamattis/slimux",                                                                                        -- tmux testing integration
  -- lsp integration
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "mfussenegger/nvim-dap",
  "mfussenegger/nvim-lint",
  "jose-elias-alvarez/null-ls.nvim", -- for formatting
  "lewis6991/gitsigns.nvim",         -- git signs
  "dcampos/nvim-snippy",             -- snippets
})
