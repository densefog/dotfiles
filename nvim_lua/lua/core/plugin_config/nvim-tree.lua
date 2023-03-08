-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  actions = {
    open_file = {
      window_picker = {
        enable = false
      }
    }
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<leader>m', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<c-n>', ':NvimTreeToggle<CR>')
vim.keymap.set('n', '<c-m>', ':NvimTreeFindFileToggle<CR>')
