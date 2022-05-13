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
set termguicolors                                                               
set scrolloff=8                                                                 
set noshowmode                                                                  
set completeopt=menuone,noinsert,noselect                                       
set signcolumn=yes                                                              
set cmdheight=2                                                                 
set updatetime=50                                                               
set colorcolumn=80                                                              

" Plugins                                                                       
                                                                                 
call plug#begin('~/.vim/plugged')                                               
                                                                                 
Plug 'nvim-telescope/telescope.nvim'                                            
Plug 'gruvbox-community/gruvbox'                                                
Plug 'nvim-lua/plenary.nvim'                                                                                                                                     

call plug#end()                                                                                                                                                  

highlight Normal guibg=none                                                     
set bg=dark                                                                     
colorscheme gruvbox                                                                                                                                              

let mapleader=" "                                                               
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({search=vim.fn.input("Grep for > ")})<CR>
