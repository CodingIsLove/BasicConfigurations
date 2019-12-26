" Vim configuration file. Written by Christopher Germann

" Configure pathogen
execute pathogen#infect()

" Turn on syntax highlighting
syntax on

" Filetype
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

