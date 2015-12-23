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

" web
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-jade'
Plug 'wavded/vim-stylus'
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'

call plug#end()

" mappings
" ctrl+s to :w
map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>

