-- GReplace
vim.o.grepprg = 'ag'
vim.g.grep_cmd_opts = '--line-numbers --noheading'


-- fuzzy find
if vim.fn.executable('ag') == 1 then
  vim.g.ackprg = 'ag --vimgrep'
end

--map <leader>f :Ag<CR>
--map <leader>F :Ack!<space>
--nnoremap <c-p> :Files<CR>
--nnoremap <leader>r :BTags<CR>
--nnoremap <leader>e :Buffers<CR>
--nnoremap <leader>b :Buffers<CR>

vim.keymap.set('n', '<leader>f', ':Ag<CR>')
vim.keymap.set('n', '<leader>F', ':Ack!<space>')
vim.keymap.set('n', '<c-p>', 'Files<CR>')
vim.keymap.set('n', '<leader>e', ':Buffers<CR>')

--let g:fzf_layout = { 'down': '~40%' }
--let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
--let g:fzf_action = {  'ctrl-t': 'tab split', 'ctrl-h': 'split', 'ctrl-v': 'vsplit' }

vim.g.fzf_layout = { down = "~40%" }
vim.fn.setenv("FZF_DEFAULT_COMMAND", 'ag --hidden --ignore .git -g ""')
vim.g.fzf_action = { ["ctrl-t"] = "tab split", ["ctrl-h"] = "split", ["ctrl-v"] = "vsplit" }


-- https://github.com/nvim-telescope/telescope.nvim

--local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<c-p>', builtin.find_files, {})
--vim.keymap.set('n', '<leader><Space>', builtin.oldfiles, {})
--vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
--vim.keymap.set('n', '<leader>e', builtin.buffers, {})
--vim.keymap.set('n', '<leader>h', builtin.help_tags, {})

---- You dont need to set any of these options. These are the default ones. Only
---- the loading is important
----require('telescope').setup {
----extensions = {
----fzf = {
----fuzzy = true,                    -- false will only do exact matching
----override_generic_sorter = true,  -- override the generic sorter
----override_file_sorter = true,     -- override the file sorter
----case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
----}
----}
----}
---- To get fzf loaded and working with telescope, you need to call
---- load_extension, somewhere after setup function:
--require('telescope').load_extension('fzf')
