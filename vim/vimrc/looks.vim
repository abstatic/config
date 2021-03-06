" Stuff having to do with looks go here

if has("gui_running")
" GUI ================
  "colors sienna
  "colors zenburn
  "colors lucius
  " colors jellybeans
  set lines=70
  set columns=130
  " Remove scrollbars, toolbars, etc.
  set guioptions-=L
  set guioptions-=r
  set guioptions-=T

  if has("gui_gtk2")
    " set guifont=Cantarell:h10:cANSI
  elseif has("gui_win32")
    " set guifont=Cantarell:h10:cANSI
  else
    " set guifont=Cantarell:h12
  endif
else
" TERMINAL ===========
  " for default color scheme
  set background=light

  if $SSH_CONNECTION == ""  " Local terminal
    set t_Co=256
  else            " Remote terminal
    "set t_Co=16
    set t_Co=256
  endif

  if &term == "screen-bce"  " Running in screen
    set ttymouse=xterm2
  endif

  "colors zenburn
  "colors lucius
  colors solarized
endif

if exists('+colorcolumn')
  hi ColorColumn ctermbg=235 guibg=#2C2D27
  set colorcolumn=80
endif
