set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'airblade/vim-gitgutter'
"Plugin 'fatih/vim-go'
Plugin 'StanAngeloff/php.vim'
Plugin 'groenewege/vim-less'
Plugin 'othree/html5.vim'
Plugin 'evidens/vim-twig'
Plugin 'pangloss/vim-javascript'
"Plugin 'jelera/vim-javascript-syntax'
Plugin 'craigemery/vim-autotag.git'
"Plugin 'chriskempson/base16-vim'
"Plugin 'nanotech/jellybeans.vim'
"Plugin 'chriskempson/tomorrow-theme'
"Plugin 'w0ng/vim-hybrid.git'
Plugin 'beyondmarc/glsl.vim.git'
Plugin 'edsono/vim-matchit'
"Plugin 'vim-scripts/closetag.vim'
Plugin 'vim-scripts/HTML-AutoCloseTag.git'
Plugin 'burnettk/vim-angular'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim.git'
Plugin 'leafgarland/typescript-vim.git'
Plugin 'ajh17/Spacegray.vim.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'tpope/vim-unimpaired.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
syntax on
set number
set guioptions-=R
set hlsearch

set foldmethod=manual
set foldopen-=block

set runtimepath^=~/.vim/bundle/ctrlp.vim
colorscheme spacegray
let g:ycm_confirm_extra_conf = 0

"let NERDTreeIgnore=['node_modules$', '\~$', 'public$', 'dist$', 'db$']
let NERDTreeIgnore=['node_modules$', '\~$', 'dist$', 'db$']
"let g:ctrlp_custom_ignore = 'db$\|dist$\|public$\|node_modules$\|\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = 'db$\|dist$\|node_modules$\|\v[\/]\.(git|hg|svn)$'

if !exists("g:ycm_semantic_triggers")
    let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

set shell=bash

" The Silver Searcher
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor

    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
endif

"au BufRead,BufNewFile *.ts   setfiletype javascript
autocmd BufWritePre * :%s/\s\+$//e

