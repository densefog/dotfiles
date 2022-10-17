" Settings for Ale

"set completeopt=menu,menuone,preview,noselect,noinsert
"let g:ale_completion_enabled = 1

"augroup elixir
  "nnoremap <leader>r :! elixir %<cr>
  "autocmd FileType elixir nnoremap <c-]> :ALEGoToDefinition<cr>
"augroup END

let g:ale_linters = {}
let g:ale_linters.scss = ['stylelint']
let g:ale_linters.css = ['stylelint']
"let g:ale_linters.elixir = ['elixir-ls', 'credo']

let g:ale_fixers = {'*': ['remove_trailing_lines', 'trim_whitespace']}
let g:ale_fixers.javascript = ['eslint', 'remove_trailing_lines', 'trim_whitespace']
let g:ale_fixers.scss = ['stylelint', 'remove_trailing_lines', 'trim_whitespace']
let g:ale_fixers.css = ['stylelint', 'remove_trailing_lines', 'trim_whitespace']
let g:ale_fixers.elm = ['format']
let g:ale_fixers.elixir = ['mix_format', 'remove_trailing_lines', 'trim_whitespace']

"let g:ale_elixir_elixir_ls_release = '/Users/tspruit/elixir-ls/rel'
let g:ale_sign_column_always = 1
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚠'
let g:ale_fix_on_save = 1

"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"let g:ale_sign_column_always = 1
"let g:ale_lint_delay = 1000

"Ale commented out below

"nnoremap df :ALEFix<cr>
"let g:ale_javascript_eslint_executable = 'eslint_d'

"augroup AleGroup
    "autocmd!
    "autocmd User ALELint call TouchOpenFile()
"augroup END

"func! TouchOpenFile()
    "let g:ale_enabled = 0
    "sleep 500m
    "w
    "let g:ale_enabled = 1
"endfunc
