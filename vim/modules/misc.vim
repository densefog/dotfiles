" MISC Setup
"
" set autoindent                " copy indent from current line when starting a new line
set background=dark           " use colors that look good on dark
set backspace+=eol            " allow backspacing over line breaks (join lines)
set backspace+=indent         " allow backspacing over autoindent
set backspace+=start          " allow backspacing over the start of insert; CTRL-W and CTRL-U
set clipboard=unnamedplus         " yanks to osx clipboard
set cursorline                " highlight the screen line of the cursor
set expandtab                 " expand tabs to spaces
set hidden                    " allow buffers to be hidden
set history=1000              " number of history items to remember
set hlsearch                  " highlight search pattern matches
set ignorecase                " ignore case"
set incsearch                 " highlight search pattern matches as they're found
set iskeyword+=-              " allow - to be considered part of a word
"set laststatus=1              " only show status if there are at least 2 windows
set matchtime=2               " amount of time to show the matching parent when 'showmatch' is set
set number relativenumber     " display line numbers and relative numbers
set nojoinspaces              " add single space after '.', '?', and '!' with a join command
set noswapfile                " do not make a swapfile
set nowrap                    " default to no line wrapping
set ruler                     " show line and column number of the cursor position
set scrolloff=3               " minimum number of screen lines to keep above/below the cursor"
set shiftwidth=2              " set indent to 2 spaces
set showmatch                 " when a bracket is inserted, briefly jump to the matching one
set smartcase                 " ignore case when the pattern contains lowercase only"
set softtabstop=2             " set <tab> to 2 spaces while in insert mode
set tabstop=2                 " set <tab> to two spaces
set wildmenu                  " enable command-completion window
set wildmode=list:longest     " list all matches and complete til longest common match
set listchars+=tab:\ \
set termguicolors
set nobackup
set nowritebackup
set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

" Save and Reload sessions
map <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
map <F3> :source ~/.vim_session <cr>     " And load session with F3

" Kill these keys I keep fat fingering during input
imap <S-F1> <Nop>
imap <S-F2> <Nop>
imap <S-F3> <Nop>
imap <S-F4> <Nop>
imap <S-F5> <Nop>
imap <S-F6> <Nop>
imap <S-F7> <Nop>
imap <S-F8> <Nop>
imap <S-F9> <Nop>
imap <S-F10> <Nop>
imap <S-F11> <Nop>
imap <S-F12> <Nop>

" Adjust esc
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>
inoremap jk <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <c-w>[ :wincmd _<cr><bar>:wincmd \|<cr>                " zoom in the active window
nnoremap <c-w>] :wincmd =<cr>                                   " zoom out the current window

" Map arrow keys to window resize
nmap <left>  <c-w><
nmap <right> <c-w>>
nmap <up>    <c-w>+
nmap <down>  <c-w>-

"" Only highlight the screen line of the active buffer
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>


"fun! <SID>StripTrailingWhitespaces()
    "let l = line(".")
    "let c = col(".")
    "%s/\s\+$//e
    "call cursor(l, c)
"endfun
"autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
"
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

" Charta documentation
let g:charta_api_token="SFMyNTY.g2gDdAAAAAFkAAd1c2VyX2lkYS1uBgBIyrs8eQFiAAFRgA.4v2QdMWYs1vhs_69WXpWmgVhM_Znp5mLGNv3PBIU4_I"
