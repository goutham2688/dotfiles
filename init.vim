"set line numbers in nvim
:set number
"set relative number
set relativenumber

" always copy to the system clipboard
set clipboard+=unnamedplus

" set Ctrl +s to save
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" indentation options
" spaces instead of tabs
" tabstop:          Width of tab character
" softtabstop:      Fine tunes the amount of white space to be added
" shiftwidth        Determines the amount of whitespace to add in normal mode
" expandtab:        When this option is enabled, vi will use spaces instead of tabs
set tabstop     =2
set softtabstop =2
set shiftwidth  =2
set expandtab

" set theme for statusline for nvim
let g:airline_theme='bubblegum'

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
" Plug 'tpope/vim-sensible'

" for bulk commenting looses tab while commenting
" Plug 'chrisbra/vim-commentary'

" Code intellisense plug with multiple plugins to get vscode ext too
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" plug for vim_status_bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
