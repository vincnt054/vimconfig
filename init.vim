call plug#begin('~/.config/nvim/plugins')

" adwaita theme
Plug 'Mofiqul/adwaita.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'

" ale
Plug 'dense-analysis/ale'

" go-mode
Plug 'fatih/vim-go'

" fugitive
Plug 'tpope/vim-fugitive'

" vim wiki
Plug 'vimwiki/vimwiki'
Plug 'tools-life/taskwiki'

" auto paren
Plug 'jiangmiao/auto-pairs'

" rust-mode
Plug 'rust-lang/rust.vim'

" fzf
Plug 'junegunn/fzf.vim'

" markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
call plug#end()

let mapleader = ","

" Theme
let g:adwaita_darker = v:true " for darker version
let g:adwaita_disable_cursorline = v:true " to disable cursorline
colorscheme adwaita

set nocompatible
syntax on

" Sets how many lines of history VIM has to remember
set history=1000

" Enable filetype plugins
filetype plugin on
filetype indent on

set autoindent
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

set ruler
set hlsearch
set ignorecase
set incsearch
set smartcase

set encoding=utf-8
set relativenumber

" Trailing whitespace remove on save
autocmd FileType c,cpp,java,golang,rust,python autocmd BufWritePre <buffer> %s/\s\+$//e

" Vimwiki with markdown
let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_global_ext = 0
let g:vim_markdown_folding_disabled = 1
let g:taskwiki_markup_syntax = 'markdown'
let g:markdown_folding = 1

" Window resize
noremap <silent> <C-S-Left> :vertical resize +1<CR>
noremap <silent> <C-S-Right> :vertical resize -1<CR>

" Keybings
nnoremap <Leader>sa :wqa<Cr>
nnoremap <Leader>sq :wq<Cr>
nnoremap <Leader>ff :Files<Cr>
nnoremap <Leader>fl :Lines<Cr>
nnoremap <Leader>fs :BLines<Cr>
nnoremap <Leader>fw :Windows<Cr>
nnoremap <Leader>fb :Buffer<Cr>

let g:fzf_layout = { 'down': '40%' }
