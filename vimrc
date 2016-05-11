set background=dark
set nu
set relativenumber
set nocompatible				" be iMproved
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

"開啟html自動補齊功能
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags

let g:clang_library_path='/opt/local/libexec/llvm-3.7/lib'
let g:clang_use_library=1

if has("gui_running")
	" colorscheme vividchalk
	colorscheme ir_black 
	set guifont=Monaco:h16
endif

"高亮資訊列設定
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ },
      \ 'separator': { 'left': '⮀', 'right': '⮂' },
      \ 'subseparator': { 'left': '⮁', 'right': '⮃' }
      \ }

nmap <tab> :tabn<CR>
nmap <F5> :NERDTreeFind<CR>

filetype off						" required!

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

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
Bundle 'tfnico/vim-gradle'
Bundle 'groovy.vim'
"高亮資訊列
Bundle 'itchyny/lightline.vim'
"Python mode plugin
"Bundle 'klen/python-mode'
"Bundle 'Pydiction'
"let g:pydiction_location = '/Users/chuck/.vim/bundle/Pydiction/complete-dict'

"自動補齊
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

"Html5
Bundle 'othree/html5.vim'

"Javascript mode plugin
Plugin 'jelera/vim-javascript-syntax'
au FileType javascript call JavaScriptFold()

"CSS Syntax
Plugin 'hail2u/vim-css3-syntax'
augroup VimCSS3Syntax
	autocmd!

	autocmd FileType css setlocal iskeyword+=-
augroup END

"幫助你註解
Plugin 'tomtom/tcomment_vim'

"幫助執行html
Plugin 'tell-k/vim-browsereload-mac'
let g:returnAppFlag = 1
let g:returnApp = "iTerm"

" open browser 可以在vim直接開url
Plugin 'tyru/open-browser.vim'

"Bundle 'othree/javascript-libraries-syntax.vim'
"Bundle 'SyntaxComplete'
"Bundle 'MarcWeber/vim-addon-local-vimrc'


call vundle#end()
filetype plugin indent on     " required!


" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
