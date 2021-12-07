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
set guifont=Fira\ Code:h16

" ctrl p
set wildignore+=*/node_modules/*,*/dist/*,*/release/*

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

call plug#begin('~/.vim/plugged')

" tools
Plug 'christoomey/vim-sort-motion'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lilydjwg/colorizer'
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier'
Plug 'qpkorr/vim-bufkill'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'

" web
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" colors
Plug 'rakr/vim-one'
Plug 'morhetz/gruvbox'

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

nmap <leader>d <Plug>(coc-definition)
nmap <leader>y <Plug>(coc-type-definition)
nmap <leader>i <Plug>(coc-implementation)
nmap <leader>r <Plug>(coc-references)
nmap <leader>oi :call CocAction('runCommand', 'tsserver.organizeImports')<cr>

" folding
nmap <leader>ff zfap<cr>
nmap <leader>fu za<cr>

" consider moving this to a function/plugin
" and switch on file type
inoremap <Leader>l console.log()<esc>i
nmap <Leader>d yiwoconsole.log(<esc>pa)<esc>

" ts helpers
nnoremap <leader>ti <esc>:e <C-r>=escape(expand('%:p:h'), ' ') . '/index.ts'<cr><cr>

" nerd tree
nnoremap <Leader>t <esc>:NERDTreeToggle<cr>

" ack
nnoremap <Leader>a :Ack!<Space>

" buffers
nnoremap <silent><TAB> :bn<CR>
nnoremap <silent><S-TAB> :bp<CR>

" something else for folds
augroup AutoSaveFolds
  " previously...
  " autocmd!
  " autocmd BufWinLeave * mkview
  " autocmd BufWinEnter * silent loadview

  " a better version to try...
  autocmd!
  " view files are about 500 bytes
  " bufleave but not bufwinleave captures closing 2nd tab
  " nested is needed by bufwrite* (if triggered via other autocmd)
  autocmd BufWinLeave,BufLeave,BufWritePost ?* nested silent! mkview!
  autocmd BufWinEnter ?* silent! loadview
augroup END

" prettier
let g:prettier#quickfix_enabled = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" snips
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsSnippetDirectories=[ $HOME . '/.vim/UltiSnips' ]

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
