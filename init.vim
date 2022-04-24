autocmd!
scriptencoding utf-8

syntax enable
autocmd InsertLeave * set nopaste
filetype plugin indent on
let loaded_matchparen = 1

set number
set autoindent
set tabstop=4
set smarttab
set mouse=a
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set nosc noru nosm
set lazyredraw
set ignorecase
set smarttab
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent
set path+=**
set wildignore+=*/node_modules/*
set formatoptions+=r
set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md
set exrc
if has('nvim')
  set inccommand=split
endif
if has('win32')
  set shell=$COMSPEC
endif
if has('unix')
  set shell=/usr/bin/bash
endif

" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript

if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set background=dark
  runtime ./colors/dracula.vim
  colorscheme Dracula
endif


call plug#begin()
Plug 'airblade/vim-gitgutter'                   " shows changed lines
Plug 'preservim/nerdtree'                       " directory tree
Plug 'Xuyuanp/nerdtree-git-plugin'              " directory tree + git
Plug 'APZelos/blamer.nvim'                      " shows who change the line
Plug 'ryanoasis/vim-devicons'                   " file icons
Plug 'pangloss/vim-javascript'                  " js colorscheme
Plug 'MaxMEllon/vim-jsx-pretty'                 " react colorscheme
Plug 'vim-syntastic/syntastic'                  " checks code error
Plug 'neoclide/coc.nvim', {'branch': 'release'} " auto completion
Plug 'tpope/vim-fugitive'                       " in-app git controller
Plug 'hoob3rt/lualine.nvim'                     " fast and customizable info bar at the bottom
Plug 'nvim-telescope/telescope.nvim'            " search for anything in anything
call plug#end()

nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-n> :tabnew .<CR>
nnoremap <C-q> :tabclose<CR>
nnoremap <C-s> <C-w>v<CR>
nnoremap <C-l> <C-w>l<CR>
nnoremap <C-h> <C-w>h<CR>
nnoremap <C-k> <C-w>k<CR>
nnoremap <C-j> <C-w>j<CR>
nnoremap ff <cmd>Telescope live_grep<CR>
nnoremap fw <cmd>Telescope grep_string<CR>

lua << EOF
require('telescope').setup{  defaults = { file_ignore_patterns = { "node_modules" }} }
EOF
