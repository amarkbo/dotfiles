" turn on filetype detection, with file-specific indent and plugins enabled
filetype plugin indent on
syntax on

" turn off vi compatibility
set nocompatible

" fixes weird backspace issues.
set backspace=2

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
Bundle 'kien/ctrlp.vim'
" Note: uses jshint
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'
Bundle 'vim-scripts/matchit.zip'
Bundle 'Valloric/YouCompleteMe'

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

" remaps K to split lines (opposite of J)
nnoremap K i<CR><Esc>

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

" menu for autocompleting commands
set wildmenu
set wildmode=list:longest,full

" show matching brackets
set showmatch

" show current mode
set showmode

" show line number ruler
set ruler

" vsplit the netrw viewport to the right by default (now I use nerdtree, so not needed)
" let g:netrw_altv = 1

" Change cursor in insert mode iterm2 (in tmux, and not in tmux)
" from: http://vim.wikia.com/wiki/Change_cursor_shape_in_different_modes

if match($TERM, "screen")!=-1
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" pyflakes and spellcheck coloring (no longer using pyflakes, but keeping this around anyways.)
" from: http://stackoverflow.com/questions/3614312/change-background-color-highlight-for-errors-detected-by-pylint-with-ropevim-and

highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" ===== IDE ====

" so that NERDTree always opens in the current folder.
" http://stackoverflow.com/questions/5817730/changing-root-in-nerdtree
set autochdir
let NERDTreeChDirMode=2
nnoremap <leader>e :NERDTreeToggle .<CR>

" close omni completion tip window on youcompleteme selection
" http://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" command p
nnoremap <leader>p :CtrlP<CR>

" faster window switching
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" syntax checking preferences
let g:syntastic_python_checkers = ['pyflakes']
let g:syntastic_javascript_checkers = ['jshint']

" ===== GUI ====

" c-l remaped mapped above
nmap <leader>l :redraw!<CR>

" pretty colors
if !has("gui_running")
    let g:solarized_termtrans=1
    let g:solarized_termcolors=256
endif

colorscheme solarized 
set background=dark

" ===== OS =====

" this has saved me a couple times.
set backup
set backupdir=~/.vimbackup
