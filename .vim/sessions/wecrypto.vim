" ~/.vim/sessions/wecrypto.vim: Vim session script.
" Created by session.vim 1.5 on 22 February 2013 at 13:03:04.
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
call setqflist([])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /cygdrive/y/autoscripts/unix_linux/backup/java_wecrypto
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 Mode0.java
badd +0 RandomString.java
badd +0 WECrypto.java
badd +0 ProfileArguments.java
silent! argdel *
set lines=47 columns=143
edit WECrypto.java
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
2wincmd k
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 97 + 71) / 143)
exe '2resize ' . ((&lines * 14 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 45 + 71) / 143)
exe '3resize ' . ((&lines * 15 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 45 + 71) / 143)
exe '4resize ' . ((&lines * 14 + 23) / 47)
exe 'vert 4resize ' . ((&columns * 45 + 71) / 143)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 66 - ((40 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 040l
wincmd w
argglobal
edit ProfileArguments.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 146 - ((13 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
146
normal! 0
wincmd w
argglobal
edit Mode0.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 75 - ((14 * winheight(0) + 7) / 15)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
75
normal! 0
wincmd w
argglobal
edit RandomString.java
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 42 - ((12 * winheight(0) + 7) / 14)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 04l
wincmd w
exe 'vert 1resize ' . ((&columns * 97 + 71) / 143)
exe '2resize ' . ((&lines * 14 + 23) / 47)
exe 'vert 2resize ' . ((&columns * 45 + 71) / 143)
exe '3resize ' . ((&lines * 15 + 23) / 47)
exe 'vert 3resize ' . ((&columns * 45 + 71) / 143)
exe '4resize ' . ((&lines * 14 + 23) / 47)
exe 'vert 4resize ' . ((&columns * 45 + 71) / 143)
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
1wincmd w

" vim: ft=vim ro nowrap smc=128
