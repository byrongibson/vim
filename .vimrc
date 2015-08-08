" UberVim
" This .vimrc is a Frankenstein mashup up of Bram Molenaar's sample
" .vimrc used in Debian repo Vim, gmarik's sample Vundle .vimrc from 
" github, Powerline, etc.
" 
" 
" https://github.com/gmarik/vundle
" https://github.com/powerline/powerline

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Use Vim settings, rather than Vi settings.
" This must be first, because it changes other options as a side effect.
set nocompatible


" \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" "
" load Vundle and all bundles
" More bundles:
"   http://vim.sourceforge.net/scripts/script_search_results.php?order_by=rating
"   http://news.ycombinator.com/item?id=1590713

filetype off                   " required!

 " set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 " call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle
 " required! 
 "Bundle 'repos-vim/vundle'
 Plugin 'gmarik/Vundle.vim'

 " My Bundles here:
 " Plugin 'bling/vim-airline'

 "Plugin 'repos-scala/scala-vundle'

 " Original repos on github
 "https://github.com/bling/vim-airline
 "Plugin 'bling/vim-airline'

 " https://github.com/mattn/zencoding-vim
 "Plugin 'repos-vim/zencoding-vim'

 " https://github.com/othree/html5.vim
 "Plugin 'othree/html5.vim' 

 " https://github.com/dart-lang/dart-vim-plugin
 "Plugin 'dart-lang/dart-vim-plugin'

 " git@github.com:repos-rust/vim-rust.git
 "Plugin 'repos-rust/vim-rust'

 " https://www.wakati.me/help/plugins/vim
 " Plugin 'wakatime/vim-wakatime'

 " Plugin 'tpope/vim-fugitive'
 " Plugin 'tpope/vim-rails.git'
 "
 "https://github.com/scrooloose/nerdtree
 "Plugin 'scrooloose/nerdtree'

 "source: https://github.com/Lokaltog/vim-easymotion
 "backup: https://github.com/vim-scripts/EasyMotion
 "activate with <leader><leader>[movement]  (<leader> = <space>)
 "ex: <space><space>w
 "Plugin 'Lokaltog/vim-easymotion'

 "https://github.com/vim-scripts/matchit.zip (since vim 6.0, this
 "functionality included in vim
 "Plugin 'vim-scripts/matchit.zip'

 "https://github.com/vim-scripts/rainbow_parentheses.vim
 "Plugin 'vim-scripts/rainbow_parentheses.vim'

 "https://github.com/Soares/rainbow.vim
 "Plugin 'Soares/rainbow.vim'

 "https://github.com/altercation/vim-colors-solarized
 "Plugin 'altercation/vim-colors-solarized'

 "https://github.com/tpope/vim-surround
 "Plugin 'tpope/vim-surround'

 "https://github.com/rstacruz/sparkup
 "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

 "https://github.com/groenewege/vim-less
 "see .less -> .css compiler mapping at end of file
 "Plugin 'groenewege/vim-less'

 "https://github.com/tpope/vim-haml
 "Haml, Sass, and SCSS
 "Plugin 'tpope/vim-haml'

 "https://github.com/tpope/vim-git
 "Plugin 'tpope/vim-git'

 "http://myusuf3.github.com/numbers.vim/
 "http://news.ycombinator.com/item?id=4172099
 "Plugin 'myusuf3/numbers.vim'
 
 "https://github.com/hail2u/vim-css3-syntax
 "Plugin 'hail2u/vim-css3-syntax'
 
 "Org Modes for vim
 "https://github.com/aaronbieber/quicktask/
 "Plugin 'aaronbieber/quicktask'
 "https://github.com/hsitz/vimorganizer
 "Plugin 'hsitz/VimOrganizer'
 
 "Plugin 'ChrisYip/Better-CSS-Syntax-for-Vim'
 "Plugin 'kchmck/vim-coffee-script'
 "Plugin 'pangloss/vim-javascript'
 "Plugin 'leshill/vim-json'
 "Plugin 'itspriddle/vim-jquery'
 "Plugin 'mutewinter/nginx'
 "Plugin 'hallison/vim-markdown'
 "Plugin 'tpope/vim-markdown'
 "Plugin 'kien/ctrlp.vim'
 "Plugin 'majutsushi/tagbar'
 "Plugin 'Shougo/neocomplcache'
 "Plugin 'Rykka/colorv'
 "Plugin 'scrooloose/syntastic'
 "Plugin 'godlygeek/tabular'
 
 " non github repos
 "Plugin 'git://git.wincent.com/command-t.git'

 " vim-scripts repos
 "Plugin 'L9'
 "Plugin 'FuzzyFinder'
 "http://vim.sourceforge.net/scripts/script.php?script_id=2540
 "https://github.com/msanders/snipmate.vim
 "Plugin 'snipMate'
 "Plugin 'html'

