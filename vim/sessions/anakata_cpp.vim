" ~/.vim/sessions/anakata_cpp.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 12 September 2017 at 02:20:19.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegimrLtT
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'wombat256mod' | colorscheme wombat256mod | endif
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/dev/iiith/os/assignment_2/anakata/src/KatServ
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +9 KatServ.cpp
badd +14 ~/dev/iiith/os/assignment_2/anakata/src/KatClient/katalyn.cpp
badd +19 ~/dev/iiith/os/assignment_2/anakata/src/KatClient/KatClient.cpp
badd +1 ~/dev/iiith/os/assignment_2/anakata/includes/KatServ.h
badd +1 trackr.cpp
badd +30 ~/dev/iiith/os/assignment_2/anakata/Makefile
badd +0 ~/dev/iiith/os/assignment_2/anakata/src/KatServ
badd +28 ~/dev/iiith/os/assignment_2/anakata/src/logger.cpp
argglobal
silent! argdel *
$argadd ~/dev/iiith/os/assignment_2/anakata/src/KatServ
edit ~/dev/iiith/os/assignment_2/anakata/src/KatClient/katalyn.cpp
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 137) / 274)
exe '2resize ' . ((&lines * 27 + 34) / 68)
exe 'vert 2resize ' . ((&columns * 106 + 137) / 274)
exe '3resize ' . ((&lines * 7 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 135 + 137) / 274)
exe '4resize ' . ((&lines * 19 + 34) / 68)
exe 'vert 4resize ' . ((&columns * 135 + 137) / 274)
exe '5resize ' . ((&lines * 38 + 34) / 68)
exe 'vert 5resize ' . ((&columns * 120 + 137) / 274)
exe '6resize ' . ((&lines * 38 + 34) / 68)
exe 'vert 6resize ' . ((&columns * 121 + 137) / 274)
argglobal
enew
" file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 21 - ((17 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 0
wincmd w
argglobal
edit ~/dev/iiith/os/assignment_2/anakata/src/KatClient/KatClient.cpp
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 7 - ((2 * winheight(0) + 3) / 7)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 018|
wincmd w
argglobal
edit ~/dev/iiith/os/assignment_2/anakata/src/logger.cpp
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 52 - ((5 * winheight(0) + 9) / 19)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 041|
wincmd w
argglobal
edit KatServ.cpp
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 32 - ((25 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 0
wincmd w
argglobal
edit trackr.cpp
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=20
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 27 - ((26 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 0
wincmd w
5wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 137) / 274)
exe '2resize ' . ((&lines * 27 + 34) / 68)
exe 'vert 2resize ' . ((&columns * 106 + 137) / 274)
exe '3resize ' . ((&lines * 7 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 135 + 137) / 274)
exe '4resize ' . ((&lines * 19 + 34) / 68)
exe 'vert 4resize ' . ((&columns * 135 + 137) / 274)
exe '5resize ' . ((&lines * 38 + 34) / 68)
exe 'vert 5resize ' . ((&columns * 120 + 137) / 274)
exe '6resize ' . ((&lines * 38 + 34) / 68)
exe 'vert 6resize ' . ((&columns * 121 + 137) / 274)
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=24 winwidth=20 shortmess=atI
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/dev/iiith/os/assignment_2/anakata
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 66|vert 1resize 31|2resize 27|vert 2resize 106|3resize 7|vert 3resize 135|4resize 19|vert 4resize 135|5resize 38|vert 5resize 120|6resize 38|vert 6resize 121|
5wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
