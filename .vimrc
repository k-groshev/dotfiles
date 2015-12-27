"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Stuff I have decided I don't like
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set ignorecase -- turns out, I like case sensitivity 
"set list " turns out, I don't like listchars -- show chars on end of line, whitespace, etc
"autocmd GUIEnter * :simalt ~x -- having it auto maximize the screen is annoying
"autocmd BufEnter * :lcd %:p:h -- switch to current dir (breaks some scripts)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible        " get out of horrible vi-compatible mode
filetype on             " detect the type of file
set history=1000        " How many lines of history to remember
set cf                  " enable error files and error jumping
set clipboard+=unnamed  " turns out I do like is sharing windows clipboard
set ffs=dos,unix,mac    " support all three, in this order
filetype plugin on      " load filetype plugins
set viminfo+=!          " make sure it can save viminfo
set isk+=_,$,@,%,#,-    " none of these should be word dividers, so make them not be
"set fileencodings=koi8-r,utf8,cp1251
set fileencodings=utf8,koi8-r,cp1251
set fileformats=unix,dos

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background=dark      " we are using a dark background
syntax on                " syntax highlighting on
"colorscheme dusk         " my theme
colorscheme oceandeep    " my theme
"colorscheme desert256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backup              " make backup file
"set backupdir=$VIM\vimfiles\backup " where to put backup file
"set directory=$VIM\vimfiles\temp " directory is the directory for temp file
set makeef=error.err    " When using make, where should it dump the file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lsp=0               " space it out a little more (easier to read)
set wildmenu            " turn on wild menu
set ruler               " Always show current positions along the bottom 
set cmdheight=2         " the command bar is 2 high
set number              " turn on line numbers
set lz                  " do not redraw while running macros (much faster) (LazyRedraw)
set hid                 " you can change buffer without saving
set backspace=2         " make backspace work normal
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
set mouse=a             " use mouse everywhere
set shortmess=atI       " shortens messages to avoid 'press a key' prompt 
set report=0            " tell us when anything is changed via :...
set noerrorbells        " don't make noise
" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch " show matching brackets
set mat=5 " how many tenths of a second to blink matching brackets for
set nohlsearch " do not highlight searched for phrases
set incsearch " BUT do highlight as you type you search phrase
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list

"set columns=80 lines=30       " don't inherit geometry from parent term (160/80)

set so=10 " Keep 10 lines (top/bottom) for scope
set novisualbell " don't blink
set noerrorbells " no noises
set statusline=%F%m%r%h%w\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [%{&fileencoding}]\ [%{&encoding}]\ [POS=%04l,%04v][%p%%]
set laststatus=2 " always show the status line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fo=tcrqn      " See Help (complex)
set ai            " autoindent
set si            " smartindent 
set cindent       " do c-style indenting
set tabstop=8     " tab spacing (settings below are just to unify it)
set softtabstop=4 " unify(8)
set shiftwidth=4  " unify(8) 
set noexpandtab   " real tabs please!
set nowrap        " do not wrap lines  
"set smarttab      " use tabs at the start of a line, spaces elsewhere

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"  Enable folding, but by default make it act like folding is off, because folding is annoying in 
"  anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable 	       " Turn on folding
set foldmethod=indent  " Make folding indent sensitive
set foldlevel=100      " Don't autofold anything (but I can still fold manually)
set foldopen-=search   " don't open folds when you search into them
set foldopen-=undo     " don't open folds when you undo stuff

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Win Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWidth=35 " How wide should it be( pixels)
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' " What windows should it

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd ='/usr/bin/ctags' " Location of ctags
let Tlist_Sort_Type = "name"               " order by 
let Tlist_Use_Right_Window = 1             " split to the right side of the screen
let Tlist_Compart_Format = 1               " show small meny
let Tlist_Exist_OnlyWindow = 1             " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 0         " Do not close tags for other files
let Tlist_Enable_Fold_Column = 0           " Do not show folding tree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplTabWrap = 1               " make tabs show complete (no broken on two lines)
let g:miniBufExplModSelTarget = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Perl
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let perl_extended_vars=1 " highlight advanced perl vars inside strings

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Select range, then hit :SuperRetab($width) - by p0g and FallingCow
function! SuperRetab(width) range
	silent! exe a:firstline . ',' . a:lastline . 's/\v%(^ *)@<= {'. a:width .'}/\t/g'
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
au BufNewFile,BufRead *.asp :set ft=aspjscript " all my .asp files ARE jscript
au BufNewFile,BufRead *.tpl :set ft=html " all my .tpl files ARE html
au BufNewFile,BufRead *.hta :set ft=html " all my .tpl files ARE html

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Useful abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-right> <ESC>:MBEbn<RETURN>  " right arrow (normal mode) switches buffers  (excluding minibuf)
map <C-left> <ESC>:MBEbp<RETURN>   " left arrow (normal mode) switches buffers (excluding minibuf) 

