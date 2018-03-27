" local .vimrc
"
" VUNDLE
" loading these cause Vundle said so
set nocompatible		" required
filetype off			" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" loads gruvbox colorscheme
Plugin 'morhetz/gruvbox'

" loads arctic plugin
Plugin 'arcticicestudio/nord-vim'

" All Plugins must be added before the following line
call vundle#end()		" required
filetype plugin indent on	" required


" USER SETTINGS
"
" UI
colorscheme gruvbox		" colors
syntax enable			" enable syntax processing
set tabstop=4			" number of visual spaces per tab
set softtabstop=4		" number of spaces in tab when editing
set expandtab			" tab are spaces
set number              " show line numbers
set cursorline          " highlight current line
set lazyredraw          " redraw only when needed
set showmatch           " highlight matching [] () or {}
set linebreak           " breaks lines at words