filetype plugin indent on     " required! (will be set in separate section below)
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
" \"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" "

" Security
" http://lists.alioth.debian.org/pipermail/pkg-vim-maintainers/2007-June/004020.html
set modelines=0

" Explicitly tell vim the terminal supports 256 chars
" Needed for vim-powerline prettification of statusline
set t_Co=256

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
"if has('gui running')
"    colorscheme moria
"else
"    colorscheme xoria256
"endif
highlight NonText guibg=#060606
highlight Folded guibg=#0A0A0A guifg=#9090D0

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection. (enabled in Vundle section above)
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  "filetype plugin indent on
  "filetype plugin indent on
  "filetype on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

"else

"	set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" Set UTF-8 encoding
" http://stackoverflow.com/questions/5477565/how-to-setup-vim-properly-for-editing-in-utf-8#5795441
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8                     " better default than latin1
  setglobal fileencoding=utf-8           " change default file encoding when writing new files
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set mouse=a					" Enable mouse usage (all modes)
"set encoding=utf8               " utf8 default (see above)
set autowrite					" Automatically save before commands like :next and :make
set backspace=indent,eol,start	" ...
"set cursorline					" ...
set gdefault					" applies substitutions globally on lines by default.  To apply only to first word, add g to the end (:%s/foo/bar/g)
set hidden						" Hide buffers when they are abandoned
set history=50					" keep 50 lines of command line history
set ignorecase					" Do case insensitive matching
set incsearch					" Incremental search: show results as you type
set laststatus=2				" Always show the statusline
set nowrap						" Don't wrap lines
set nu							" line numbering
set numberwidth=5               " align line numbers
set shiftround					" use multiple of shiftwidth when indenting
set showcmd						" Show (partial) command in status line.
set showmatch					" Show matching brackets.
"set showmode					" ...
set smartcase					" Do smart case matching
"set smarttab					" insert tabs on the start of a line according to shiftwidth, not tabstop
" detabify http://www.jwz.org/doc/tabs-vs-spaces.html
set shiftwidth=2			" number of spaces to use for autoindenting
set softtabstop=2			" a tab is 2 spaces
set tabstop=2					" a tab is 2 spaces
set expandtab         " replace ASCII tab character with spaces 
set ruler						  " show the cursor position all the time
"set ttyfast					  " ...
set undolevels=100				" undo up to 100 commands
"set pastetoggle=<M-F2>			" use F2 to turn off autoindent when pasting multiple paragraphs
set pastetoggle=<F8>            " toggles autoindent on and off for pasting
set autoread                    " auto reload files that have changed outside of vim
"set visualbell					" ...
"set wildmenu					" ...
"set wildmode=list:longest		" ...
set si                          " smart indent http://stackoverflow.com/questions/3626203/text-editor-for-scala
runtime ftplugin/man.vim        " Turn on Man pages

" Set colors & scheme
"colorscheme zenburn 
"colors zenburn

" remap : to ;
nnoremap ; :

" use Perl/Python regex, not Vim's default regex
nnoremap / /\v
vnoremap / /\v

" open a vertical split and switch to it
nnoremap <leader>w <C-w>v<C-w>l

" move around the split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
" Open new split panes to right and bottom, which feels more natural than Vim’s default:
"set splitbelow
"set splitright

" https://news.ycombinator.com/item?id=5571654
set autochdir

" remap Esc to jj in Insert mode
inoremap jj <ESC>

