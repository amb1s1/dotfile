call plug#begin('~/.nvim/plugged')
"common
" Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Themes
Plug 'chriskempson/base16-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'
Plug 'jacoborus/tender.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'lifepillar/vim-solarized8'
Plug 'rakr/vim-one'
call plug#end()
let g:go_version_warning = 0
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized8_high

" Settings
set autoread
syntax enable
set t_Co=256

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete:h14

set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set number
set relativenumber

" set cursorline
" set cursorcolumn
syntax sync minlines=256

set wildmenu " enhanced command line completion
set hidden " current buffer can be put into background
set cmdheight=1 " command bar height

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>

set nocompatible " not compatible with vi

" make backspace behave in a sane manner
set backspace=indent,eol,start
"find a word

" set a map leader for more key combos
let g:mapleader = ','
nnoremap <Leader>s :%s/\<<C-r><C-w>\>/
nnoremap <C-f> :Ag -Q "

"Use deoplete.
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<tab>"

set noerrorbells                " No beeps
set novisualbell
set noswapfile                  " Don't use swapfile
set nobackup                   " Don't create annoying backup files
set splitright                  " Split vertical windows right to the current
"windows
set splitbelow                  " Split horizontal windows below to the
"current windows
set fileformats=unix,dos,mac    " Prefer Unix over Windows over OS 9 formats

""http://stackoverflow.com/questions/20186975/vim-mac-how-to-copy-to-clipboard-without-pbcopy
" works only for OS X
let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin' || os == 'Mac'
  set clipboard^=unnamed
  set clipboard^=unnamedplus"
endif


let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set showmatch " show matching braces

"Airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='bubblegum'
let w:airline_disabled=1

"Open NERDTree with Ctrl-n
map <C-n> :NERDTreeToggle<CR>
"set timeout
set timeoutlen=1000
"set ttimeout
set ttimeoutlen=50

"Emmet settings
let g:user__install_global = 0
autocmd FileType html,css EmmetInstall
au BufRead,BufNewFile *.tl setfiletype lisp

"react settings
let g:jsx_ext_required = 0

"Python settings
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
let g:pymode_virtualenv = 1
let g:pymode_rope=0
let g:pymode_folding = 0
let g:pymode_options_max_line_length = 120
"Flake8 Setting
let g:flake8_show_in_gutter=1

"Jinja setting
au BufNewFile,BufRead *.j2 set ft=jinja
"Folding
let g:SimpylFold_docstring_preview = 0
"ansible
let g:ansible_options = {'ignore_blank_lines': 0}
let g:ansible_unindent_after_newline = 1
let g:ansible_attribute_highlight = "ob"
let g:ansible_name_highlight = 'b'
let g:ansible_extra_keywords_highlight = 1


" Setting Presistent undo
if has('persistent_undo')
  if !isdirectory($HOME."/.vim_undo_dir")
     call mkdir($HOME."/.vim_undo_dir", "", 0700)
  endif
    set undofile
    set undodir=$HOME/.vim_undo_dir
endif


" setting dictionary for autocompletion
setlocal dictionary+=~/words

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" toggle absolute line numbers <CR> is to have the set to apply automatically
map <F2> :set nu! rnu!<CR>
map <F5> :setlocal spell! spelllang=en_us<CR>
