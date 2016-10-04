"Initialize pathogen
call pathogen#infect()
call pathogen#helptags()

"Open NERDTree on startup
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

"Close vim when the only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Turn on syntax mode
syntax on

"Set the theme
set background=dark
colorscheme solarized
let g:solarized_termcolors=256


"Allow airline plugin to load on startup
set laststatus=2

"Airline configuration
let g:airline_theme = 'powerlineish'
let g:airline_enable_branch = 1

"Start git-gutter on startup
let g:gitgutter_max_signs = 500  " default value

"No compatibility mode
set nocompatible

"Linenumbers and ruler
set number
set ruler

"Show matching brackets
set showmatch

"Amount of lines in the cmdline
set cmdheight=1

"Make backspace behave like it should
set backspace=eol,start,indent

" Ignore case with only lowercase chars in search
set ignorecase

" Stop ignoring case with uppercase letters present
set smartcase

"Encoding
set encoding=utf-8

"Wrap
set wrap

"Show these tabs and spaces and so on
set list 
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮

"Wrap long lines at a blank
set linebreak
set showbreak=↪ 

"Fillchars
set fillchars=diff:⣿,vert:│


" Only show trailing whitespace when not in insert mode
augroup trailing 
    autocmd!
    autocmd InsertEnter * :set listchars-=trail:⌴
    autocmd InsertLeave * :set listchars+=trail:⌴
augroup END

"Fix tabs
set smarttab
set shiftwidth=2
set tabstop=2
set expandtab


