call plug#begin('~/AppData/Local/nvim/plugged')
" below are some vim plugins for demonstration purpose.
" add the plugin you want to use here.
" Plug 'joshdick/onedark.vim'
" Plug 'iCyMind/NeoSolarized'

	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	Plug 'sainnhe/everforest'
	Plug 'dracula/vim'
	Plug 'ryanoasis/vim-devicons'
	"  Plug 'SirVer/ultisnips' 
	Plug 'honza/vim-snippets'
	Plug 'scrooloose/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'mhinz/vim-startify'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'numToStr/Comment.nvim'

	Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
	Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal


	" Vim Script
	Plug 'ahmedkhalf/project.nvim'

	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
	Plug 'ThePrimeagen/vim-be-good'
	Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
	
	" Vim Script
	Plug 'ahmedkhalf/project.nvim'

call plug#end()


set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbersshell 
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

" color schemes
 if (has("termguicolors"))
 set termguicolors
 endif
 syntax enable
colorscheme everforest

" open new split panes to right and below
set splitright
set splitbelow
set shell="C:/Program Files/Git/bin/bash.exe"


" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Somewhere after plug#end()
lua require('Comment').setup()



let mapleader = " " " map leader to Space
map <leader>h :noh<CR>
map <leader>b :NERDTreeToggle<CR>
map <leader>. :BufferNext<CR>
map <leader>, :BufferPrevious<CR>
map <leader>q :q<CR>
map <leader>s :w<CR> " Save the file

autocmd TextChanged,TextChangedI <buffer> silent write
