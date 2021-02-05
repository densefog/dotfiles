" Sublime like multiple cursors
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_exit_from_visual_mode = 0

" Smooth scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll/2, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll/2, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 0, 4)<CR>

" Toggle Nerd Tree
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>d :Dash<CR>
