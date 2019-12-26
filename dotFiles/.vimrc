" Vim configuration file. Written by Christopher Germann

" Configure pathogen
execute pathogen#infect()

" Turn on syntax highlighting
syntax on

" Add mouse support
set mouse=a


" History safe last 50 entries
set history=50

" Display incomplete commmand in lower right corner
set showcmd

"Filetype
filetype plugin indent on

" speed up scrolling in vim
set ttyfast

" Status bar
set laststatus=2

" show numbers
set number

" Dont try to be vi compatible
set nocompatible

" Show file stats
set ruler

" Blink cursor on error instead of beeping
set visualbell

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" Colorscheme
colorscheme iceberg


" Fuzzy search
set path+=**
set wildmenu
