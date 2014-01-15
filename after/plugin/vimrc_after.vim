" This is loaded after plugins so plugin mappings can be overwritten

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

for f in split(glob('~/.vim/config/*.after.vim'), "\n")
  exe 'source' f
endfor
