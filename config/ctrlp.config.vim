if has("gui_running")
  if has("gui_macvim")
    nmap <D-p> :CtrlP<CR>
  else
    nmap <M-p> :CtrlP<CR>
  endif
endif