" Use Q for formatting the current paragraph (or selection)
"vmap Q gq					" already set above
nmap Q gqap

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"http://stackoverflow.com/questions/290465/vim-how-to-paste-over-without-overwriting-register
"These are to cancel the default behavior of d, D, c, C
"  to put the text they delete in the default register.
"  Note that this means e.g. "ad won't copy the text into
"  register a anymore.  You have to explicitly yank it.
nnoremap d "_d
vnoremap d "_d
nnoremap D "_D
vnoremap D "_D
nnoremap c "_c
vnoremap c "_c
nnoremap C "_C
vnoremap C "_C
"http://stackoverflow.com/a/15266864/284981
xnoremap <expr> p 'pgv"'.v:register.'y'


" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 1

" To save and restore screen for each Vim instance.
" This is useful if you routinely run more than one Vim instance.
" For all Vim to use the same settings, change this to 0.
let g:screen_size_by_vim_instance = 1
syntax enable
syntax on
syn on

" change the mapleader from \ to space, used mostly for vim-easymotion
" http://stackoverflow.com/questions/446269/can-i-use-space-as-mapleader-in-vim 
let mapleader="\<space>"
"let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Save when losing focus
au FocusLost * :wa

" Automatically create .backup directory, writable by the group.
if filewritable(".") && ! filewritable("vim~")
  silent execute '!umask 0022; mkdir vim~'
endif

" Set backup directory to the vim~ directory created above in the current
" path.  
set backupdir=./vim~
set directory=./vim~

" Visually select text, then 
" Escape special characters in a string for exact matching.
" This is useful to copying strings from the file to the search tool
" Based on this - http://peterodding.com/code/vim/profile/autoload/xolox/escape.vim
function! EscapeString (string)
  let string=a:string
  " Escape regex characters
  let string = escape(string, '^$.*\/~[]')
  " Escape the line endings
  let string = substitute(string, '\n', '\\n', 'g')
  return string
endfunction

" Get the current visual block for search and replaces
" This function passed the visual block through a string escape function
" Based on this - http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
function! GetVisual() range
  " Save the current register and clipboard
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&

  " Put the current visual selection in the " register
  normal! ""gvy
  let selection = getreg('"')

  " Put the saved registers and clipboards back
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save

  "Escape any special characters in the selection
  let escaped_selection = EscapeString(selection)

  return escaped_selection
endfunction

" Start the find and replace command across the entire file
vmap <leader>z <Esc>:%s/<c-r>=GetVisual()<cr>/

" also from same SO thread.  highlight text in visual mode, then hit C-r to
" replace.  Confirm each instance.
vnoremap <C-r> <Esc>:%s/<C-r>+//gc<left><left><left>

" User vim-powerline patched fonts
" http://www.mahdiyusuf.com/post/24784023641#comment-553653921
" https://github.com/Lokaltog/vim-powerline/tree/develop/fontpatcher
" let g:Powerline_symbols = 'fancy'

" https://github.com/scrooloose/nerdtree
" start NT with $> vim filename:
"autocmd vimenter * NERDTree

" start NT with $> vim      (no file specified at launch):
"autocmd vimenter * if !argc() | NERDTree | endif

" close Vim if the only window left is NT:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

".less to .css , lessc is required.
"https://github.com/groenewege/vim-less
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>

" http://unix.stackexchange.com/questions/12535/how-to-copy-text-from-vim-to-an-external-program
" C-y yanks to system clipboard, C-p pastes from system clipboard
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP

" install Powerline
" https://powerline.readthedocs.org/en/latest/usage/other.html
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

" y and p yank to and past from system clipboard 
" http://stackoverflow.com/questions/11404800/fix-vim-tmux-yank-paste-on-unnamed-register?rq=1
" if $TMUX == ''
"    set clipboard+=unnamed
" endif

" speed up CtrlP (Command-T alternative)
" http://news.ycombinator.com/item?id=4470488
" http://news.ycombinator.com/item?id=4470283
"let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co']

" more good config stuff at text triumvirate
" http://www.drbunsen.org/text-triumvirate.html

" map HTML Tidy to F12
" http://vim.wikia.com/wiki/Cleanup_your_HTML
" Disabled for now since Tidy does not recognize HTML5 elements
"map <F12> :%!tidy -q -i -m --show-errors 0<CR>
"map <F12> :%!tidy -q --tidy-mark 0 2>/dev/null<CR>

" How to paste text into vim commandline
" http://stackoverflow.com/questions/3997078/how-to-paste-text-into-vim-command-line
