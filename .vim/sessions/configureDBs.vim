" ~/.vim/sessions/configureDBs.vim: Vim session script.
" Created by session.vim 1.5 on 30 January 2013 at 10:11:03.
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
call setqflist([{'lnum': 2, 'col': 1, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': 'W', 'pattern': '', 'filename': 'New_STAFSTAX_scripts/test.py', 'text': 'W391 blank line at end of file [pep8]'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd /cygdrive/y/autoscripts/_nix
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +425 New_STAFSTAX_scripts/fresh_install.xml
badd +1 New_STAFSTAX_scripts/staxModules/configureDBs.xml
badd +21 peconfig_v5_97_10.xml
badd +133 responsefiles/peconfig/peconfig_97_10_v5.xml
badd +73 responsefiles/configtemplate97_v5.txt
badd +57 modules/peconfig.xml
badd +31 New_STAFSTAX_scripts/staxModules/peconfig9710.xml
badd +1 test.py
badd +1 New_STAFSTAX_scripts/staxModules/install.xml
badd +31 New_STAFSTAX_scripts/staxModules/installOPM.xml
badd +1 New_STAFSTAX_scripts/staxModules/gunzip.xml
silent! argdel *
set lines=74 columns=180
edit New_STAFSTAX_scripts/staxModules/configureDBs.xml
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
exe 'vert 1resize ' . ((&columns * 99 + 90) / 180)
exe '2resize ' . ((&lines * 23 + 37) / 74)
exe 'vert 2resize ' . ((&columns * 80 + 90) / 180)
exe '3resize ' . ((&lines * 23 + 37) / 74)
exe 'vert 3resize ' . ((&columns * 80 + 90) / 180)
exe '4resize ' . ((&lines * 23 + 37) / 74)
exe 'vert 4resize ' . ((&columns * 80 + 90) / 180)
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
let s:l = 115 - ((59 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
115
normal! 074l
wincmd w
argglobal
edit New_STAFSTAX_scripts/staxModules/install.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 42 - ((13 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 029l
wincmd w
argglobal
edit New_STAFSTAX_scripts/fresh_install.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 425 - ((12 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
425
normal! 046l
wincmd w
argglobal
edit modules/peconfig.xml
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 57 - ((20 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 99 + 90) / 180)
exe '2resize ' . ((&lines * 23 + 37) / 74)
exe 'vert 2resize ' . ((&columns * 80 + 90) / 180)
exe '3resize ' . ((&lines * 23 + 37) / 74)
exe 'vert 3resize ' . ((&columns * 80 + 90) / 180)
exe '4resize ' . ((&lines * 23 + 37) / 74)
exe 'vert 4resize ' . ((&columns * 80 + 90) / 180)
tabedit New_STAFSTAX_scripts/staxModules/gunzip.xml
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
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
let s:l = 52 - ((51 * winheight(0) + 35) / 71)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 026l
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
