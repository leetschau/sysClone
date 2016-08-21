set nocompatible
set clipboard=unnamedplus

set splitbelow
set splitright
nnoremap <F2> :set wrap!<CR>
let mapleader=","
let maplocalleader = ","
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

" for vim-fireplace (clojure plugin)
autocmd FileType clojure nnoremap <buffer> <F5> :Eval<CR>
autocmd FileType clojure nnoremap <buffer> <F6> :%Eval<CR>


let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']

" JavaScript code folding
set foldmethod=syntax
set foldlevelstart=4
let javaScript_fold=1

" Ag: grep utility
let g:ag_highlight=1

" status line
set laststatus=2
let g:airline_theme='badwolf'
" let g:airline_section_c='%F'
" let g:airline#extensions#tabline#enabled = 1

" Customize tabline
hi TabLineFill term=bold cterm=bold ctermbg=0
hi TabLine ctermfg=Yellow

" markdown
let g:vim_markdown_initial_foldlevel=1
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" NerdTree
" define open/close shortcut
nnoremap <C-n> :NERDTreeTabsToggle<CR>
" close NERDTree when all files closed:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <C-a> :CtrlPBuffer<CR>

" hdevtools setup (haskell)
au FileType haskell nnoremap <buffer> <F3> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F4> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F6> :HdevtoolsInfo<CR>

cabbrev stm SyntasticToggleMode<CR>

" Taboo: tab page rename
set sessionoptions+=tabpages,globals
cabbrev tr TabooRename

" Ultisnips for vim snippets
let g:UltiSnipsEditSplit='vertical'

" syntastic configs
"let g:syntastic_javascript_checkers = ['gjslint']
let g:syntastic_javascript_checkers = ['eslint']

" ====== Vundle Start =======
filetype off   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ====== User Defined Plugins ======
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-obsession'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-repeat'
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'venantius/vim-cljfmt'
Plugin 'leetschau/tmuxcmd'
" ====== End User Defined Plugins ======
call vundle#end()

filetype plugin indent on
