" load things. (https://github.com/tpope/vim-pathogen)
call pathogen#infect()

" turn on filetype detection, with file-specific indent and plugins enabled
filetype plugin indent on

syntax on

" turn off vi compatibility
set nocompatible

" ===== NAVIGATION =====

" maintain some context while scrolling
set scrolloff=2

" scroll viewport 3 lines at a time
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" ===== SEARCH =====

" ignore case in search
set ic

" smart case (case sensitive if capital)
set smartcase

" incremental search
set incsearch

" highlight search
set hlsearch

" ===== INPUT =====

" leader key
let mapleader = ","

" ===== TABS =====

" how many spaces a tab (TAB) counts for
set tabstop=4

" how many spaces tab inserts
set shiftwidth=4

" round to nearest tab when shifting
set shiftround

" expand tab into spaces
set expandtab

" auto indent
set autoindent

" ===== UI =====

" show matching brackets
set showmatch

" show current mode
set showmode

" show line number ruler
set ruler

" vsplit the netrw viewport to the right by default
let g:netrw_altv = 1

" ===== IDE ====

nmap <leader>e :NERDTreeToggle<cr>

" faster window switching
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" ===== OS =====

set backup
set backupdir=~/.vimbackup

