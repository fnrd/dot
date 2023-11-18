set nocompatible
filetype off
call plug#begin()
  Plug 'yorickpeterse/vim-paper'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-obsession'
  Plug 'fatih/vim-go'
  Plug 'rust-lang/rust.vim'
call plug#end()
filetype plugin indent on

syntax on
set termguicolors
colorscheme paper
set background=light

set number
set tabstop=2
set shiftwidth=2
set expandtab
set textwidth=79
set encoding=utf-8
set hidden
set showmatch
set autochdir
set autowrite
set shortmess+=I
set scrolloff=4

set nobackup
set autoread
set nohlsearch
set nojoinspaces
set noswapfile
set nowritebackup
set noerrorbells
set visualbell t_vb=
set nowildmenu
map q <Nop>

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+pa

inoremap <silent><expr> <Tab>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-TAB>"

set list listchars=tab:‣\ ,trail:•
hi NonText ctermfg=grey guifg=grey

set statusline+=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]
set statusline+=%h%m%r%y[%n]%{ObsessionStatus()}
set statusline+=%=%c,%l/%L
set laststatus=2

au Filetype text setl spl=en_gb,de_ch,fr,es fo+=awq tw=72
au Filetype mail setl spl=en_gb,de_ch,fr,es com+=nb:> fo+=awq tw=72
au Filetype go setl nolist

let g:rustfmt_autosave = 1
