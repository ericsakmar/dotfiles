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

set termguicolors
set background=dark
let g:one_allow_italics=1
colorscheme one

" if has('macligatures')
  set macligatures
  set guifont=Fira\ Code:h18
" endif

" ctrl p
set wildignore+=*/node_modules/*

set laststatus=2
let g:airline_theme='one'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

call plug#begin('~/.vim/plugged')

" tools
Plug 'RRethy/vim-illuminate'
Plug 'christoomey/vim-sort-motion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'inside/vim-search-pulse'
Plug 'lilydjwg/colorizer'
Plug 'luochen1990/rainbow'
Plug 'prettier/vim-prettier'
Plug 'samsonw/vim-task'
Plug 'samsonw/vim-task'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'

" web
Plug 'digitaltoad/vim-jade'
Plug 'elmcast/elm-vim'
Plug 'elzr/vim-json'
Plug 'kchmck/vim-coffee-script'
Plug 'posva/vim-vue'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'wavded/vim-stylus'

" colors
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

map 0 ^

set ruler
set hidden

" leader commands
let mapleader = ","
nmap <leader>vr :e $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
nmap <leader>h :nohlsearch<cr>
map <leader>light <esc>:set background=light<cr>
map <leader>dark <esc>:set background=dark<cr>
nnoremap <leader>ls :ls<cr>:b<space>

" folding
nmap <leader>ff zfap<cr>
nmap <leader>fu za<cr>

" consider moving this to a function/plugin
" and switch on file type
inoremap <Leader>l console.log()<esc>i
nmap <Leader>d yiwoconsole.log(<esc>pa)<esc>

" react helpers
nnoremap <Leader>rr /render()<cr>zz
nnoremap <leader>ra <esc>:e <C-r>=escape(expand('%:p:h:h'), ' ') . '/actions/' . expand('%:t')<cr><cr>
nnoremap <leader>re <esc>:e <C-r>=escape(expand('%:p:h:h'), ' ') . '/epics/' . expand('%:t')<cr><cr>

" ts helpers
nnoremap <leader>ti <esc>:e <C-r>=escape(expand('%:p:h'), ' ') . '/index.ts'<cr><cr>

" getting around
nnoremap <Leader>rd :cd Dev/rubicon/editor/src<cr>

" nerd tree
nnoremap <Leader>nt <esc>:NERDTree<cr>

" something else for folds
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent loadview
augroup END

" prettier
let g:prettier#quickfix_enabled = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
