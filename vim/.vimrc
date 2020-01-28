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

set wildmode=longest:full
set wildmenu
set autochdir

"Fonts
set guifont=Iosevka\ Medium

"CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim


"Resaltar línea y columna
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=235
hi CursorColumn ctermbg=000
nnoremap <Leader>ze :set cursorline! cursorcolumn! <CR>

"Cursor
highlight Cursor guifg=white guibg=black

"Arreglo incompatibilidad delimitMate y supertab
"let g:SuperTabDefaultCompletionType = "context"

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
map <F3> :!latexmk --pdf %
map <F6> :!firefox % &
map <F7> :!markdown % > temp.html && firefox temp.html && rm temp.html<CR>
nmap <F8> :TagbarToggle<CR> 
map <F10> :wq
nmap <F12> :syntax sync fromstart
cmap w!! w !sudo tee > /dev/null %
map ; :Files<CR>

"Atajos con Leader
nnoremap <Leader>ct :!gcc % -L/usr/lib/mysql -lmysqlclient -o %:r
nnoremap <Leader>te :!latexmk --pdf trabajoTitulo.tex
vnoremap <Leader>y "*y
vnoremap <Leader>p "*p
vnoremap <Leader>Y "+y
vnoremap <Leader>P "+p

"Ocultar toolbar
set guioptions-=T
set guioptions-=m
set guioptions-=r

"Sudo save
nnoremap <Leader>es :w !sudo tee % > /dev/null

"Tags
set tags+=~/.vim/tags/gtk2 
set tags+=~/.vim/tags/gtk3


"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'christoomey/vim-tmux-navigator'
Plug 'itchyny/lightline.vim'
Plug 'Valloric/MatchTagAlways'
Plug 'lervag/vimtex'
Plug 'chriskempson/base16-vim'
Plug 'leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

call plug#end()

"Disable swap
set shortmess+=A

"Tex y Zathura
let g:tex_flavor = "latex"
let g:vimtex_view_method = 'mupdf'

colorscheme gruvbox
set background=dark

" Change directory to the current buffer when opening files.
set autochdir

