return {
  'rizzatti/dash.vim',
  lazy = false,
  init = function()
    vim.keymap.set('n', '<Leader>d', ':Dash<CR>', { desc = 'Dash lookup' })
  end,
}
