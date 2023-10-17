set nocompatible
filetype off
call plug#begin()
  Plug 'lifepillar/vim-solarized8'
  Plug 'scrooloose/syntastic'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'fatih/vim-go'
  Plug 'rust-lang/rust.vim'
  Plug 'lervag/vimtex'
call plug#end()
filetype plugin indent on

syntax off
set termguicolors
colorscheme solarized8
set background=light

set number
set tabstop=2
set shiftwidth=2
set expandtab "to spaces
set textwidth=79
set encoding=utf-8
set hidden
set showmatch
set autochdir
set autowrite
set shortmess+=I

set nobackup
set autoread
set nohlsearch
set nojoinspaces
set noswapfile
set nowritebackup
set noerrorbells
set visualbell t_vb=
" set mouse=a
set scrolloff=4

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

set list listchars=tab:‣\ ,trail:•

set statusline+=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]
set statusline+=%h%m%r%y[%n]
set statusline+=%=%c,%l/%L
set laststatus=2

au Filetype text setlocal spl=en_gb,de_ch,fr,es fo+=awq tw=72
au Filetype mail setlocal spl=en_gb,de_ch,fr,es com=n:> fo+=awq tw=72
au Filetype go setlocal nolist

hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi clear SpellLocal

hi SpellBad cterm=underline gui=underline
hi SpellCap cterm=underline gui=underline
hi SpellRare cterm=underline gui=underline
hi SpellLocal cterm=underline gui=underline
hi MatchParen cterm=bold gui=bold

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

let g:rustfmt_autosave = 1

let g:tex_flavor='latex'
let g:vimtex_view_method = 'skim'
let g:vimtex_view_skim_sync = 1
let g:vimtex_view_skim_activate = 1
