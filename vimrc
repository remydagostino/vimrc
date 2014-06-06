"missc Settings
colorscheme desert
let mapleader = ","
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Easy Motion (file navigation)
Plugin 'Lokaltog/vim-easymotion'

" Nerd Tree (project structure)
Plugin 'scrooloose/nerdtree'

" all plugins are loaded
call vundle#end()
filetype plugin indent on

"{{ PLUGIN STUFF
let g:EasyMotion_leader_key = '<Leader>'
map <Leader> <Plug>(easymotion-prefix)
"}}

" Clipboard
set clipboard=unnamed
set backspace=2

" Copy/Paste
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
nmap \p "*p

" Shortcut for NERDTree
nmap <leader>ne :NERDTree<cr>

" Necesary  for lots of cool vim things
set nocompatible

" This shows what you are typing as a command.  I love this!
set showcmd

" Needed for Syntax Highlighting and stuff
filetype on
filetype plugin on
syntax enable
set grepprg=grep\ -nH\ $*

" Who doesn't like autoindent?
set autoindent

" Spaces are better than a tab character
set expandtab
set smarttab

" Who wants an 8 character tab?  Not me!
set shiftwidth=2
set softtabstop=2
set tabstop=2

" Use english for spellchecking, but don't spellcheck by default
if version >= 700
   set spl=en spell
   set nospell
endif

" Cool tab completion stuff
set wildmenu
set wildmode=list:longest,full

" Enable mouse support in console
set mouse=a

" Got backspace?
set backspace=2

" Line Numbers PWN!
set number

" Ignoring case is a fun trick
set ignorecase

" And so is Artificial Intellegence!
set smartcase

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

" Incremental searching is sexy
set incsearch

" Highlight things that we find with the search
set hlsearch

" Clear any search highlighting with spacespace
nmap <SPACE> <SPACE>:noh<CR>

" Since I use linux, I want this
let g:clipbrdDefaultReg = '+'

" When I close a tab, remove the buffer
set nohidden

" Set off the other paren
highlight MatchParen ctermbg=4
" }}}

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

"{{{ Mappings

" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Show whitspace
set list
set listchars=tab:>-,trail:~,extends:>,precedes:<
