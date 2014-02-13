" turn on filetype detection, with file-specific indent and plugins enabled
filetype plugin indent on
syntax on

" turn off vi compatibility
set nocompatible

" ===== BUNDLES =====

" Using Vundle (info below)
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'

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

" unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR><CR>

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

" menu for autocompleting
set wildmenu
set wildmode=list:longest,full

" show matching brackets
set showmatch

" show current mode
set showmode

" show line number ruler
set ruler

" vsplit the netrw viewport to the right by default
let g:netrw_altv = 1

" pyflakes (and spellcheck) coloring
" taken from:
" http://stackoverflow.com/questions/3614312/change-background-color-highlight-for-errors-detected-by-pylint-with-ropevim-and

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" ===== IDE ====

set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>e :NERDTreeToggle .<CR>
" nmap <leader>e :NERDTreeToggle<cr>

" faster window switching
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" ===== GUI ====

if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
endif

colorscheme solarized 
set background=dark

" ===== OS =====

set backup
set backupdir=~/.vimbackup
