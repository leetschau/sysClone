set nocompatible
set clipboard=unnamedplus
execute pathogen#infect()
call pathogen#helptags()
call pathogen#incubate()

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
nnoremap <F2> :set wrap!<CR>

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

nnoremap <C-o> :vsp<CR>:FufCoverageFile<CR>

" status line
set laststatus=2
let g:airline_section_c='%F'

" markdown
let g:vim_markdown_initial_foldlevel=2

" NerdTree
" define open/close shortcut
map <C-n> :NERDTreeToggle<CR>
" Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close NERDTree when all files closed:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype plugin indent on

" ------ Deprecated ------ "

"noremap <left> <C-w>h
"noremap <right> <C-w>l
"noremap <up> <C-w>k
"noremap <down> <C-w>j

" let mapleader="-"
" the key \ is easy to touch than -

" Tagbar
"nmap <leader>tt :TagbarToggle<CR>

" dart
"if has('vim_starting')
  "set nocompatible
  "set runtimepath+=~/.vim/bundle/dart-vim-plugin
"endif

" colo koehler
" set cc=80

" Input Method
" :inoremap <ESC> <ESC>:set iminsert=0<CR>
" :nnoremap i i<C-1>hao<Space><CR>

" vimim
" let g:vimim_tab_as_onekey=1
" let g:vimim_static_input_style=2

" c.vim
" let g:C_MapLeader  = ','
" a.vim
" source ~/.vim/bundle/a.vim-2.18/a.vim

"autocmd FileType clojure nnoremap <buffer> <F5> :Eval<CR>
