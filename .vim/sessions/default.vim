" ~/.vim/sessions/default.vim: Vim session script.
" Created by session.vim 1.5 on 25 February 2013 at 16:27:24.
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
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +66 unix_linux/fresh_install.xml
badd +298 fresh_install_manual.xml
badd +154 _nix/New_STAFSTAX_scripts/fresh_install.xml
badd +49 unix_linux/staxModules/mkdir.xml
badd +37 unix_linux/staxModules/ftp_dir.xml
badd +98 unix_linux/staxModules/downloadLicense.xml
badd +68 unix_linux/staxModules/downloadOPM.xml
badd +102 unix_linux/staxModules/installOPM.xml
badd +0 unix_linux/staxModules/configureDBs.xml
badd +0 unix_linux/staxModules/db2start.xml
silent! argdel *
set lines=60 columns=180
edit unix_linux/staxModules/configureDBs.xml
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 112 + 90) / 180)
exe '2resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 67 + 90) / 180)
exe '3resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 67 + 90) / 180)
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
let s:l = 71 - ((0 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
71
normal! 013l
wincmd w
argglobal
edit unix_linux/staxModules/db2start.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 56 - ((12 * winheight(0) + 14) / 29)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 020l
wincmd w
argglobal
edit fresh_install_manual.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 342 - ((27 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
342
let s:c = 25 - ((20 * winwidth(0) + 33) / 67)
if s:c > 0
  exe 'normal! 0' . s:c . 'lzs' . (25 - s:c) . 'l'
else
  normal! 025l
endif
wincmd w
exe 'vert 1resize ' . ((&columns * 112 + 90) / 180)
exe '2resize ' . ((&lines * 29 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 67 + 90) / 180)
exe '3resize ' . ((&lines * 28 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 67 + 90) / 180)
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
