set nocompatible
set clipboard=unnamedplus

set splitbelow
set splitright
nnoremap <F2> :set wrap!<CR>
let mapleader=","

set nobackup
set noswapfile

colo ron
syntax on
set incsearch
set et
set sw=2
set ts=2
set nu
set nowrap

" status line
set laststatus=2
let g:airline_section_c='%F'

" markdown
let g:vim_markdown_initial_foldlevel=2

filetype off   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Markdown'
Plugin 'xmledit'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'kchmck/vim-coffee-script'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ------ Deprecated ------ "
" noremap <left> <C-w>h
" noremap <right> <C-w>l
" noremap <up> <C-w>k
" noremap <down> <C-w>j
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
