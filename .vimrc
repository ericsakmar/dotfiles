syntax enable
let g:onedark_termcolors=16
colorscheme onedark
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1

" Indenting 
set autoindent
set expandtab
set shiftwidth=2
set softtabstop=2

set relativenumber
set number

call plug#begin('~/.vim/plugged')

" tools
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'samsonw/vim-task'
Plug 'vim-airline/vim-airline'
Plug 'prettier/vim-prettier'

" web
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'posva/vim-vue'
Plug 'elmcast/elm-vim'

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
map <Leader>l oconsole.log 
nmap <leader>vr :e $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
