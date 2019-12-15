set encoding=utf-8

"automatic reloading of vimrc
autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost _vimrc source %

"copy and paste also works with outside of vim
set pastetoggle=<F2>
set clipboard=unnamed

"save with crtl-z
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

"leader key allows second layer of shortcuts
"leader key is ','
let mapleader=","

"move between tabs (:tabnew) using leaderkey + n or + m
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

"move between splits using crtl-h j k l
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"enable syntax highlighting
colorscheme minimalist
call pathogen#infect()
syntax on
filetype plugin indent on

"line numbering
set number " absolute number of current line
set relativenumber " relative number for every other line

"set document width limit
set tw=79 " width of document
set nowrap " dont wrap when loading a file
set fo-=t " dont wrap when typing
set colorcolumn=80 " color in the column after the width limit
highlight ColorColumn ctermbg=230
set lines=999 columns=999 " make a big window

"a lot of undoes
set history=700
set undolevels=700

"real programmers use spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

"this is to not trigger too much background events
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287

set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line

"nerdtree setup
autocmd vimenter * NERDTree

"set backspace=2   " Backspace deletes like most programs in insert mode
"set incsearch     " do incremental searching
"set autowrite     " Automatically :write before running commands
"set modelines=0   " Disable modelines as a security precaution
"set nomodeline
