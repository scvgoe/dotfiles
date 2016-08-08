set nocompatible              " be iMproved, required
filetype off                  " required

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set mouse=c
set modifiable
set timeoutlen=50
set updatetime=250
set textwidth=79
set autoindent
set number
set hlsearch
set incsearch
syntax on
let g:syntastic_python_checker = 'pylint'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required
filetype plugin indent on    " required

nmap <C-\> :TagbarToggle<CR>
