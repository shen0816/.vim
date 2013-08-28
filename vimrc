set nu
set relativenumber
set nocompatible				" be iMproved
filetype off						" required!
syntax on
set autoindent					" auto indentation
set incsearch						" incremental search
set nobackup						" no *~ backup files
set copyindent					" copy the previous indentation on autoindenting
set backspace=2					"在 insert 也可用 backspace
set ai
set shiftwidth=2				" 設定縮排寬度 
set tabstop=2						" tab 的字元數
set softtabstop=2
set hlsearch
set ruler
set laststatus=2
set showcmd
set scrolloff=5

nmap <tab> :tabn<CR>
nmap <F5> :NERDTree<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...
"Chuck Bundle
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/scrooloose/nerdcommenter'
Bundle 'https://github.com/scrooloose/syntastic'
Bundle 'taglist.vim'
Bundle 'https://github.com/shen0816/cscope_maps.vim.git'
Bundle 'Rip-Rip/clang_complete'
Bundle 'https://github.com/c9s/hypergit.vim'
Bundle 'EasyGrep'


filetype plugin indent on     " required!

" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
