" tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" edit
set number
set hlsearch
syntax on
set cursorcolumn
set cursorline
set ruler
"highlight CursorColumn   xxx term=reverse ctermbg=7 guibg=Grey90
"highlight CursorLine    xxx term=reverse ctermbg=7 guibg=Grey90
nmap <ESC><ESC> :noh<CR><ESC>

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
