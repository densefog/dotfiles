require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "elixir", "heex", "eex", "javascript", "json", "lua", "rust", "ruby", "typescript", "vim", "sql" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  endwise = {
    enable = true,
  },
  disable = {
    "markdown"
  }
}
