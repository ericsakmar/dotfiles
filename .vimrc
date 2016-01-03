" Solarized Dark
syntax enable
set background=dark
colorscheme solarized

" Indenting 
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set number

call plug#begin('~/.vim/plugged')

" tools
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'

" web
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'

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

