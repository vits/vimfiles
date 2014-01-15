if has("gui_running")
  if has("gui_macvim")
    nmap <D-/> :TComment<CR>
    vmap <D-/> :TComment<CR>
    imap <D-/> <Esc>:TComment<CR>i
  else
    nmap <M-/> :TComment<CR>
    vmap <M-/> :TComment<CR>
    imap <M-/> <Esc>:TComment<CR>i
  endif
endif
