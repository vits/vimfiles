set nocompatible

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmaric/vundle'

for f in split(glob('~/.vim/config/*.bundle.vim'), "\n")
  exe 'source' f
endfor

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

filetype plugin indent on
syntax on

scriptencoding utf-8

" indentation
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" backspace over everything in insert mode
set backspace=indent,eol,start

" keep more commandline history
set history=1000

" show incomplete commands
set showcmd

" show current mode
set showmode

" disable sounds
set visualbell

" automatically enable mouse
set mouse=a

" hide mouse cursor shile typing
set mousehide

" reload files changed outside vim
set autoread

" allow hidden (unsaved) buffers
set hidden

" show matching brackets and parentheses
set showmatch

" show cursor position
set ruler

" wrap lines at word boundaries
set wrap linebreak

" set marker for wrapped lines
set showbreak=…

" symbols for tabstops and eols
set listchars=tab:▸\ ,trail:·
set list

" don't continue comments with o/O
" should be overriden (repeated) in after/ftplugin after some ftplugins
set formatoptions-=o

" make Y consistent with C and D
nnoremap Y y$

" shorten messages and info
set shortmess=atI

" start vertical scrolling 5 lines from margins
set scrolloff=5

" start horizontal scrolling 15 characters from margins
set sidescrolloff=15

" columns to scroll horizontally
set sidescroll=5

" disable backup copies
set nobackup
set nowritebackup
set noswapfile

" autocreate backup directory
silent !mkdir -vp ~/.vim/.backup/undo > /dev/null 2>&1

set backupdir=~/.vim/.backup,.
set directory=~/.vim/.backup,~/tmp,.
set undofile
set undodir=~/.vim/.backup/undo,~/tmp,.

set viminfo+=n~/.vim/tmp/viminfo

let g:netrw_home=$HOME.'/vim/tmp/'

" find next match while typing
set incsearch

" highlight search results
set hlsearch

" ignore case when searching ..
set ignorecase
" .. except for uppercase searches
set smartcase

" completion settings
set wildmenu
set wildmode=list:longest,list:full
set wildignore=*.o,*.obj,*~
set wildignore+=.git,.svn

" add gems tags
set tags+=gems.tags

" use mac clipboard
if has("mac")
  set clipboard=unnamed
endif

source ~/.vim/vimrc.mappings

for f in split(glob('~/.vim/config/*.config.vim'), "\n")
  exe 'source' f
endfor
