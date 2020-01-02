" color
set background=dark
colorscheme landscape

" tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

" edit
set number
set hlsearch
syntax on
set cursorcolumn
set cursorline
set ruler
hi CursorColumn cterm=bold ctermbg=None
hi CursorLine cterm=underline ctermfg=None ctermbg=None
nmap <ESC><ESC> :noh<CR><ESC>
" symbolic char like tab
set list
hi NonText cterm=NONE ctermfg=8
hi Search ctermbg=3* ctermfg=1

" char code
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac

" status
set laststatus=2
set statusline=%<%f\ #%n%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%=%l,%c%V%8P


" NeoBundle settings
" get neobundle
"   $ mkdir -p ~/.vim/bundle
"   $ git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
" plugin install command ( after write plugin on .vimrc )
"   :NeoBundleInstall
" plugin update command
"   :NeoBundleUpdate
" plugin remove command ( after remove plugin from .vimrc )
"   :NeoBundleClean
" set color theme
"   $ mkdir ~/.vim/colors
"   $ cp ~/.vim/bundle/landscape.vim/colors/landscape.vim ~/.vim/colors
set nocompatible
filetype plugin indent off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
    NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif 
" Install Plugins
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundle 'Shougo/unite.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'itchyny/landscape.vim'
call neobundle#end()

filetype plugin indent on

let g:syntastic_python_checkers = ['pyflakes', 'pep8']