"map <F7> <ESC>:Tlist<RETURN>         " down arrow  (normal mode) brings up the tag list
"map <A-i> i <ESC>r " alt-i (normal mode) inserts a single char, and then switches back to normal
"map <F2> <ESC>ggVG:call SuperRetab()<left>
"map <F12> ggVGg? " encypt the file (toggle)
"nnoremap  <silent>  <space> :exe 'silent! normal! za'.(foldlevel('.')?'':'l')<cr>

:map <F2> :w<CR>
:map <F2> :w<CR>
vmap <F3> :s/^/\/\//g <CR> :noh <CR>       " Map F3 to comment the selected lines in visual mode (C++ style comments)
vmap <F4> :s/^\/\///g <CR> :noh <CR>       " Map F4 to uncomment the selected lines in visual mode
:map <C-F4> :confirm bd<CR>                " удаление буфера Ctrl-F4
:map <F5> :A!<CR>                          " перекдючение cpp <-> h
nnoremap  <silent>  <F6> :TagExplorer<cr>  " TagExplorer
:map <F7> :Tlist<CR>                       " Tag List
:map <A-F9> :make clean<CR>
:map <C-F9> :make<CR>

map <C-m> :copen <ENTER>                   " open error win
map <C-n> :cclose <ENTER>                  " close error win
map <C-.> :cnext <ENTER>                   " next error
map <C-,> :cprevious <ENTER>               " prev error


"autoindent on/off
map <F11> :set ai!<CR>:set ai?<CR>

"cd to current/root directory of open file
map <F1> :execute 'cd ' .  expand('%:h')<CR>:pwd<CR>

:map <Tab> :cw<CR>
norm \[i

:highlight Search term=reverse ctermbg=3 guibg=Red

set mousemodel=popup          " right mouse button pops up a menu in the GUI

" Use a sufficiently wide window automatically when started as "gvimdiff"
if (&foldmethod == 'diff')
	set columns=165
endif

" For bug 33327, add a mapping which allows shift-insert to function
" as expected in insert and command-line modes
map! <s-insert> <c-r>*



" Toggle fold state between closed and opened.
"
" If there is no fold at current line, just moves forward.
" If it is present, reverse its state.
fun! ToggleFold()
if foldlevel('.') == 0
normal! l
else
if foldclosed('.') < 0
. foldclose
else
. foldopen
endif
endif
" Clear status line
echo
endfun

" Map this function to Space key.
noremap <space> :call ToggleFold()<CR>


" Set incremental search
set incsearch


" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
    set hlsearch
endif

;
set wildmenu
set wcm=<Tab>
"menu Encoding.Normal       :set termencoding=koi8-r encoding=koi8-r fileencodings=ucs-bom<CR>
"menu Encoding.CP-1251      :set termencoding=koi8-r encoding=cp1251 fileencodings=cp1251<CR>
"menu Encoding.Normal       :set encoding=koi8-r fileencodings=ucs-bom fileformat=unix<CR>
menu Encoding.Normal       :set encoding=utf8 fileencodings=ucs-bom fileformat=unix<CR>
menu Encoding.CP1251      :set encoding=cp1251 fileencodings=cp1251 fileformat=dos<CR>
map <F8> :emenu Encoding.<TAB>
;
