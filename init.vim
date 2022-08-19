"set line numbers in nvim
" :set number

"set relative number in nvim
" set relativenumber

" enable nnvim to load plugins based on file type and for sntax hightlighting
:filetype plugin on

" set concel level so italics/bold/code blocks are shown not as is in markdown
set conceallevel =2

" set mouse interaction only in normal and visual modes
:set mouse=nv

" always copy to the system clipboard
" https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl
set clipboard+=unnamedplus

" set Ctrl +s to save
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR><Esc>

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
" set airline to display open buffers in status bar
let g:airline#extensions#tabline#enabled = 1

" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Code intellisense plug with multiple plugins to get vscode ext too
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" plug for vim_status_bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" faster syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" fzf integration with nvim (didn't find this useful than coc )
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
