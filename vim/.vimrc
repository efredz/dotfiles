let mapleader=','
let maplocalleader='\'

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

"StatusLine
"set laststatus=2
"set statusline +=%5*%{&ff}%*            "file format
"set statusline +=%3*%y%*                "file type
"set statusline +=%4*\ %<%F%*            "full path
"set statusline +=%2*%m%*                "modified flag
"set statusline +=%1*%=%5l%*             "current line
"set statusline +=%2*/%L%*               "total lines
"set statusline +=%1*%4v\ %*             "virtual column number
"set statusline +=%P


"colores barra
hi StatusLine ctermbg=3 ctermfg=4

"delimitMate
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1

"Resaltar línea y columna
hi CursorLine term=bold cterm=bold guibg=Grey40 ctermbg=235
hi CursorColumn ctermbg=000
nnoremap <Leader>ze :set cursorline! cursorcolumn! <CR>

"Cursor
highlight Cursor guifg=white guibg=black

"Arreglo incompatibilidad delimitMate y supertab
"let g:SuperTabDefaultCompletionType = "context"

"Omnicomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

no - $
no _ ^
no N <C-w><C-w>
no H 8<Down>
no T 8<Up>
no D <C-w><C-r>
"map! ii <Esc>

set t_Co=256

"Syntax Files
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,htmldjango,jinjahtml,eruby,mako source ~/.vim/plugin/closetag.vim
"Detect sql as filetype

augroup filetypedetect
	  au! BufRead,Bufnewfile *.sql setfiletype sql
augroup END

"Líneas de distancia entre el cursor y el borde
set so=8

"Atajos de teclado
map <F2> :!clear && python % 
nmap <F4> :NERDTreeToggle<CR>
map <F3> :!latexmk --pdf %
map <F6> :!firefox % &
map <F7> :!markdown % > temp.html && firefox temp.html && rm temp.html<CR>
nmap <F8> :TagbarToggle<CR> 
map <F10> :wq
nmap <F12> :syntax sync fromstart
cmap w!! w !sudo tee > /dev/null %

"Atajos con Leader
nnoremap <Leader>ct :!gcc % -L/usr/lib/mysql -lmysqlclient -o %:r

nnoremap <Leader>te :!latexmk --pdf trabajoTitulo.tex

nnoremap <Leader>y "+y
vnoremap <Leader>y "+y

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

Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'jngeist/vim-multimarkdown'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'marijnh/tern_for_vim'
Plug 'tpope/vim-surround'
Plug 'christoomey/vim-tmux-navigator'
Plug 'majutsushi/tagbar'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'bling/vim-airline'
Plug 'klen/python-mode'
Plug 'Valloric/MatchTagAlways'
Plug 'lervag/vimtex'
Plug 'dracula/vim'
Plug 'chriskempson/base16-vim'
Plug 'leafgarland/typescript-vim'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'

call plug#end()


"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Python-Mode
"
let g:pymode = 0
let g:pymode_lint_cwindow = 0
let g:pymode_warnings = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options_max_line_length = 79
let g:pymode_indent = 1

"Disable swap
set shortmess+=A

"Tex y Zathura
let g:tex_flavor = "latex"
let g:vimtex_view_method = 'mupdf'

"Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme gruvbox
set background=dark

" Change directory to the current buffer when opening files.
set autochdir

