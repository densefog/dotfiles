-- if true then
--   return {}
-- end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  { 'christoomey/vim-tmux-navigator', lazy = false },
  {
    'janko-m/vim-test',
    lazy = false,
    init = function()
      vim.g['test#strategy'] = 'slimux'
      vim.g['test#preserve_screen'] = 0

      vim.keymap.set('n', '<Leader>s', ':TestNearest<CR>', { desc = 'Test Nearest' })
      vim.keymap.set('n', '<Leader>t', ':TestFile<CR>', { desc = 'Test File' })
      --vim.keymap.set('n', '<Leader>a', ':TestSuite<CR>', { desc = 'Test Suite' })
      vim.keymap.set('n', '<Leader>l', ':TestLast<CR>', { desc = 'Test Last' })
      vim.keymap.set('n', '<Leader>v', ':TestVisit<CR>', { desc = 'Test Visit' })
      vim.keymap.set('n', '<Leader>h', ':SlimuxShellRun mtf<CR>', { desc = 'Mix test failed' })
    end,
  },
  { 'esamattis/slimux', lazy = false },
}
