set number

" Pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on


call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'morhetz/gruvbox'

Plug 'scrooloose/nerdtree'
Plug 'mhinz/vim-startify'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-fugitive'

" LaTeX plugins
Plug 'lervag/vimtex'       
Plug 'tpope/vim-surround'     
Plug 'vim-scripts/IndentConsistencyCop'  
call plug#end()

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" Nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Gruvbox
colorscheme gruvbox

" Airline
let g:airline_theme='luna'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

let g:devicons_enable = 1

" LaTeX plugin configurations
let g:vimtex_view_method = 'zathura'  " Use Zathura as the PDF viewer
let g:vimtex_quickfix_mode = 0       " Disable quickfix mode for errors

" Auto-close pairs for LaTeX files
autocmd FileType tex inoremap <buffer> " " ""<left>
autocmd FileType tex inoremap <buffer> ' ' ''<left>
autocmd FileType tex inoremap <buffer> ( ()<left>
autocmd FileType tex inoremap <buffer> [ []<left>
autocmd FileType tex inoremap <buffer> { {}<left>
