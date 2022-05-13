set exrc
set guicursor=
set nu
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
set cmdheight=2
set updatetime=50
set colorcolumn=80
set encoding=utf-8
syntax enable
set backspace=indent,eol,start
set autoindent

" Plugins

call plug#begin('~/.vim/plugged')
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'nvim-lua/plenary.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

highlight Normal guibg=none
set bg=dark
colorscheme gruvbox
let g:airline_theme='gruvbox'

let mapleader=" "
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search=vim.fn.input("Grep for > ")})<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup BUJOR
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

if (has("termguicolors"))
    set termguicolors
endif

lua require 'colorizer'.setup()

" NERDCommenter
" Nvim reads underline as backslash, so the command it's actually
" CTRL + \ like in any other IDE
nmap <C-_> <Plug>NERDCommenterToggle
"Comment multiple lines in visual mode
nmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1
let g:NERDTreeMinimalUI=1
nmap <F2> :NerdTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

" Ultisnips
let g:UltiSnipsSnippetDirectories=['~/.config/nvim/ultisnips']
let g:UltiSnipsExapndTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

