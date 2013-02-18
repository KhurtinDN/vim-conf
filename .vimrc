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

" File manager
Bundle 'scrooloose/nerdtree'

" Git integration
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

" Syntax commenter
" Bundle 'vim-scripts/tComment'
Bundle 'scrooloose/nerdcommenter'

" Python 
Bundle 'vim-scripts/indentpython.vim'
" Bundle 'vim-scripts/Pydiction'
" Bundle 'vim-scripts/pep8'
" Bundle 'vim-scripts/pylint.vim'
" Bundle 'kevinw/pyflakes-vim'
Bundle 'scrooloose/syntastic'

Bundle 'sontek/rope-vim'


filetype plugin indent on " Automatically detect file types


"#########################################################
"######  Vim user interface  #############################
"#########################################################

syntax on
set scrolloff=5 " Set number of lines to the cursor - when moving vertially using j/k

if has("gui")
    set background=dark
    colorscheme solarized

    set guifont=Monaco\ 10
    set guioptions-=T " Hide toolbar from gui

    highlight SpellBad term=underline gui=undercurl guisp=Orange
else
    set t_Co=256
    colorscheme peaksea
endif


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

set history=1000
set undodir=~/.vim/undodir/
set undofile
set undolevels=1000
set undoreload=10000


"#########################################################
"######  Key bindings  ###################################
"#########################################################

" Copy paste
set pastetoggle=<F4>

" Pair
imap [ []<LEFT>
imap ( ()<LEFT>
imap { {}<LEFT>


"#########################################################
"######  NERD Tree configuration  ########################
"#########################################################

let NERDTreeIgnore=['\.pyc']

nmap <F3> :NERDTreeToggle<CR>


"#########################################################
"######  Syntastic configuration  ########################
"#########################################################

let g:syntastic_check_on_open=1
let g:syntastic_echo_current_error=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='e>'
let g:syntastic_warning_symbol='w>'
let g:syntastic_style_error_symbol='se'
let g:syntastic_style_warning_symbol='sw'
let g:syntastic_enable_highlighting=1
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_loc_list_height=5


"#########################################################
"######  Python configuration  ###########################
"#########################################################

let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:pyflakes_use_quickfix = 0
let g:syntastic_python_checkers=['pylint', 'flake8', 'pyflakes', 'python']

let ropevim_vim_completion=1

" Highlighting
let python_highlight_all = 1
let python_highlight_space_errors = 1

autocmd FileType python syntax keyword pythonDecorator True None False self

autocmd BufNewFile,BufRead *.jinja set syntax=htmljinja

" Auto completing
autocmd FileType python set omnifunc=pythoncomplete#Complete

" Smart indent after python key words
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with

" Trim line ends before saving
autocmd BufWritePre *.py normal m`:%s/\s\+$//e

" Run python on this program when pressing F9 
nmap <silent> <F9> :w<CR>:!python %:p<CR>
vmap <silent> <F9> <esc>:w<CR>:!python %:p<CR>
imap <silent> <F9> <esc>:w<CR>:!python %:p<CR>
