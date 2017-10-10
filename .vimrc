syntax enable
colorscheme monokai

set number
set cursorline

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4

"enable smarter tab line
let g:airline#extensions#tabline#enabled = 1


"remap ctrl-s to save
map <C-s> :w <CR> :echo "Saved" <CR>
imap <C-s> <Esc> :w <CR> :echo "Saved" <CR> i

set swapfile
set dir=~/tmp

"code to start NERDTree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"end

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'vim-airline/vim-airline'

call plug#end()
