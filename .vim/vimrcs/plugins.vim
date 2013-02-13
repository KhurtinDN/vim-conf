" Using Vundle as a Vim plugin manager. 
" Official site: https://github.com/gmarik/vundle

filetype off " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" Colorscheme
Bundle 'molokai'
Bundle 'nelstrom/vim-mac-classic-theme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'gmarik/ingretu'

if has("gui_running")
    colorscheme ingretu
endif

" Git integration
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-fugitive'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on " Automatically detect file types
