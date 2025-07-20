syntax on
filetype plugin indent on
colorscheme slate

set title
set number
set showmatch
set ignorecase smartcase
set tagcase=match
set hlsearch incsearch
set tabstop=8
set softtabstop=8
set shiftwidth=8
set autoindent smartindent
set noexpandtab
set nocompatible
set mouse=a
set history=10000
set enc=utf-8
set fenc=utf-8
set spelllang=en_us,ru
set termencoding=utf-8
set clipboard=unnamedplus
set comments=sl:/*,mb:\ *,elx:\ */
set viminfo+=n~/.config/vim/viminfo

nmap <F2> :w<CR>
imap <F2> <ESC>:w<CR>i
map <F3> <C-]>

vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ` ``<left>
