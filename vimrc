set nocompatible              " be iMproved, required
filetype off                  " required

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,cp949,euc-kr,iso-8859-1
set bomb
set ttyfast

"" Tabs.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"" Searching
set hlsearch
set incsearch

"" Visual Settings
syntax on
set ruler
set mouse=c
set modifiable
set timeoutlen=1000
set updatetime=250
set textwidth=79
set number
set splitright              " when split window, new window will be created at right side.
set splitbelow              " when split window, new window will be created at below side.

"" Clipboard Sync with system
set clipboard=unnamed

"" Map leader to ,
let mapleader=','

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'sheerun/vim-polyglot'
Plugin 'christoomey/vim-tmux-navigator'

" c
Plugin 'vim-scripts/c.vim', {'for': ['c', 'cpp']}
Plugin 'ludwig/split-manpage.vim'

" html
"" HTML Bundle

Plugin 'hail2u/vim-css3-syntax'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'tpope/vim-haml'
Plugin 'mattn/emmet-vim'

" javascript
"" Javascript Bundle
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'mtscout6/syntastic-local-eslint.vim'

" python
"" Python Bundle
Plugin 'davidhalter/jedi-vim'

" csv
"" CSV Bundle
Plugin 'chrisbra/csv.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" tagbar key mapping
nmap <C-\> :TagbarToggle<CR>

" vim-airline themes setting
set laststatus=2
set t_Co=256
let g:airline_theme='powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline_skip_empty_sections = 1

" Vim statusline
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\
if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"" Abbreviation
"" no one is really happy until you have this shortcuts
command E Ex     " syntastic Error : vim Explore
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"" Git
noremap <leader>ga :Gwrite<CR>
noremap <leader>gc :Gcommit<CR>
noremap <leader>gpus :Gpush<CR>
noremap <leader>gpul :Gpull<CR>
noremap <leader>gs :Gstatus<CR>
noremap <leader>gb :Gblame<CR>
noremap <leader>gd :Gvdiff<CR>
noremap <leader>gr :Gremove<CR>

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'
let g:syntastic_auto_loc_list=1
let g:syntastic_aggregate_errors = 1
let g:syntastic_python_checkers=['python', 'flake8']

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

" c
autocmd FileType c setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 shiftwidth=4 expandtab

" html
" for html files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab

" javascript
let g:javascript_enable_domhtmlcss = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" vim-javascript
augroup vimrc-javascript
  autocmd!
  autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
augroup END

" python
" vim-python
augroup vimrc-python
  autocmd!
  autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
      \ formatoptions+=croq softtabstop=4
      \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" jedi-vim
let g:jedi#popup_on_dot = 1
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
let g:jedi#completions_command = "<C-Enter>"
let g:jedi#smart_auto_mappings = 1

" Syntax highlight
" Default highlight is better than polyglot
let g:polyglot_disabled = ['python']
let python_highlight_all = 1

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

"" Buffer
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>
noremap <leader>c :bd<CR>
