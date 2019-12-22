set t_Co=16

filetype plugin on
syntax on
filetype indent on
set relativenumber
set hlsearch
set wrap!
set fillchars+=vert:\ 
set colorcolumn=80
set splitright
set splitbelow
set cursorline
"set cursorcolumn
colorscheme default
set ttyfast

"set tabstop=4
"set shiftwidth=4
"set expandtab

"augroup project
"	autocmd!
"	autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
"augroup END

inoremap jk <ESC>
inoremap kj <ESC>

map <F12> mzgg=G`z
