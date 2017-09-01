set nocompatible
set clipboard=unnamedplus
"set clipboard=unnamed    "on cygwin

set splitbelow
set splitright
nnoremap <F2> :set wrap!<CR>
let mapleader=","
let maplocalleader = ","
set nobackup
set noswapfile

" code folding
set foldmethod=indent
set foldnestmax=2
nnoremap <space> za

" JavaScript code folding
"set foldmethod=syntax
"set foldlevelstart=4
"let javaScript_fold=1

" vimux cellmode
let g:cellmode_tmux_panenumber='2'
let g:cellmode_default_mappings='0'
vnoremap <silent> <leader>v :call RunTmuxPythonChunk()<CR>
nnoremap <silent> <leader>l :call RunTmuxPythonLine()<CR>
noremap <silent> <leader>nc :call RunTmuxPythonCell(0)<CR>
noremap <silent> <leader>c :call RunTmuxPythonCell(1)<CR>
noremap <silent> <leader>ut :call RunTmuxPythonAllCellsAbove()<CR>

" python auto-completion
let g:jedi#completions_command = "<C-K>"

colo ron
syntax on

" autocomplete window color for plugin YouCompleteMe
highlight Pmenu ctermfg=white ctermbg=black
highlight PmenuSel ctermfg=green ctermbg=black
nnoremap <leader>y :let g:ycm_auto_trigger=0<CR>
nnoremap <leader>Y :let g:ycm_auto_trigger=1<CR>

" multiple cursors configs
" let g:multi_cursor_next_key='<C-j>'
" let g:multi_cursor_prev_key='<C-k>'

" Font color for line longer than 80 characters
highlight OverLength ctermfg=cyan guibg=#592929
match OverLength /\%81v.\+/

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

" undo & undotree configs
set undodir=$HOME/.vim/undo/ "make sure this folder exists
set undofile
set undolevels=1000
set undoreload=10000
nnoremap <leader>u :UndotreeToggle<CR>

cabbrev ss set spell!<CR>
cabbrev mt MBEToggle<CR>
cabbrev mru MBEToggleMRU<CR>
cabbrev vb vert sb
cabbrev tt TagbarToggle<CR>

" for vim-fireplace (clojure plugin)
autocmd FileType clojure nnoremap <buffer> <F5> :Eval<CR>
autocmd FileType clojure nnoremap <buffer> <F6> :%Eval<CR>


let g:syntastic_python_python_exec = '/usr/bin/python3'
let g:syntastic_python_flake8_exec = 'python3'
let g:syntastic_python_flake8_args = ['-m', 'flake8']

" Ag: grep utility
let g:ag_highlight=1

" status line
set laststatus=2
let g:airline_theme='badwolf'

" markdown
let g:vim_markdown_folding_level = 3
let g:vim_markdown_toc_autofit = 1
nnoremap <leader>t :Toc<CR>

" NerdTree
" define open/close shortcut
nnoremap <C-i> :NERDTreeToggle<CR>
" close NERDTree when all files closed:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <C-n> :CtrlPBuffer<CR>

" hdevtools setup (haskell)
au FileType haskell nnoremap <buffer> <F3> :HdevtoolsType<CR>
au FileType haskell nnoremap <buffer> <silent> <F4> :HdevtoolsClear<CR>
au FileType haskell nnoremap <buffer> <silent> <F6> :HdevtoolsInfo<CR>

cabbrev stm SyntasticToggleMode<CR>

" Ultisnips for vim snippets
"let g:UltiSnipsEditSplit='vertical'

" syntastic configs
"let g:syntastic_javascript_checkers = ['gjslint']
let g:syntastic_javascript_checkers = ['eslint']

" ctrlp config
let g:ctrlp_custom_ignore = { 'dir': 'node_modules\|.git' }

" eclim
let g:EclimCompletionMethod = 'omnifunc'

" ====== Vundle Start =======
filetype off   " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ====== User Defined Plugins ======
"Plugin 'plasticboy/vim-markdown'
Plugin 'gabrielelana/vim-markdown'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tfnico/vim-gradle'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'mbbill/undotree'
Plugin 'derekwyatt/vim-scala'
Plugin 'geoffharcourt/vim-matchit'
Plugin 'benmills/vimux'
Plugin 'leetschau/vim-cellmode'
Plugin 'davidhalter/jedi-vim'
Plugin 'posva/vim-vue'
" ====== End User Defined Plugins ======
call vundle#end()

filetype plugin indent on
