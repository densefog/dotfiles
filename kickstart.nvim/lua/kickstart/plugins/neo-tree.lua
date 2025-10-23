-- nvim-tree is a file explorer for Neovim
-- https://github.com/nvim-tree/nvim-tree.lua

return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  lazy = false,
  keys = {
    { '\\', ':NvimTreeFindFile<CR>', desc = 'NvimTree find file', silent = true },
    { '<Leader>n', ':NvimTreeFindFile<CR>', desc = 'NvimTree find file', silent = true },
  },
  opts = {
    disable_netrw = true,
    hijack_netrw = true,
    sync_root_with_cwd = true,
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
      icons = {
        show = {
          git = true,
          folder = true,
          file = true,
          folder_arrow = true,
        },
      },
    },
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    filters = {
      dotfiles = false,
      custom = { '.git', '.DS_Store' },
      git_ignored = true,
      no_buffer = false,
      exclude = {},
    },
    git = {
      enable = true,
      ignore = true,
      show_on_dirs = true,
      show_on_open_dirs = true,
    },
  },
}
