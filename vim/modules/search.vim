" Search / FZF - Find in files

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Fuzzy finder
map <leader>f :Ag<CR>
map <leader>F :Ack!<space>
nnoremap <c-p> :Files<CR>
nnoremap <leader>r :BTags<CR>
nnoremap <leader>e :Buffers<CR>
nnoremap <leader>b :Buffers<CR>

let g:fzf_layout = { 'down': '~40%' }
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -g ""'
"let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore --hidden --follow --glob "!.git/*"'
"let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case'
let g:fzf_action = {  'ctrl-t': 'tab split', 'ctrl-h': 'split', 'ctrl-v': 'vsplit' }

"command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --color "always" '.shellescape(<q-args>), 1, <bang>0)
"command! -bang -nargs=* Rg call fzf#vim#grep('rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1, <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)

" For greplace settings
set grepprg=ag
let g:grep_cmd_opts = '--line-numbers --noheading'
