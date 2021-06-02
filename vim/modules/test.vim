" Vim-Test options
let test#strategy = "slimux"

"let g:neoterm_default_mod = "vertical"
"let g:neoterm_autoscroll = "1"
"let test#strategy = "neovim"

"let test#strategy = "tslime"
"let test#strategy = "vtr"
"let test#ruby#bundle_exec = 0
"let g:VtrOrientation = "h"
"let g:VtrPercentage = 20

" Tmux runner configuration
nmap <silent> <leader>s :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>
nmap <silent> <leader>v :TestVisit<CR>
"nmap <silent> <leader>r :Tmux rubocop<CR>
"nmap <silent> <leader>h :Tmux mix run lib/one_import/import_floors_new.exs<CR>
nmap <silent> <leader>h :SlimuxShellRun mtf<CR>
nmap <silent> <leader>c :SlimuxShellRun mc<CR>

let g:test#preserve_screen = 0

"nnoremap <leader>ra :VtrAttachToPane<cr>
"nnoremap <leader>rO :VtrReorientRunner<cr>
"nnoremap <leader>rc :VtrSendCommandToRunner<cr>
"nnoremap <leader>rl :VtrSendLinesToRunner<cr>
"nnoremap <leader>ro :VtrOpenRunner<cr>
"nnoremap <leader>rk :VtrKillRunner<cr>
"nnoremap <leader>rf :VtrFocusRunner<cr>
"nnoremap <leader>rd :VtrDetachRunner<cr>
"nnoremap <leader>rC :VtrClearRunner<cr>
