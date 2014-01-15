if has("gui_running")
  if has("gui_macvim")
    nmap <D-X> <Plug>Kwbd
  else
    nmap <M-X> <Plug>Kwbd
  endif
else
  nmap <Leader>x <Plug>Kwbd
endif
