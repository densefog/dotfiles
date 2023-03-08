--dcampos/nvim-snippy

require('snippy').setup({
  snippet_dirs = '~/.config/snippets',
  mappings = {
    is = {
          ['<Tab>'] = 'expand_or_advance',
          ['<S-Tab>'] = 'previous',
    },
    nx = {
          ['<leader>x'] = 'cut_text',
    },
  },
})
