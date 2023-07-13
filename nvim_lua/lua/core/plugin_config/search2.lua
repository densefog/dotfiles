-- GReplace
vim.o.grepprg = 'ag'
vim.g.grep_cmd_opts = '--line-numbers --noheading'


-- Telescope
local builtin = require('telescope.builtin')
require('telescope').load_extension('fzf')
vim.keymap.set('n', '<c-p>', builtin.find_files, {})
-- vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>e', builtin.buffers, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
-- vim.keymap.set('n', '<leader>F', builtin.grep_string, {})
vim.keymap.set('n', '<leader>e', function() builtin.buffers({ sort_lastused = true}) end)


-- FZF
if vim.fn.executable('ag') == 1 then
  vim.g.ackprg = 'ag --vimgrep'
end

vim.keymap.set('n', '<leader>f', ':Ag<CR>')
vim.keymap.set('n', '<leader>F', ':Ack!<space>')

vim.g.fzf_layout = { down = "~40%" }
vim.fn.setenv("FZF_DEFAULT_COMMAND", 'ag --hidden --ignore .git -g ""')
vim.g.fzf_action = { ["ctrl-t"] = "tab split",["ctrl-h"] = "split",["ctrl-v"] = "vsplit" }

