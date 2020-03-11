let mapleader=","
set nocompatible              " be iMproved, required
filetype off                  " required

" Plugin Manager
call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot' " multi language pack
Plug 'tpope/vim-rails' " for rails
Plug 'tpope/vim-rake' " for rake
"Plug 'tpope/vim-bundler' " for bundler
"Plug 'thoughtbot/vim-rspec'
Plug 'scrooloose/nerdtree' " side nav tree
Plug 'jlanzarotta/bufexplorer' " selecting open files in buffer
Plug 'scrooloose/nerdcommenter' " commenting lines
"Plug 'vim-scripts/ctrlp.vim'
Plug 'mileszs/ack.vim' " search in files
Plug 'skwp/greplace.vim' " Gsearch and Greplace for text in files
Plug 'coderifous/textobj-word-column.vim' " Visually select columns
"Plug 'hail2u/vim-css3-syntax'
Plug 'tpope/vim-endwise' " Smart function ending
Plug 'tpope/vim-eunuch' " Unix commands
Plug 'kopischke/vim-fetch' "Go to line and column in files
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-unimpaired'   " Shortcuts for git integration
"Plug 'pangloss/vim-javascript' " JS highlighting
"Plug 'christoomey/vim-rfactory' " Rfactory for navigating to factories
Plug 'mtth/scratch.vim' " Scratch pad
"Plug 'christoomey/vim-system-copy' " System clipboard copy
Plug 'christoomey/vim-tmux-navigator' " tmux / vim navigation
"Plug 'Syntastic'   " syntax checking
"Plug 'w0rp/ale' " syntax checking
Plug 'terryma/vim-multiple-cursors' " sublime ish functionality
Plug 'tpope/vim-repeat' " better . support
"Plug 'svermeulen/vim-easyclip'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
"Plug 'ervandew/supertab'
"Plug 'tpope/vim-abolish'
"Plug 'MattesGroeger/vim-bookmarks' " bookmarks
" Pane Plugs for vim-test
Plug 'janko-m/vim-test' " Shortcuts for testing
"Plug 'christoomey/vim-tmux-runner'
"Plug 'tpope/vim-dispatch'  " TPope's test integration
Plug 'jgdavey/tslime.vim' " Not the original
"Plug 'kassio/neoterm'
Plug 'terryma/vim-smooth-scroll' " Smooth scrolling
Plug 'kshenoy/vim-signature' " display marks

" Fuzzy Finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug 'vim-scripts/ctrlp.vim'

" Airline styling
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'rizzatti/dash.vim'
Plug 'kburdett/vim-nuuid' " uuid gen

"Plug 'joonty/vdebug' " Multiple language debugger

" Tags for code lookup
Plug 'ludovicchabant/vim-gutentags'
let g:gutentags_cache_dir = '~/.tags_cache'

" UltiSnips
" #########
" Track the engine.
"Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
"Plug 'honza/vim-snippets'

"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
""let g:UltiSnipsExpandTrigger="<c-e>"
"let g:UltiSnipsListSnippets="<c-l>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" Completions
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
" use tab for completion
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"Plug 'neoclide/coc.nvim@release'
"Plug 'neoclide/coc.nvim@release'
"Plug 'https://github.com/neoclide/coc.nvim/releases/latest'

"let g:AutoPairsMapCR=0
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#enable_smart_case = 1
"imap <expr><TAB> pumvisible() ? "\<C-n>" : neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
"inoremap <expr><CR> pumvisible() ? deoplete#mappings#close_popup() : "\<CR>"

" Better terminal integration, cursor shapes, buffer updates
"Plug 'wincent/terminus'
Plug 'slashmili/alchemist.vim' " Elixir integration

call plug#end()

set ttyfast " Faster redrawing

syntax on

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
"set tags+='~/.tags_cache'
let g:rehash256 = 1

" Find in files
map <leader>f :Ag<CR>
map <leader>F :Ack!<space>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Fuzzy finder
nnoremap <c-p> :Files<CR>
nnoremap <leader>r :BTags<CR>
nnoremap <leader>e :Buffers<CR>

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


"let g:ctrlp_extensions = ['buffertag']
"nnoremap <leader>r :CtrlPBufTag<CR>

" Save and Reload sessions
map <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
map <F3> :source ~/.vim_session <cr>     " And load session with F3
" For vim-javascript
"let g:javascript_enable_domhtmlcss = 1
"let g:javascript_ignore_javaScriptdoc = 1

" Scratch pad options
" let g:scratch_horizontal = 1
" let g:scratch_height = 20
let g:scratch_persistence_file = 'project-notes.txt'

" Vim-Test options
"let test#strategy = "neoterm"
"let g:neoterm_default_mod = "vertical"
"let g:neoterm_autoscroll = "1"
"let test#strategy = "neovim"

let test#strategy = "tslime"
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
nmap <silent> <leader>h :Tmux mix run lib/one_import/import_floors_new.exs<CR>

nnoremap <leader>ra :VtrAttachToPane<cr>
nnoremap <leader>rO :VtrReorientRunner<cr>
nnoremap <leader>rc :VtrSendCommandToRunner<cr>
nnoremap <leader>rl :VtrSendLinesToRunner<cr>
nnoremap <leader>ro :VtrOpenRunner<cr>
nnoremap <leader>rk :VtrKillRunner<cr>
nnoremap <leader>rf :VtrFocusRunner<cr>
nnoremap <leader>rd :VtrDetachRunner<cr>
nnoremap <leader>rC :VtrClearRunner<cr>

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" Reload vim on vimrc changes
autocmd! BufWritePost ~/.vim/vimrc  source ~/.vim/vimrc       " source .vimrc on save
autocmd! VimResized * :wincmd =                       " automatically rebalance windows on vim resize

nnoremap j gj
nnoremap k gk
inoremap jj <ESC>
inoremap jk <ESC>
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <c-w>[ :wincmd _<cr><bar>:wincmd \|<cr>                " zoom in the active window
nnoremap <c-w>] :wincmd =<cr>                                   " zoom out the current window

" Sublime like multiple cursors
let g:multi_cursor_exit_from_insert_mode = 0
let g:multi_cursor_exit_from_visual_mode = 0

" Only highlight the screen line of the active buffer
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

" Map arrow keys to window resize
nmap <left>  <c-w><
nmap <right> <c-w>>
nmap <up>    <c-w>+
nmap <down>  <c-w>-

" Smooth scrolling
noremap <silent> <c-u> :call smooth_scroll#up(&scroll/2, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll/2, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll, 0, 4)<CR>

" Toggle Nerd Tree
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>d :Dash<CR>

"This unsets the 'last search pattern' register by hitting return
nnoremap <CR> :noh<CR><CR>

" Set color details
"colorscheme molokai
colorscheme papercolor

" Settings for Ale

"let g:ale_elixir_elixir_ls_release = '/Users/troys/Desktop/CI/criterion/ponglabs_broker/.elixir_ls/rel'

"let g:ale_lint_on_text_changed = 'never'
"let g:ale_lint_on_enter = 0
"let g:ale_sign_column_always = 1
"let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
"let g:ale_javascript_eslint_executable = 'eslint_d'
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = '⚠'

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

" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%h%M%r%w

"set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_loc_list_height = 5

"map <leader>h :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


