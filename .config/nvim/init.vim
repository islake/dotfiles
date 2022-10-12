noremap n j
noremap e k
noremap i l
noremap j e
noremap k n
noremap l i
noremap N J
noremap E K
noremap I L
noremap J E
noremap K N
noremap L I

" use system clipboard
set clipboard+=unnamedplus

" set dark background
set background=dark

" highlight matching brackets etc
set showmatch

" ignore case for searches
set ignorecase
" ...unless search contains uppercase
set smartcase

" add line numbers
set number

" relative line numbers
set rnu

" enable syntax highlighting
syntax on

" highlight current cursor line
set cursorline

" enable filetype plugins
filetype plugin on

call plug#begin()

" Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'preservim/nerdcommenter'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'ekickx/clipboard-image.nvim'

call plug#end()

lua << END
require('lualine').setup()
options = { theme = 'gruvbox' }
END

colorscheme gruvbox
