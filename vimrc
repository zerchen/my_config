filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set nocompatible
set encoding=utf-8
syntax on 
let mapleader=" "
set relativenumber
set number
set showcmd
set scrolloff=5
set mouse=a
set nowrap
set wildmenu
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=1000
autocmd FileType c,cpp setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=1000
noremap J 5j
noremap K 5k
noremap W 5w
noremap B 5b

map s <nop>
map S :w<CR>
map Q :wq<CR>
map E :q!<CR>
map sr :set splitright<CR>:vsplit<CR>
map sl :set nosplitright<CR>:vsplit<CR>
map su :set nosplitbelow<CR>:split<CR>
map sd :set splitbelow<CR>:split<CR>
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical res-5<CR>
map <right> :vertical res+5<CR>
map ts :tabe<CR>
map tn :+tabnext<CR>
map tp :-tabnext<CR>
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K
map cc <LEADER>cc
map cu <LEADER>cu
map R :source ~/.vim/vimrc<CR>
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'mbbill/undotree/'
Plug 'Raimondi/delimitMate'
Plug 'preservim/nerdcommenter'
Plug 'fatih/vim-go/'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

colorscheme gruvbox
set background=dark

map tt :NERDTreeToggle<CR>
map L :UndotreeToggle<CR>
