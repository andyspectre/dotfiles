" Vim is not restricted to the vi feature set
set nocompatible

" Load a standard plugin that lets vim recognize different file types
filetype plugin on

" Some visual and aesthetic stuff
" colorscheme blue
syntax on
set cursorline
highlight WhiteSpaces ctermbg=red guibg=red
match WhiteSpaces /\s\+$/
highlight Cursor  ctermbg=red guibg=red
""" Visualize non-visible chars
" set list
" set listchars=eol:¬,tab:>·,trail:·,extends:>,precedes:<,space:␣
" highlight SpecialKey ctermbg=red
"
" Disable the modeline feature
set modelines=0

" Blink cursor on error instead of beeping
set visualbell

" Indentation, formatting
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent
set noshiftround
set ruler
set relativenumber
set wrap
set textwidth=90
set formatoptions=tcqrn1
set wildmenu

" Rendering
set ttyfast

" Always display the Status bar
set laststatus=2

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch


" Enable mouse support
set mouse=a

" Keybindings
let mapleader = "\<Space>"
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader><C-n> :NERDTree<CR>
nnoremap <leader><C-t> :NERDTreeToggle<CR>
nnoremap <leader><C-f> :NERDTreeFind<CR>
nnoremap <leader>vr :source ~/.vimrc<CR>
nnoremap S :split<Return>
nmap <leader>c <Plug>OSCYankOperator
nmap <leader>cc <leader>c_
vmap <leader>c <Plug>OSCYankVisual

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Using Vim-plug
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'ojroques/vim-oscyank'
call plug#end()

" ALE linters
let g:ale_linters = {
\   'sh': ['shellcheck', 'bashate'],
\   'java': ['javac']
\}

" ALE fixers (format, indent etc)
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'sh': ['shfmt'],
\   'java': ['clang-format']
\}

" Configure shellcheck
let g:ale_sh_shellcheck_options = '-s sh -a -o all -Calways -x -e SC2310,SC2311,SC2312'

" Configure bashate
let g:ale_sh_bashate_options = '-i E002,E003,E010,E011 --max-line-length 120'
