filetype off 
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on
syntax on

syntax enable
set background=dark
colorscheme solarized

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" " 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" " The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

set pastetoggle=<F2>

set hidden

" Don't update the display while executing macros
set lazyredraw

" Show the current mode
set showmode

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

set autoindent

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
" set virtualedit=all

" Make the command-line completion better
set wildmenu

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" get rid of the silly characters in separators
set fillchars = ""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Automatically read a file that has changed on disk
set autoread

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,md :!mkdir -p %:p:h<CR>

" Turn off that stupid highlight search
nmap <silent> ,n :nohls<CR>

" set text wrapping toggles
nmap <silent> ,ww :set invwrap<CR>:set wrap?<CR>

" Swap two words
nmap <silent> gw :s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`'

" Underline the current line with '='
nmap <silent> ,u= :t.\|s/./=/g\|:nohls<cr>
nmap <silent> ,u- :t.\|s/./-/g\|:nohls<cr>

" Shrink the current window to fit the number of lines in the buffer.  Useful
" for those buffers that are only a few lines
nmap <silent> ,sw :execute ":resize " . line('$')<cr>

" Make the current file executable
nmap ,x :w<cr>:!chmod 755 %<cr>:e<cr>

" Highlight the current line and column
" Don't do this - It makes window redraws painfully slow
set nocursorline
set nocursorcolumn

set nowrap
"set autochdir
set sm
set ai
set ts=4
set sw=4
set si
set cin
set fen
set ar
set nu!
set gfn=Monospace\ 12
set ghr=0

set go=aegit

set spelllang=en spell

vmap > >gv
vmap < <gv

imap <Tab> <C-N>
imap <S-Tab> <C-P>

:let mapleader=","


" Map ;; to swap out the file with the previous one
nnoremap ;; <c-^>

" ,VV brings up my .vimrc
" ,V reloads it -- making all changes active (have to save first)
map <leader>V :sp ~/.vimrc<CR><C-W>_
map <silent> <leader>VV :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" Y yanks to the end of the line
nmap Y y$

" shortcuts for copying to clipboard
nmap <leader>y "*y

" copy the current line to the clipboard
nmap <leader>Y "*yy
nmap <leader>p "*p

" show the registers from things cut/yanked
nmap <leader>r :registers<CR>

" map the various registers to a leader shortcut for pasting from them
nmap <leader>0 "0p
nmap <leader>1 "1p
nmap <leader>2 "2p
nmap <leader>3 "3p
nmap <leader>4 "4p
nmap <leader>5 "5p
nmap <leader>6 "6p
nmap <leader>7 "7p
nmap <leader>8 "8p
nmap <leader>9 "9p


" ctrl-jklm  changes to that split
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" and lets make these all work in insert mode too ( <C-O> makes next cmd
" happen as if in command mode )
imap <C-W> <C-O><C-W>

" use - and + to resize horizontal splits
map - <C-W>-
map + <C-W>+

" and for vsplits with alt-< or alt->
map <M-,> <C-W>>
map <M-.> <C-W><

" Code formating
:nmap <leader>f 1G=G
:imap <leader>f <ESC>1G=Ga

set tags+=tags;/

" SuperTab
let g:SuperTabDefaultCompletionType= "<C-X><C-O>" 

" TagBar
nmap <F8> :TagbarToggle<CR>

" Tabular
" from http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
"if exists(":Tabularize")
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
"endif

" Par
if executable("par")
	set formatprg=par\ -w72r
endif


" Gist - github pastbin
" http://www.vim.org/scripts/script.php?script_id=2423
" :Gist
" :Gist -p (private)
" :Gist -l
" :Gist XXXX (fetch Gist XXXX and load)
let g:gist_detect_filetype = 1
