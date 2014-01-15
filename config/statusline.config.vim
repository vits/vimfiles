" status line
set statusline=[%n]                         " buffer number
set statusline+=\ %f                        " tail of the filename
set statusline+=\ %m%r%y                    " modified, readonly, filetype flags
set statusline+=\ %{fugitive#statusline()}  " git
set statusline+=%=                          " left/right separator
set statusline+=[%b][0x%B]                  " value of the byte under the cursor
set statusline+=\ %c,%l/%L                  " cursor position/total lines
set statusline+=\ %P                        " percent through file
set laststatus=2


