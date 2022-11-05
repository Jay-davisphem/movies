call plug#begin('~/.vim/plugged')
  Plug 'dense-analysis/ale'
  Plug 'jiangmiao/auto-pairs'
  Plug 'vim-autoformat/vim-autoformat'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-sleuth'
  Plug 'neoclide/coc.nvim', {'branch':'release'}
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'ryanoasis/vim-devicons'
  Plug 'ryanoasis/vim-devicons'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
  Plug 'PhilRunninger/nerdtree-buffer-ops'
  Plug 'PhilRunninger/nerdtree-visual-selection'
  " Autocomplete
  " post install (yarn install | npm install) then load plugin only for editing supported files
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'marcopaganini/termschool-vim-theme'
call plug#end()
colo dracula
syntax on
set relativenumber
let g:python3_host_prog="/usr/bin/python3"
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|venv)|(\.(swp|ico|git|svn))$'
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
tmap <Esc> <C-\><C-n>

nmap <silent> k :wincmd k<CR>
nmap <silent> j :wincmd j<CR>
nmap <silent> h :wincmd h<CR>
nmap <silent> l :wincmd l<CR>

set number
set nowrap
set sidescroll=1
set titlestring+=%f

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set fileformat=unix
set exrc

:filetype plugin on

" Plugins related
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree and leave the cursor in it.
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

let g:formatters_python = ['pep8', 'yapf']
let g:formatter_yapf_style= 'pep8'

let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'python': ['autopep8', 'yapf', 'pyflyby', 'autoimport'],
  \ 'c': ['clang-format'],
  \ 'c++': ['clang-format'],
  \ 'sh': ['shfmt']
\}
" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
