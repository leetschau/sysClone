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
"let g:airline_section_z='%{fugitive#statusline()}'

" markdown
let g:vim_markdown_initial_foldlevel=2

" NerdTree
" define open/close shortcut
map <C-n> :NERDTreeToggle<CR>
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close NERDTree when all files closed:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype off   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" hdevtools setup (haskell)
au FileType haskell nnoremap <buffer> <F3> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F4> :HdevtoolsClear<CR>

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'jtratner/vim-flavored-markdown'
Plugin 'xmledit'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'bitc/vim-hdevtools'
Plugin 'dkprice/vim-easygrep'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ------ Deprecated ------ "
" Plugin 'kchmck/vim-coffee-script'
" noremap <left> <C-w>h
" noremap <right> <C-w>l
" noremap <up> <C-w>k
" noremap <down> <C-w>j
" nnoremap <C-J> <C-W><C-J>
" nnoremap <C-K> <C-W><C-K>
" nnoremap <C-L> <C-W><C-L>
" nnoremap <C-H> <C-W><C-H>
