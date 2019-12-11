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

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/home/leo/apps/miniconda3/bin/python'

" neoterm
let g:neoterm_default_mod = 'below'
let g:neoterm_size = 20
let g:neoterm_autoscroll = 1
let g:neoterm_direct_open_repl = 1
let g:neoterm_repl_ruby = 'pry'
let g:neoterm_repl_python  = 'ipython'
autocmd FileType haskell let g:neoterm_repl_command  = 'stack ghci'

autocmd FileType haskell,python,ruby nnoremap <silent> <Space> :TREPLSendLine<CR>
autocmd FileType haskell,python,ruby vnoremap <silent> <Space> :TREPLSendLine<CR>

autocmd FileType haskell,python,ruby cabbrev tt T
autocmd FileType haskell,python,ruby cabbrev tn Tnew
autocmd FileType haskell,python,ruby cabbrev tg Ttoggle
autocmd FileType haskell,python,ruby cabbrev tc Tclose
autocmd FileType haskell cabbrev tl T :load %
autocmd FileType python cabbrev tl T run %
autocmd FileType ruby cabbrev tl T load '%'

" terminal mode setup
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <C-v><Esc> <Esc>
  highlight! link TermCursor Cursor
  highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15
endif

"au BufRead,BufNewFile *.hy  setfiletype hy
autocmd BufRead,BufNewFile *.hy set filetype=clojure

" Rainbow Parenthesis
let g:rainbow_active = 1
let g:rainbow_conf = {
\ 'ctermfgs': ['yellow', 'red', 'white', 'green', 'lightblue', 'lightred', 'lightgreen'],
\ 'operators': '_,_',
\ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\ 'separately': {
\   '*': {},
\   'tex': {
\     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\   },
\   'vim': {
\     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\   },
\   'html': {
\     'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\   },
\   'css': 0,
\ }
\}

" Haskell shortcuts
autocmd FileType haskell nnoremap <C-q> :execute ':!stack hoogle -- -i <cword>'<cr>

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
match OverLength /\%121v.\+/

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
let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0
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

" ALE config
let g:ale_enabled = 1
let b:ale_linters = {'python': ['flake8']}
let b:ale_fixers = {'python': ['yapf']}

" EasyMotion config
nmap f <Plug>(easymotion-bd-w)
nmap f <Plug>(easymotion-overwin-w)

" idris-vim config
nnoremap <leader>id :call IdrisAddClause()<CR>
nnoremap <leader>ic :call IdrisCaseSplit()<CR>

" ack config
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cabbrev ack Ack

call plug#begin()
"Plug 'roxma/nvim-completion-manager'
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
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
Plug 'w0rp/ale'
"Plug 'mklabs/split-term.vim'
"Plug 'kassio/neoterm'
"Plug 'mileszs/ack.vim'

Plug 'easymotion/vim-easymotion'

"Plug 'python-mode/python-mode', { 'branch': 'develop', 'for': 'python' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
Plug 'mzlogin/vim-markdown-toc', { 'for': 'markdown' }
"Plug 'guns/vim-clojure-static', { 'for': ['clojure', 'hy'] }
"Plug 'tpope/vim-fireplace', { 'for': ['clojure', 'hy'] }
"Plug 'guns/vim-clojure-highlight', { 'for': ['clojure', 'hy'] }
"Plug 'kien/rainbow_parentheses.vim', { 'for': ['clojure', 'hy'] }
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
"Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
"Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim', 'for': 'haskell' }
"Plug 'bitc/vim-hdevtools', { 'for': 'haskell' }
Plug 'luochen1990/rainbow'
"Plug 'tpope/vim-repeat'
"Plug 'guns/vim-sexp'
"Plug 'tpope/vim-surround'
"Plug 'tpope/vim-sexp-mappings-for-regular-people'
"Plug 'idris-hackers/idris-vim', { 'for': 'idr' }
"Plug 'fsharp/vim-fsharp', { 'for': 'fsharp', 'do': 'make fsautocomplete' }
"Plug 'vim-scripts/paredit.vim'

call plug#end()
