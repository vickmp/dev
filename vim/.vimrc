" ////////////////////
" Vundle configuration
" ////////////////////

set nocompatible             
filetype off                 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()      

filetype plugin indent on   

" Plugin configurations
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
set laststatus=2 

" /////////////////
" Vim configuration
" /////////////////

" Make code look pretty
let python_highlight_all=1
syntax on
set nu

colorscheme wombat256grf

call togglebg#map("<F5>")

" Clipboard options
set clipboard=unnamed

" Line break options
set colorcolumn=80

" Usability options
set mouse=a

" Enable folding
set foldmethod=indent
set foldlevel=99

" UTF-8 support
set encoding=utf-8

" Enable folding with the spacebar
nnoremap <space> za

" Python Indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css, *
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |:u
