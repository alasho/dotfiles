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
hi CursorColumn cterm=bold ctermbg=0
hi CursorLine    term=underline ctermbg=7 guibg=Grey90
nmap <ESC><ESC> :noh<CR><ESC>
" symbolic char like tab
set list
hi NonText cterm=NONE ctermfg=8

" char code
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac


" color
set background=dark
colorscheme mustang

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
set nocompatible
filetype plugin indent off
if has('vim_starting')
    set runtimepath+=/.vim/bundle/neobundle.vim
    call neobundle#begin(expand('~/.vim/bundle'))
        NeoBundleFetch 'Shougo/neobundle.vim'
    call neobundle#end()
endif

call neobundle#begin(expand('~/.vim/bundle/'))
" find file completion
"NeoBundle 'Shougo/unite.vim.git'
" color schemes
NeoBundle 'itcyny/landscape.vim'
call neobundle#end()

filetype plugin indent on
