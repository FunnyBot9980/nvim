syntax on

set termguicolors

set clipboard+=unnamedplus

set showmatch               " show matching 
set ignorecase              " case insensitive 

set hlsearch                " highlight search 
set incsearch               " incremental search

set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the rig 
set expandtab               " converts tabs to white space

set formatoptions-=r
set formatoptions-=o

set smartindent
set shiftwidth=4            " width for autoindents

set relativenumber                  " add line numbers
set numberwidth=4           " columns used for the line number

" toggle hybrid relative line numbers with SPACEn
let mapleader = "\<Space>"
nnoremap <leader>n :set relativenumber!<cr>

set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type

set mouse=a                 " enable mouse click

set clipboard=unnamedplus   " using system clipboard

set splitbelow
set splitright

set hidden

set scrolloff=8

set undofile


" hides mode because lightline plugin does this for us
set noshowmode


filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim

call plug#begin('~/.config/nvim/plugged')

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-fugitive'  "allows the use of git from within nvim using :Git

Plug 'lewis6991/gitsigns.nvim'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

Plug 'navarasu/onedark.nvim'

Plug 'tpope/vim-commentary'

call plug#end()

let g:onedark_config = {
            \ 'style': 'dark',
            \}
colorscheme onedark

" colorscheme catppuccin
lua require('funnybot9980')

autocmd VimEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
