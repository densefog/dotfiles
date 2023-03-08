-- Vim-Test options
vim.g['test#strategy'] = 'slimux'
vim.g['test#preserve_screen'] = 0

-- Tmux runner configuration
vim.keymap.set('n', '<leader>s', ':TestNearest<CR>', { silent = true })
vim.keymap.set('n', '<leader>t', ':TestFile<CR>', { silent = true })
vim.keymap.set('n', '<leader>a', ':TestSuite<CR>', { silent = true })
vim.keymap.set('n', '<leader>l', ':TestLast<CR>', { silent = true })
vim.keymap.set('n', '<leader>v', ':TestVisit<CR>', { silent = true })
vim.keymap.set('n', '<leader>h', ':SlimuxShellRun mtf<CR>', { silent = true })
vim.keymap.set('n', '<leader>c', ':SlimuxShellRun mc<CR>', { silent = true })
