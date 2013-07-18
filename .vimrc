" <TAB>: completion.
let g:Powerline_theme = 'tuutti.vim'
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" Remove delay between modes.
set timeoutlen=1000 ttimeoutlen=0

set encoding=utf-8

" Smart case search
set smartcase

" Use smartcase.
let g:neocomplcache_enable_smart_case = 1 
let g:neocomplcache_enable_at_startup = 1

" Autocomplete braces
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" Create new / change buffer
map <C-t> :tabnew<CR>
map <C-Left> :tabp<CR>
map <C-Right> :tabn<CR>

" Bigger block size for faster scrolling
set ttyfast

" Undo history between sessions
set undodir=~/.vim/undodir
set undofile
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer reload

" Colored column (to see line size violations)
" set colorcolumn=80

" Source .vimrc after saving .vimrc
" autocmd bufwritepost .vimrc source $MYVIMRC

" Highlight current line in insert mode.
autocmd InsertLeave * set nocursorline
autocmd InsertEnter * set cursorline

" Bundle thingie
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/vim-snippets"
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-unimpaired'
Bundle 'majutsushi/tagbar'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Color settings
set t_Co=256
colorscheme jellybeans

" use filetype plugins, e.g. for PHP
" filetype plugin on

" old vim thingies continue
syntax on

"set scrolljump=5
set scrolloff=5

" repair wired terminal/vim settings
set backspace=start,eol,indent

" toggle paste
set pastetoggle=§

set wrap 

" show nice info in ruler
set ruler
set laststatus=2

" set standard setting for pear coding standards
set tabstop=2
set shiftwidth=2

" auto expand tabs to spaces
set expandtab

" auto indent after a {
set autoindent
set smartindent

" show line numbers by default
set number

" use incremental searching
set incsearch

autocmd BufEnter * lcd %:p:h
au BufRead,BufNewFile *.install		set filetype=php
au BufRead,BufNewFile *.module		set filetype=php
au BufRead,BufNewFile *.inc 		set filetype=php

" Disable pastemode when leaving insert mode.
au InsertLeave * set nopaste

" CtrlP settings
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dotfiles = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_match_window_reversed = 0

nmap ; :CtrlPBuffer<CR>
" Autocenter on ggG
nmap <silent> ggG ggGzz


" Reselect visual block after indent/outdent 
vnoremap < <gv
vnoremap > >gv


" Keep search pattern at the center of the screen. 
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz

" Toggle tagbar and auto resize existing spit windows to use exactly same
" amount of space
nmap <F8> :TagbarToggle<CR><C-w>=
" Resize tagbar to use 30 chars instead of 40
let g:tagbar_width = 30

let g:Powerline_symbols = 'fancy'
let g:powerline_config_path = $HOME.'/.config/powerline/config_files'

" Unimpaired: Move line up/down
map <S-Up> [e
map <S-Down> ]e
