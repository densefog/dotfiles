-- if true then
--   return {}
-- end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  --{ "junegunn/fzf", dir = "~/.fzf", build = "./install --all", lazy = false },
  { 'junegunn/fzf', build = './install --all', lazy = false },
  {
    'mileszs/ack.vim',
    lazy = false,
  },
  {
    'junegunn/fzf.vim',
    lazy = false,
    init = function()
      if vim.fn.executable 'ag' == 1 then
        vim.g.ackprg = 'ag --vimgrep'
      end

      vim.g.fzf_layout = { down = '~40%' }
      vim.fn.setenv('FZF_DEFAULT_COMMAND', 'ag --hidden --ignore .git -g ""')
      vim.g.fzf_action = { ['ctrl-t'] = 'tab split', ['ctrl-h'] = 'split', ['ctrl-v'] = 'vsplit' }

      vim.keymap.set('n', '<Leader>fw', ':Ag<CR>', { desc = 'Ag' })
      vim.keymap.set('n', '<Leader>F', ':Ack!<space>', { desc = 'Ack' })
    end,
  },
}
