" Plugin Manager
call plug#begin('~/.config/nvim/plugged')

Plug 'sheerun/vim-polyglot' " multi language pack
Plug 'tpope/vim-rails' " for rails
Plug 'tpope/vim-rake' " for rake
Plug 'scrooloose/nerdtree' " side nav tree
"Plug 'jlanzarotta/bufexplorer' " selecting open files in buffer
Plug 'scrooloose/nerdcommenter' " commenting lines
Plug 'mileszs/ack.vim' " search in files
Plug 'skwp/greplace.vim' " Gsearch and Greplace for text in files
Plug 'coderifous/textobj-word-column.vim' " Visually select columns
Plug 'tpope/vim-endwise' " Smart function ending
Plug 'tpope/vim-eunuch' " Unix commands
Plug 'wsdjeg/vim-fetch' "Go to line and column in files
Plug 'tpope/vim-fugitive' " Git integration
Plug 'tpope/vim-unimpaired'   " Shortcuts for git integration
Plug 'mtth/scratch.vim' " Scratch pad
Plug 'christoomey/vim-tmux-navigator' " tmux / vim navigation
Plug 'terryma/vim-multiple-cursors' " sublime ish functionality
Plug 'tpope/vim-repeat' " better . support
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'janko-m/vim-test' " Shortcuts for testing

Plug 'dense-analysis/ale' " syntax checking
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lewis6991/gitsigns.nvim'

"Plug 'aos/tslime.vim' " Not the original
"Plug 'jgdavey/tslime.vim'
"Plug 'christoomey/vim-tmux-runner'
"Plug 'kassio/neoterm'
"Plug 'benmills/vimux'
Plug 'esamattis/slimux'
"Plug 'preservim/vimux'
"Plug 'kovidgoyal/kitty'

Plug 'terryma/vim-smooth-scroll' " Smooth scrolling
Plug 'tpope/vim-abolish' " convert string cases

" Fuzzy Finder
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" Airline styling
"Plug 'flazz/vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'rizzatti/dash.vim'
Plug 'kburdett/vim-nuuid' " uuid gen

" Tags for code lookup
" Can this be skipped now with ElixirLS?
Plug 'ludovicchabant/vim-gutentags'
"
"Snippets used through coc-snippets
Plug 'honza/vim-snippets'
"
" Plug 'dbeniamine/cheat.sh-vim'
"
" Completions
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1

" Elixir Integration
"Plug 'slashmili/alchemist.vim'
"Plug 'elixir-lsp/elixir-ls', { 'do': { -> g:ElixirLS.compile() } }

" To look into
"Plug 'christoomey/vim-system-copy' " System clipboard copy
"Plug 'svermeulen/vim-easyclip'
"Plug 'Syntastic'   " syntax checking
"Plug 'ervandew/supertab'
"Plug 'MattesGroeger/vim-bookmarks' " bookmarks
"Plug 'christoomey/vim-tmux-runner'
"Plug 'tpope/vim-dispatch'  " TPope's test integration
"Plug 'kassio/neoterm'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'joonty/vdebug' " Multiple language debugger
"Plug 'wincent/terminus' " better terminal integration

" Charta documentation
"Plug 'ChartaDev/charta.vim'

call plug#end()
