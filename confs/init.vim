set clipboard+=unnamedplus
set guicursor=

let mapleader=","
let maplocalleader = ","
set nobackup
set noswapfile
set splitbelow
set splitright
nnoremap <F2> :set wrap!<CR>
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>s :so $MYVIMRC<CR>

" neoterm
let g:python_host_prog = '/home/leo/apps/miniconda3/envs/anaconda/bin/python'
let g:neoterm_default_mod = 'vertical'
let g:neoterm_autoscroll = 1
let g:neoterm_direct_open_repl = 1
autocmd FileType haskell,python nnoremap <silent> <Space> :TREPLSendLine<CR>
autocmd FileType haskell,python vnoremap <silent> <Space> :TREPLSendLine<CR>
autocmd FileType haskell,python cabbrev ts T
autocmd FileType haskell,python cabbrev tl T :load %
autocmd FileType haskell,python cabbrev tg Ttoggle<CR>
autocmd FileType haskell let g:neoterm_repl_command  = 'stack ghci'
autocmd FileType python let g:neoterm_repl_python  = 'ipython'

" LaTeX Live Preview
let g:livepreview_engine = 'xelatex'
let g:livepreview_previewer = 'evince'

" vim cellmode
let g:cellmode_tmux_panenumber='2'
let g:cellmode_default_mappings='0'
vnoremap <silent> <leader>v :call RunTmuxPythonChunk()<CR>
nnoremap <silent> <leader>l :call RunTmuxPythonLine()<CR>
noremap <silent> <leader>nc :call RunTmuxPythonCell(0)<CR>
noremap <silent> <leader>c :call RunTmuxPythonCell(1)<CR>
noremap <silent> <leader>ut :call RunTmuxPythonAllCellsAbove()<CR>

" python-mode
let g:pymode_lint_on_fly = 0
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_folding = 0
let g:pymode_python = 'python3'
" let g:pymode_lint_ignore = ["E402", ]
autocmd FileType python cabbrev af PymodeLintAuto<CR>

" vim-maximizer
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

colo ron
syntax on

" Font color for line longer than 80 characters
highlight OverLength ctermfg=cyan guibg=#592929
match OverLength /\%81v.\+/

set incsearch
set et
set sw=2
set ts=2
set nu
set nowrap

" ctags config
set tags=.tags

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

" for vim-fireplace (clojure plugin)
autocmd FileType clojure nnoremap <buffer> <F5> :Eval<CR>
autocmd FileType clojure nnoremap <buffer> <F6> :%Eval<CR>

" Ag: grep utility
let g:ag_highlight=1

" status line
set laststatus=2
let g:airline_theme='badwolf'

" markdown
let g:vim_markdown_folding_level = 3
let g:vim_markdown_toc_autofit = 1
autocmd FileType markdown nnoremap <leader>t :Toc<CR>

" NerdTree
" define open/close shortcut
nnoremap <C-i> :NERDTreeToggle<CR>
" close NERDTree when all files closed:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nnoremap <C-n> :CtrlPBuffer<CR>

" Ultisnips for vim snippets
"let g:UltiSnipsEditSplit='vertical'

" ctrlp config
let g:ctrlp_custom_ignore = { 'dir': 'node_modules\|.git' }

call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'brooth/far.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'fholgado/minibufexpl.vim'
Plug 'mbbill/undotree'
Plug 'geoffharcourt/vim-matchit'
Plug 'ervandew/supertab'
Plug 'szw/vim-maximizer'
Plug 'scrooloose/nerdcommenter'
" Plug 'w0rp/ale'
Plug 'mklabs/split-term.vim'
Plug 'kassio/neoterm'
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
" Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }
Plug 'kien/rainbow_parentheses.vim', { 'for': 'clojure' }
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim', 'for': 'haskell' }
call plug#end()
