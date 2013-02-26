filetype off
call pathogen#infect()
call pathogen#helptags()

" Standard settings
set nocompatible
"set guifont=ProggyCleanTTSZBP:h12:cANSI
set guifont=Consolas\ for\ Powerline:h12
set helplang=de
set keymodel=startsel,stopsel
set ruler
set selection=exclusive
set selectmode=mouse,key
set whichwrap=b,s,<,>,[,]

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %


" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
set clipboard=unnamed


" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Moving around with the arrow keys in insert mode
imap OA <ESC>ki
imap OD <ESC>hi
imap OB <ESC>ji
imap OC <ESC>li

" Rebind <Leader> key
" I like to have it here becuase it is easier to reach than the default and
" it is next to ``m`` and ``n`` which I use for navigating between tabs.
let mapleader = ","

" Type dts in insert mode to expand to a datestamp
:iab <expr> dts strftime("%c")

" Bind nohl
" Removes highlight of your last search
nmap <Space> :nohl<CR>
"vnoremap <Space> :nohl<CR>
"inoremap <Space> :nohl<CR>


" Quicksave command
"" noremap <C-Z> :update<CR>
"" vnoremap <C-Z> <C-C>:update<CR>
"" inoremap <C-Z> <C-O>:update<CR>


" Quick quit command
noremap <Leader>e :quit<CR>  " Quit current window
noremap <Leader>E :qa!<CR>   " Quit all windows


" bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
"" map <c-j> <c-w>j
"" map <c-k> <c-w>k
"" map <c-l> <c-w>l
"" map <c-h> <c-w>h


" easier moving between tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


" map sort function to a key
vnoremap <Leader>s :sort<CR>


" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation


" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" Color scheme
" mkdir -p ~/.vim/colors && cd ~/.vim/colors
" wget -O wombat256mod.vim http://www.vim.org/scripts/download_script.php?src_id=13400
set t_Co=256
color wombat256mod


" Enable syntax highlighting
" You need to reload this file for the change to apply
"" filetype off
filetype plugin indent on
syntax on


" Showing line numbers and length
set number  " show line numbers
"set tw=79   " width of document (used by gd)
set tw=0   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233


" easier formatting of paragraphs
vmap Q gq
nmap Q gqap


" Useful settings
set history=700
set undolevels=700


" Real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab


" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase


" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" NERDTree configuration
let NERDTreeDirArrows=0
let NERDChristmasTree=1
let NERDTreeQuitOnOpen=1
let NERDTreeShowBookmarks=1
map <F3> :NERDTreeToggle<CR>


" gundo
nnoremap <F5> :GundoToggle<CR>

" Supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

" Ultisnips
"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" buftabs next and previous buffer
noremap <F11> :bprev<CR>
noremap <F12> :bnext<CR>

" Python IDE Setup
" ==================

" Settings for vim-powerline
" cd ~/.vim/bundle
" git clone git://github.com/Lokaltog/vim-powerline.git
set laststatus=2
set encoding=utf-8
let g:Powerline_symbols = 'compatible'

" Settings for ctrlp
" cd ~/.vim/bundle
" git clone https://github.com/kien/ctrlp.vim.git
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Settings for python-mode
" cd ~/.vim/bundle
" git clone https://github.com/klen/python-mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
"" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>


" Cygwin stuff
" Function to copy Text from Vim to the Windows Clipboard
" Copied from
" http://vim.wikia.com/wiki/Using_the_Windows_clipboard_in_Cygwin_Vim
function! Putclip(type, ...) range
  let sel_save = &selection
  let &selection = "inclusive"
  let reg_save = @@
  if a:type == 'n'
    silent exe a:firstline . "," . a:lastline . "y"
  elseif a:type == 'c'
    silent exe a:1 . "," . a:2 . "y"
  else
    silent exe "normal! `<" . a:type . "`>y"
  endif
  "call system('putclip', @@)
  "As of Cygwin 1.7.13, the /dev/clipboard device was added to provide
  "access to the native Windows clipboard. It provides the added benefit
  "of supporting utf-8 characters which putclip currently does not. Based
  "on a tip from John Beckett, use the following:
  call writefile(split(@@,"\n"), '/dev/clipboard')
  let &selection = sel_save
  let @@ = reg_save
endfunction
" And now map the function to ,y
" Can be used like the normal yank function
vnoremap <silent> <leader>y :call Putclip(visualmode(), 1)<CR>
nnoremap <silent> <leader>y :call Putclip('n', 1)<CR>

" vim: set ft=vim :
