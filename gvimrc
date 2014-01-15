if filereadable(expand('~/.gvimrc.local'))
  source ~/.gvimrc.local
endif

" remove scrollbars
set guioptions-=L
set guioptions-=R
set guioptions-=l
set guioptions-=r
set guioptions-=b

" disable toolbar
set guioptions-=T

" disable menu
set guioptions-=m

" disable beeping and flashing
set visualbell
set t_vb=

set linespace=3

" replace some macvim menu shortcuts
if has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
  macmenu &File.Print key=<D-S-p>
endif

if has("gui_macvim")
  set guifont=Liberation\ Mono\ for\ Powerline:h14
else
  set guifont=Droid\ Sans\ Mono\ for\ Powerline\ 11
endif

if filereadable(expand('~/.gvimrc.after'))
  source ~/.gvimrc.after
endif
