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

highlight OverLength ctermfg=cyan guibg=#592929
match OverLength /\%81v.\+/

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" tab switching shortcuts
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<CR>

cabbrev ss set spell<CR>

" JavaScript code folding
set foldmethod=syntax
set foldlevelstart=4
let javaScript_fold=1

" Ag: grep utility
let g:ag_highlight=1

" status line
set laststatus=2
let g:airline_section_c='%F'
let g:airline_section_z='%{ObsessionStatus()}'

" Customize tabline
hi TabLineFill term=bold cterm=bold ctermbg=0
hi TabLine ctermfg=Yellow

" markdown
let g:vim_markdown_initial_foldlevel=2

" NerdTree
" define open/close shortcut
nnoremap <C-n> :NERDTreeToggle<CR>
" close NERDTree when all files closed:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <C-a> :CtrlPBuffer<CR>

" hdevtools setup (haskell)
au FileType haskell nnoremap <buffer> <F3> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F4> :HdevtoolsClear<CR>

" Taboo: tab page rename
set sessionoptions+=tabpages,globals
cabbrev tr TabooRename

" Ultisnips for vim snippets
let g:UltiSnipsEditSplit='vertical'

" syntastic configs
let g:syntastic_javascript_checkers = ['gjslint']

" ====== Vundle Start =======
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
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'gcmt/taboo.vim'
Plugin 'tpope/vim-obsession'
Plugin 'mattn/emmet-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'

" ====== End User Defined Plugins ======
call vundle#end()

filetype plugin indent on
