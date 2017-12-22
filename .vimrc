syntax enable
colorscheme monokai

set number
set cursorline

set mouse=a

filetype plugin indent on
set expandtab
set shiftwidth=4
set softtabstop=4

"enable smarter tab line
let g:airline#extensions#tabline#enabled = 1

"break line only at whitespace characters
set nolist wrap linebreak breakat&vim

"Turn off beeping in vim
set visualbell

set swapfile
set dir=/tmp

" Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"This WC function echos the word count in the status.
"It can be invoked by :WC in command mode.
"It will also remove strip all latex commands.
function! WC()
    let filename = expand("%")
    let cmd = "detex " . filename . " | wc -w | tr -d [:space:]"
    let result = system(cmd)
    echo result . " words"
endfunction
command WC call WC()

"Output latex in pdf format
"let g:Tex_DefaultTargetFormat='pdf'

"code to start NERDTree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"end


"Map NERDTree to toggle with Ctrl-N
nnoremap <C-N> :NERDTreeToggle<CR>



call plug#begin('~/.vim/plugged')

Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/vim-latex/vim-latex.git'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
