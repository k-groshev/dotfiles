" Terminal setup.
set vb t_vb=""				" No beeps or visual bells.
if &term == "xterm"
	set t_kD=			" Make delete work in xterm.
	set t_kb=			" And backspace too.
endif

" How things look.
set background=dark
syntax on
" Syntax colors.
highlight Comment ctermfg=LightGray
highlight Todo ctermbg=Red ctermfg=Yellow
" Set up the status line so it's colored and always on. Very jedish.
set laststatus=2
highlight StatusLine cterm=none ctermbg=darkblue
highlight StatusLineNC cterm=none ctermbg=darkblue
highlight VertSplit cterm=none ctermbg=darkblue
" Perl syntax highlighting controls.
let perl_want_scope_in_variables = 1
let perl_include_POD = 1
let perl_extended_vars = 1

" Miscellaneous settings.
set pastetoggle=<C-P>	" I paste a lot, so make it easy.
set shortmess+=I	" Short messages for intro screen
set textwidth=75
set noicon		" I disable these because they can cause X traffic
set notitle		" bad over slow links. Plus my shell does it ok.
set clipboard=exclude:.* " ignore X clipboard, too slow remotely.
set nowrap		" don't display long lines wrapped, just scroll over
set backup		" make backups
set backupdir=~/tmp	" to tmp though, to cut down on the cruft
set showmatch		" highlight matching brackets
set showcmd		" show commands as they're being typed
set incsearch		" incremental searching
set lazyredraw		" don't redraw screen during macros and stuff
set autowrite		" write contents of file before eg, :make
set ignorecase		" ignore case while searching
set smartcase		" don't ignore uppercase characters I type tho
set wildmenu		" display menu of completions
set viewoptions=folds	" save folding state for views
set wildmode=longest:full
set modeline
set foldmethod=marker
set gcr=n:blinkon0	" no blinking cursor in gvim
set tags=.tags,tags	" use .tags for tags file; to reduce ls clutter
set nojoinspaces	" don't add spaces after period on gqip
set fileencodings=utf-8
"set termencoding=latin1

" Enable it all.
filetype plugin indent on

" Little spell checker prog.
noremap <C-S> :so `~/vim/vimspell %`<CR><CR>
noremap <F7> :syntax clear SpellErrors<CR>

" Syncing swap files is bad news on laptops with spun down disks.
if system('cat /proc/apm')
	set swapsync=""
	" Temporary, noswapd doesn't work well with ext3 at all..
	"set noswapfile
endif

" Abbreviations.
iab culus CuLUs
iab Brandon Branden
iab pybloxsom pyblosxom
iab bloxsom blosxom

" Autocommands.

" Transparent editing of gpg encrypted files.
" By Wouter Hanegraaff <wouter@blub.net>
augroup encrypted
    au!

    " First make sure nothing is written to ~/.viminfo while editing
    " an encrypted file.
    autocmd BufReadPre,FileReadPre      *.gpg set viminfo=
    " We don't want a swap file, as it writes unencrypted data to disk
    autocmd BufReadPre,FileReadPre      *.gpg set noswapfile
    " Switch to binary mode to read the encrypted file
    autocmd BufReadPre,FileReadPre      *.gpg set bin
    autocmd BufReadPre,FileReadPre      *.gpg let ch_save = &ch|set ch=2
    autocmd BufReadPost,FileReadPost    *.gpg '[,']!gpg --decrypt 2> /dev/null
    " Switch to normal mode for editing
    autocmd BufReadPost,FileReadPost    *.gpg set nobin
    autocmd BufReadPost,FileReadPost    *.gpg let &ch = ch_save|unlet ch_save
    autocmd BufReadPost,FileReadPost    *.gpg execute ":doautocmd BufReadPost " . expand("%:r")

    " Convert all text to encrypted text before writing
    autocmd BufWritePre,FileWritePre    *.gpg   '[,']!gpg --default-key=80BF97AA --default-recipient-self -ae 2>/dev/null
    " Undo the encryption so we are back in the normal text, directly
    " after the file has been written. 
    autocmd BufWritePost,FileWritePost    *.gpg   u
augroup END

" Additional filetypes
autocmd! BufRead,BufNewFile *.wml	set filetype=html
autocmd! BufRead,BufNewFile *.t		set filetype=perl
" Vim thinks this is some ghastly programming language I've never heard of,
" but I use the extention for mooix interface files.
autocmd! BufRead,BufNewFile *.inf	set filetype=text

" Line length for mail
autocmd FileType mail			set textwidth=72

"""""""""" mt """""""""""""""''
nnoremap <silent> <F8> :TagExplorer<CR>

" minibufexpl
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Pre-GUI settings
syntax on
:map <F7> :Tlist<CR>
:map <F9> :make install<CR>
:map <C-F9> :make<CR>
:map <F2> :w<CR>
:map <Tab> :cw<CR>
:map <F5> :A!<CR>
norm \[i


:highlight Search term=reverse ctermbg=3 guibg=Red
set smartindent
set columns=80 lines=30       " don't inherit geometry from parent term
set mousemodel=popup          " right mouse button pops up a menu in the GUI

" Use a sufficiently wide window automatically when started as "gvimdiff"
if (&foldmethod == 'diff')
    set columns=165
    endif
    
" For bug 33327, add a mapping which allows shift-insert to function
" as expected in insert and command-line modes
map! <s-insert> <c-r>*



colorscheme dusk