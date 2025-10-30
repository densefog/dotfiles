-- if true then
--   return {}
-- end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  'srcrip/lookup.nvim',
  dependencies = {
    -- whichever picker you like
    --'ibhagwan/fzf-lua',
    'nvim-telescope/telescope.nvim',
    -- 'folke/snacks.nvim',
  },
  config = function()
    require('lookup').setup {
      use_lsp = true, -- Try LSP first, fallback to regex
      picker = 'telescope', -- 'telescope', 'fzf-lua', 'snacks', 'builtin'
    }
  end,
}
