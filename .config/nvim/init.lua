local vim = vim
local Plug = vim.fn['plug#']
vim.call('plug#begin')
  Plug 'yorickpeterse/vim-paper'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-repeat'
  Plug 'fatih/vim-go'
  Plug 'rust-lang/rust.vim'
  Plug 'lervag/vimtex'
vim.call('plug#end')

vim.cmd('silent! colorscheme paper')
vim.opt.termguicolors = true

vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.textwidth = 79
vim.opt.hidden = true
vim.opt.showmatch = true
vim.opt.autochdir = true
vim.opt.autowrite = true
vim.opt.scrolloff = 4
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = 'a'

vim.opt.backup = false
vim.opt.autoread = true
vim.opt.hlsearch = false
vim.opt.joinspaces = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.errorbells = false
vim.opt.wildmenu = false

vim.opt.clipboard = 'unnamedplus'

vim.opt.list = true
vim.opt.listchars:append({ tab = '‣ ' , trail = '•' })

vim.cmd([[
hi NonText ctermfg=grey guifg=grey

set statusline+=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]
set statusline+=%h%m%r%y[%n]
set statusline+=%=%c,%l/%L
set laststatus=3

au Filetype text setl spl=en_gb,de_ch,fr,es fo+=awq tw=72 nonu
au Filetype mail setl spl=en_gb,de_ch,fr,es com+=nb:> fo+=awq tw=72
au Filetype go setl nolist

let g:rustfmt_autosave = 1
]])
