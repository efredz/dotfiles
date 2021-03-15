let mapleader=','
let maplocalleader='\'
set laststatus=2

"lightline config
if !has('gui_running')
  set t_Co=256
endif

set noshowmode

"indentacion

set tabstop=4
set softtabstop=4
set expandtab

set number
set autoindent
set mouse=nv

"Búsqueda incremental
set incsearch

"Resaltado de matches en búsqueda
set hlsearch

"Sintaxis e indentación
syntax on
filetype plugin indent on

"Grep
set grepprg=grep\ -nH\ $*

let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set wildmenu
set wildmode=longest:full,full
set autochdir

"CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim


"Resaltar línea y columna
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=235
hi CursorColumn ctermbg=000
nnoremap <Leader>ze :set cursorline! cursorcolumn! <CR>

"Cursor
highlight Cursor guifg=white guibg=black

no - $
no _ ^
no N <C-w><C-w>
no H 8<Down>
no T 8<Up>
no D <C-w><C-r>

set t_Co=256

"Detect sql as filetype

augroup filetypedetect
	  au! BufRead,Bufnewfile *.sql setfiletype sql
augroup END

"Líneas de distancia entre el cursor y el borde
set so=8

"Atajos de teclado
map <F2> :!python % 
nmap <F4> :NERDTreeToggle<CR>
cmap w!! w !sudo tee > /dev/null %

" " Copy to clipboard
vnoremap  <Leader>y  "+y
nnoremap  <Leader>Y  "+yg_
nnoremap  <Leader>y  "+y
nnoremap  <Leader>yy  "+yy

" " Paste from clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P

"Ocultar toolbar
set guioptions-=T
set guioptions-=m
set guioptions-=r

"Sudo save
nnoremap <Leader>es :w !sudo tee % > /dev/null

"Fuzzy Finder fzf
nnoremap <Leader>f :Files<Cr>

"Tags
set tags+=~/.vim/tags/gtk2 
set tags+=~/.vim/tags/gtk3


"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'chriskempson/base16-vim'
Plug 'leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'joshdick/onedark.vim'
Plug 'https://github.com/elzr/vim-json'

call plug#end()

"Disable swap
set shortmess+=A

"Tex y Zathura
let g:tex_flavor = "latex"
let g:vimtex_view_method = 'mupdf'

colorscheme onedark
set background=dark

autocmd Filetype markdown setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=2 softtabstop=2 shiftwidth=2
autocmd Filetype json setlocal tabstop=2 softtabstop=2 shiftwidth=2
