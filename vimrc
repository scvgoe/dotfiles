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
set ruler
set splitright              " when split window, new window will be created at right side.
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required

" tagbar key mapping
nmap <C-\> :TagbarToggle<CR>

" vim-airline themes setting
set laststatus=2
set t_Co=256
let g:airline_theme='murmur'

" ambiguous command
command E Ex     " syntastic Error : vim Explore
