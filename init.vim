syntax on

set termguicolors

set showmatch               " show matching 
set ignorecase              " case insensitive 

set hlsearch                " highlight search 
set incsearch               " incremental search

set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the rig 
set expandtab               " converts tabs to white space

set smartindent
set shiftwidth=4            " width for autoindents
set number                  " add line numbers
set numberwidth=4           " columns used for the line number

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

" this makes the gitsigns column the same as the number column
"set signcolumn=number

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

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-fugitive'  "allows the use of git from within nvim using :Git

Plug 'lewis6991/gitsigns.nvim'

" LSP Support
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lua'
"  Snippets
Plug 'L3MON4D3/LuaSnip'
" Snippet collection (Optional)
Plug 'rafamadriz/friendly-snippets'
Plug 'VonHeikemen/lsp-zero.nvim'

" this is our file manager
Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plug 'nvim-tree/nvim-tree.lua'

Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

colorscheme catppuccin

lua require('funnybot9980')


" Telescope mappings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
