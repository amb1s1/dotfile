call plug#begin('~/.nvim/plugged')
"common
" Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Themes
Plug 'chriskempson/base16-vim'
call plug#end()

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

set nocompatible " not compatible with vi

" To make the line number column transparent (the same color as the main background)
"
highlight clear LineNr
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

"set timeout
set ttimeoutlen=10

"Folding
let g:SimpylFold_docstring_preview = 0

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
