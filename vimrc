set nocompatible              " be iMproved, required
filetype off                  " required
set shell=bash

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Interface & Color
" Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'
Plugin 'tomasr/molokai'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'mattr555/vim-instacode'

" Language and syntax
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'vim-pandoc/vim-pandoc-after'
"Plugin 'tex/vimpreviewpandoc'
"Plugin 'Kocha/vim-systemc'
Plugin 'lervag/vimtex'
Plugin 'reedes/vim-lexical'
Plugin 'beloglazov/vim-online-thesaurus'
Plugin 'davidhalter/jedi-vim'
Plugin 'dag/vim-fish'

" Productivity Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'sjl/gundo.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-eunuch'
Plugin 'bkad/CamelCaseMotion'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-easy-align'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'Raimondi/delimitMate'
" Plugin 'Shougo/neocomplete.vim'
" Plugin 'Shougo/neosnippet'
" Plugin 'Shougo/neosnippet-snippets'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'

" Extend Vim
" vimproc
Plugin 'Shougo/vimproc.vim'
Plugin 'vim-scripts/SyntaxRange'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" general things
set autoread
nnoremap j gj
nnoremap k gk
set backspace=indent,eol,start
let mapleader = ","
let maplocalleader = ","
"syntax stuff
syntax enable
syntax on
set ts=4
set sw=4
set et
set shortmess+=I
set encoding=utf-8
:iab <expr> dts strftime("%c")

" set up syntax highlighting for my e-mail
au BufRead,BufNewFile .followup,.article,.letter,/tmp/pico*,nn.*,snd.*,/tmp/mutt* :set ft=mail 
"imap <C-F> <ESC>:r!~/bin/google-contacts-lookup.sh <cword><CR><ESC>

" autosave after textchange eventst
autocmd InsertLeave,TextChanged * if expand('%') != '' | update | endif

" lightline
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'solarized',
    \ }
" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
"
" " unicode symbols
" let g:airline_left_sep = '»'
" let g:airline_right_sep = '«'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.branch = '⎇'
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.whitespace = 'Ξ'

"color and gui
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234
set number
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=7
let g:rehash256=1
hi clear SignColumn

" Lexical stuff
let g:lexical#spelllang = ["en", "de"]
set spelllang = "de"
set pastetoggle=<F6>

" indent guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1
" if has('gui_running')
" 	set t_Co=256
" 	set background=dark
" 	colorscheme base16-tomorrow
" 	nnoremap <M-1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
" 	nnoremap <M-2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
" 	nnoremap <M-3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
" 	if has("gui_gtk2")
" 		set guifont=Ubuntu\ Mono\ 11
" 	endif
if has("gui_macvim")
    " set guifont=Inconsolata-g:12
    set guifont=Monaco:h12
    set t_Co=256
    set guioptions=aAce
    set backupcopy=yes
    set fuoptions=maxvert,maxhorz
    set background=dark
    " set background=light
    " let base16colorspace=256
    " colorscheme base16-tomorrow
    let g:solarized_hitrail=1
    let g:solarized_termtrans = 1
    " let g:solarized_termcolors=256
    colorscheme solarized
    " set noballoneval
    autocmd VimResized * wincmd =
    set noshowmode
else
    set t_Co=256
    set background=dark
    " set background=light
    " colorscheme Tomorrow-Night
    " colorscheme Tomorrow
    " let base16colorspace=256
    " colorscheme base16-tomorrow
    let g:solarized_termtrans = 1
    let g:solarized_termcolors=256
    colorscheme solarized
endif

" NERDTree
map <D-N> :NERDTreeToggle<CR>
let NERDTreeDirArrows=1
let NERDTreeShowBookmarks=1
let NERDTreeQuitOnOpen=1 
let NERDTreeCascadeOpenSingleChildDir=1
map <D-E> :NERDTreeToggle<CR>:OpenBookmark .vimrc<CR>

" CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

" Gundo
nnoremap <D-U> :GundoToggle<CR>

" TComment
map <D-'> :TComment<CR>
imap <D-'> <Esc>:TComment<CR>i

nnoremap <silent> <D-j> }
nnoremap <silent> <D-k> {

" Pandoc
autocmd BufNewFile,BufRead *.md set filetype=pandoc
autocmd FileType pandoc nmap ,pp :Pandoc pdf<CR>
" autocmd FileType pandoc nmap ,cp :w<CR>:!pandoc -s -o %:t:r.pdf --variable mainfont="TeX Gyre Pagella" --latex-engine=xelatex % &<CR>
autocmd FileType pandoc nmap ,cp :!pandoc -o %:t:r.pdf --variable mainfont="TeX Gyre Pagella" --latex-engine=xelatex --filter=markdown2dot % &<CR>:redraw!<CR>
" autocmd FileType pandoc nmap ,co :w<CR>:!llpp %:t:r.pdf &<CR>
" autocmd FileType pandoc nmap ,co :w<CR>:!mupdf %:t:r.pdf &<CR>
autocmd FileType pandoc nmap ,co :w<CR>:!open %:t:r.pdf &<CR>:redraw!<CR>
autocmd FileType pandoc let maplocalleader = ","

let g:pandoc#after#modules#enabled = ["ultisnips"]
let g:pandoc_bibfiles = ['~/Documents/Uni/VL/Bibliography-complete.bib']
let g:pandoc#command#autoexec_on_writes = 1
let g:pandoc#command#autoexec_command = "Pandoc #my_pdf"
let g:pandoc#command#latex_engine = "xelatex"
let g:pandoc#folding#fold_fenced_codeblocks = 1
let g:pandoc#spell#default_langs = ["de","en"]

" vimtex
augroup latexSurround
 autocmd!
 autocmd FileType tex call s:latexSurround()
augroup END

function! s:latexSurround()
 let b:surround_{char2nr("e")}
   \ = "\\begin{\1environment: \1}\n\t\r\n\\end{\1\1}"
 let b:surround_{char2nr("c")} = "\\\1command: \1{\r}"
endfunction

let g:vimtex_latexmk_options = "-xelatex"
let g:tex_flavor = 'latex'


let localleader = ","


" Easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" CamelCaseMotion
" replace traditional mappings of w, b, and e
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

" Easy Align plugin
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" General mappings
" Allow mispelings when :wq-ing
cabbrev ew :wq
cabbrev qw :wq 



"Ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Minibufexplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Thesaurus
" download from https://www.gutenberg.org/files/3202/files/mthesaur.txt
let g:lexical#thesaurus = ['~/.vim/thesaurus/mthesaur.txt',]
