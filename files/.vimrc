" add plugins
call plug#begin('~/.vim/plugged')

Plug 'pearofducks/ansible-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/syntastic'

call plug#end()

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" round down indent to shiftwidth
set shiftround

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" always uses spaces instead of tab characters
set expandtab

" show line numbers
set nu

" always remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" enhanced tab completion
set wildmenu
set wildmode=longest:full,full

" switch between buffers with hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" treat all .ym[a]l files as ansible
autocmd BufRead,BufNewFile *.yml set ft=ansible

" enable solarized
syntax enable
set t_Co=256
set background=dark
colorscheme solarized

