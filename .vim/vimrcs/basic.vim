"#########################################################
"######  Vim user interface  #############################
"#########################################################

set scrolloff=5 " Set number of lines to the cursor - when moving vertially using j/k
set t_Co=256

syntax on

set background=dark
colors peaksea


"#########################################################
"######  Text: encodings, tab, indent  ###################
"#########################################################

set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,cp1251

set tabstop=4 " 1 tab == 4 spaces
set softtabstop=4
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
