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

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" status line
set laststatus=2
let g:airline_section_c='%F'

" markdown
let g:vim_markdown_initial_foldlevel=2

" NerdTree
" define open/close shortcut
nnoremap <C-n> :NERDTreeToggle<CR>
" open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" close NERDTree when all files closed:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <C-a> :CtrlPBuffer<CR>

" hdevtools setup (haskell)
au FileType haskell nnoremap <buffer> <F3> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F4> :HdevtoolsClear<CR>

filetype off   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ====== User Defined Plugins ======
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

" ====== End User Defined Plugins ======
call vundle#end()

filetype plugin indent on

" ------ Deprecated ------ "
" Plugin 'kchmck/vim-coffee-script'
" noremap <left> <C-w>h
" noremap <right> <C-w>l
" noremap <up> <C-w>k
" noremap <down> <C-w>j
