
"Installing Vimplug
call plug#begin('~/.config/nvim/plugged')

"Plugins I like
Plug 'https://github.com/Siddarth-Raghuvanshi/SimpylFold.git'
Plug 'https://github.com/plasticboy/vim-markdown.git'
Plug 'https://github.com/jpalardy/vim-slime'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/davidhalter/jedi-vim.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/godlygeek/tabular'
Plug 'https://github.com/plasticboy/vim-markdown'
Plug 'https://github.com/esamattis/slimux.git'
Plug 'https://github.com/lunacookies/vim-colors-xcode.git'

call plug#end()

" Color and Theme Settings
colorscheme xcodewwdc
let g:xocode_green_comments=1

" Get out of insert mode without killing myself
inoremap jj <Esc>

"Keybindings
let mapleader = ','

"Spaces and tabs
set tabstop=8
set softtabstop=0
set expandtab
set shiftwidth=4
set smarttab

"Allowing Neovim to work with Python
let g:python3_host_prog = '/Users/Siddarth/opt/anaconda3/envs/neovim/bin/python' 

"Copy and Paste in Vim using the System Register
vnoremap <C-c> "+y
noremap <C-v> "+P

"Visual Mode Config
vnoremap <tab> >gv
vnoremap <S-tab> <gv

"Command Line Config
set wildmenu

"Vim Splits
set splitbelow
set splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"UI Config
set number
set showcmd
set cursorline
set showmatch
set relativenumber
set colorcolumn=79
highlight ColorColumn ctermbg=168 

"Searching
set incsearch
set hlsearch

"Vim Update Time
set updatetime=300

"Opening the terminal in the bottom of the screen
command Term ter | <C-W>k | res +25 

"Folding is based on SimpylFold and some options are set
nnoremap <space> za
vnoremap <space> zf
let g:SimpylFold_fold_import=0
let g:SimpylFold_unfold_function_name=1
let g:SimpylFold_unfold_docstring=0

"Jedi-Vim Config
let g:jedi#use_splits_not_buffers = 'right' 
let g:jedi#show_call_signatures = "2"

"Slimux Settings
nnoremap R<CR> :SlimuxREPLSendLine<CR>
vnoremap R<CR> :SlimuxREPLSendLine<CR>

"Spellcheck for Markdown files and Git Commit Messages
autocmd Filetype markdown setlocal spell
autocmd Filetype markdown setlocal complete+=kspell
autocmd Filetype markdown setlocal spellsuggest+=10
autocmd Filetype gitcommit setlocal spell
autocmd Filetype gitcommit setlocal complete+=kspell
autocmd Filetype gitcommit setlocal spellsuggest+=10

"Auto wrap around for Markdown files
au BufRead,BufNewFile *.md setlocal textwidth=79
