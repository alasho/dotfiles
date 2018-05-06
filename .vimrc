" color
set background=dark
colorscheme landscape

" tab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent
set autoindent

" edit
set number
set hlsearch
syntax on
set cursorcolumn
set cursorline
set ruler
nmap <ESC><ESC> :noh<CR><ESC>
hi CursorColumn cterm=bold ctermbg=0
hi Search ctermbg=3* ctermfg=1

" char code
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis
set fileformats=unix,dos,mac


" status
set laststatus=2
set statusline=%<%f\ #%n%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%y%=%l,%c%V%8P

" NeoBundle
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
call neobundle#end()
filetype plugin indent on

