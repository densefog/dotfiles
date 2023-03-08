require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "elixir", "heex", "eex", "lua", "rust", "ruby", "vim" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
  endwise = {
    enable = true,
  },
}
