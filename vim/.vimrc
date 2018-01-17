let mapleader=','
let maplocalleader='\'

"indentacion
set shiftwidth=4
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

"CTRL-P
set runtimepath^=~/.vim/bundle/ctrlp.vim

"StatusLine
set laststatus=2
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline+=%P

colorscheme dracula
set background=dark

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
map <F3> :!latexmk --pdf %
nmap <F4> : NERDTreeToggle<CR>
map <F6> :!firefox % &
map <F7> :!markdown % > temp.html && firefox temp.html && rm temp.html<CR>
nmap <F8> :TagbarToggle<CR> 
map <F10> :wq
nmap <F12> :syntax sync fromstart
cmap w!! w !sudo tee > /dev/null %

"Atajos con Leader
nnoremap <Leader>ct :!gcc % -L/usr/lib/mysql -lmysqlclient -o %:r

nnoremap <Leader>te :!latexmk --pdf trabajoTitulo.tex

"Ocultar toolbar
set guioptions-=T
set guioptions-=m
set guioptions-=r

"Sudo save
nnoremap <Leader>es :w !sudo tee % > /dev/null

"Tags
set tags+=~/.vim/tags/gtk2 
set tags+=~/.vim/tags/gtk3


"Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jngeist/vim-multimarkdown'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/MatchTagAlways'
Plugin 'majutsushi/tagbar'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'bling/vim-airline'
Plugin 'klen/python-mode'
Plugin 'Valloric/MatchTagAlways'
Plugin 'lervag/vimtex'
Plugin 'morhetz/gruvbox'
Plugin 'dracula/vim'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'leafgarland/typescript-vim'

filetype plugin indent on " required!"

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
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
