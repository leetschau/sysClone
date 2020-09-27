filetype indent plugin on
syntax on
colo ron

set clipboard+=unnamedplus
let mapleader=","
let maplocalleader = ","
set nobackup
set noswapfile
set splitbelow
set splitright
set incsearch
set et
set sw=2
set ts=2
set nowrap
set number

nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
nnoremap <leader>e :e $MYVIMRC<CR>
nnoremap <leader>s :so $MYVIMRC<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <F2> :set wrap!<CR>

" Font color for line longer than 80 characters
highlight OverLength ctermfg=cyan guibg=#592929
match OverLength /\%81v.\+/

cabbrev ss set spell!<CR>

" --- text section ---

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.local/vim'

  " Force your ~/.vim/after directory to be last in &rtp always:
  " let g:vim_addon_manager.rtp_list_hook = 'vam#ForceUsersAfterDirectoriesToBeLast'

  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif

  " This provides the VAMActivate command, you could be passing plugin names, too
  call vam#ActivateAddons([], {})
endfun
call SetupVAM()

" nerdtree
nnoremap <C-i> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ctrlp
let g:ctrlp_custom_ignore = { 'dir': 'node_modules\|.git' }
nnoremap <C-n> :CtrlPBuffer<CR>

" undo & undotree configs
set undodir=$HOME/.local/undo/ "make sure this folder exists
set undofile
set undolevels=1000
set undoreload=2000
nnoremap <leader>u :UndotreeToggle<CR>

" vim-maximizer
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

" ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" disable ALE by default
let g:ale_enabled = 0

" markdown
let g:vim_markdown_folding_level = 3
let g:vim_markdown_toc_autofit = 1
autocmd FileType markdown nnoremap <leader>t :Toc<CR>

" Voom outline
let g:voom_tree_placement = "right"
let g:voom_python_versions = [3]
let g:voom_tree_width = 40
autocmd FileType asciidoc nnoremap <leader>o :VoomToggle asciidoc<CR>
autocmd FileType markdown nnoremap <leader>o :VoomToggle markdown<CR>

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

VAMActivate github:ervandew/supertab github:scrooloose/nerdtree github:kien/ctrlp.vim github:mbbill/undotree github:fholgado/minibufexpl.vim github:szw/vim-maximizer github:scrooloose/nerdcommenter github:rlue/vim-barbaric github:kien/rainbow_parentheses.vim github:vim-airline/vim-airline github:plasticboy/vim-markdown github:vim-voom/VOom github:geoffharcourt/vim-matchit github:w0rp/ale github:tpope/vim-fugitive

