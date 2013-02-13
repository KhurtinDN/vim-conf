"#########################################################
"######  Vim plugins  ####################################
"#########################################################

set nocompatible

" Using Vundle as a Vim plugin manager. 
" Official site: https://github.com/gmarik/vundle

filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Colorscheme
Bundle 'vim-scripts/peaksea'
Bundle 'altercation/vim-colors-solarized'

" NERD Tree
Bundle 'scrooloose/nerdtree'

" Git integration
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on " Automatically detect file types


"#########################################################
"######  Vim user interface  #############################
"#########################################################

set scrolloff=5 " Set number of lines to the cursor - when moving vertially using j/k

syntax on
colorscheme peaksea


"#########################################################
"######  Text: encodings, tab, indent  ###################
"#########################################################

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251

set tabstop=4 " 1 tab == 4 spaces
set softtabstop=4
set shiftwidth=4
set expandtab " Use spaces instead of tabs
set smarttab

set autoindent "Auto indent
set smartindent


"#########################################################
"######  Changes: history, undo  #########################
"#########################################################

set history=100
set undodir=~/.vim/undodir/
set undofile
set undolevels=1000
set undoreload=10000


"#########################################################
"######  Complete pairs  #################################
"#########################################################

imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>


"#########################################################
"######  Python configuration  ###########################
"#########################################################

" Highlighting
let python_highlight_all = 1
autocmd FileType python syntax keyword pythonDecorator True None False self
autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja

" Auto completing
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Smart indent after python key words
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" Trim line ends before saving
autocmd BufWritePre *.py normal m`:%s/\s\+$//e

if has("gui")
    set background=dark
    colorscheme solarized

    set guifont=Monaco\ 10
    set guioptions-=T " Hide toolbar from gui
else
    set t_Co=256
endif
