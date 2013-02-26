" ~/.vim/sessions/wecrypto_python.vim: Vim session script.
" Created by session.vim 1.5 on 22 February 2013 at 13:03:26.
" Open this file in Vim and run :source % to restore your session.

set guioptions=
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'light'
	set background=light
endif
if !exists('g:colors_name') || g:colors_name != 'wombat256mod' | colorscheme wombat256mod | endif
call setqflist([{'lnum': 24, 'col': 4, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': 'E', 'pattern': '', 'filename': 'WECrypto.py', 'text': 'W806 local variable "mode" is assigned to but never used [pyflakes]'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +12 Mode0.py
badd +1 RandomString.py
badd +1 WECrypto.py
args Mode0.py RandomString.py WECrypto.py
set lines=44 columns=119
edit Mode0.py
set splitbelow splitright
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
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 58 + 59) / 119)
exe '2resize ' . ((&lines * 21 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 60 + 59) / 119)
exe '3resize ' . ((&lines * 16 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 60 + 59) / 119)
exe '4resize ' . ((&lines * 3 + 22) / 44)
argglobal
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
10
silent! normal zo
let s:l = 23 - ((22 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 0
wincmd w
argglobal
edit RandomString.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 19 - ((18 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 019l
wincmd w
argglobal
edit WECrypto.py
setlocal fdm=expr
setlocal fde=pymode#folding#expr(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=1
setlocal fml=1
setlocal fdn=20
setlocal fen
12
silent! normal zo
16
silent! normal zo
22
silent! normal zo
27
silent! normal zo
28
silent! normal zo
36
silent! normal zo
37
silent! normal zo
let s:l = 24 - ((8 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 021l
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
wincmd w
2wincmd w
exe '1resize ' . ((&lines * 38 + 22) / 44)
exe 'vert 1resize ' . ((&columns * 58 + 59) / 119)
exe '2resize ' . ((&lines * 21 + 22) / 44)
exe 'vert 2resize ' . ((&columns * 60 + 59) / 119)
exe '3resize ' . ((&lines * 16 + 22) / 44)
exe 'vert 3resize ' . ((&columns * 60 + 59) / 119)
exe '4resize ' . ((&lines * 3 + 22) / 44)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
4wincmd w
let s:bufnr = bufnr("%")
cwindow
execute "bwipeout" s:bufnr
1resize 38|vert 1resize 58|2resize 21|vert 2resize 60|3resize 16|vert 3resize 60|4resize 3|vert 4resize 119|
tabnext 1
2wincmd w

" vim: ft=vim ro nowrap smc=128
