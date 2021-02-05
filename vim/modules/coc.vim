" Settings for Elixir LS / COC
"=================================
let g:coc_global_extensions = ['coc-snippets', 'coc-prettier', 'coc-pairs', 'coc-json', 'coc-eslint',  'coc-tsserver', 'coc-markdownlint', 'coc-html', 'coc-elixir', 'coc-actions']


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

"if exists('*complete_info')
  "inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
"else
  "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json,elixir setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
"set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


"let g:ElixirLS = {}
"let ElixirLS.path = stdpath('config').'/plugged/elixir-ls'
"let ElixirLS.lsp = ElixirLS.path.'/release/language_server.sh'
"let ElixirLS.cmd = join([
        "\ 'asdf install &&',
        "\ 'mix do',
        "\ 'local.hex --force --if-missing,',
        "\ 'local.rebar --force,',
        "\ 'deps.get,',
        "\ 'compile,',
        "\ 'elixir_ls.release'
        "\ ], ' ')

"function ElixirLS.on_stdout(_job_id, data, _event)
  "let self.output[-1] .= a:data[0]
  "call extend(self.output, a:data[1:])
"endfunction

"let ElixirLS.on_stderr = function(ElixirLS.on_stdout)

"function ElixirLS.on_exit(_job_id, exitcode, _event)
  "if a:exitcode[0] == 0
    "echom '>>> ElixirLS compiled'
  "else
    "echoerr join(self.output, ' ')
    "echoerr '>>> ElixirLS compilation failed'
  "endif
"endfunction

"function ElixirLS.compile()
  "let me = copy(g:ElixirLS)
  "let me.output = ['']
  "echom '>>> compiling ElixirLS'
  "let me.id = jobstart('cd ' . me.path . ' && git pull && ' . me.cmd, me)
"endfunction

"" Then, update the Elixir language server
"call coc#config('elixir', {
  "\ 'command': g:ElixirLS.lsp,
  "\ 'filetypes': ['elixir', 'eelixir']
  "\})
"call coc#config('elixir.pathToElixirLS', g:ElixirLS.lsp)
