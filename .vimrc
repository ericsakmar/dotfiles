syntax enable
set encoding=utf8
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2
set relativenumber
set number
set colorcolumn=80
set listchars=tab:->,trail:-
set list
set incsearch
set hlsearch
set ignorecase
set smartcase

set background=dark
let g:one_allow_italics=1
colorscheme one

set macligatures
set guifont=Fira\ Code:h18

set laststatus=2
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

call plug#begin('~/.vim/plugged')

" tools
Plug 'christoomey/vim-sort-motion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'prettier/vim-prettier'
Plug 'samsonw/vim-task'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'

" web
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'posva/vim-vue'
Plug 'elmcast/elm-vim'

Plug 'rakr/vim-one'

call plug#end()

" file write shortcut ctrl+s to :w
" edit .bashrc or .zshrc to make this work
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

" splits
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set ruler
set hidden

" leader commands
let mapleader = ","
nmap <leader>vr :e $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>h :nohlsearch<cr>
imap <leader>l console.log();<esc>hi
