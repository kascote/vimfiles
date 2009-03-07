"---[ General ]-----------------------------------------------------------
let $LANG = 'en'
set autowrite           " Automatically save before commands like :next and :make
set encoding=utf8
setglobal fenc=utf8
set history=50          " keep 50 lines of command line history
set ignorecase          " Do case insensitive search matching
set nocompatible        " Usar modo Vim
set showcmd             " Show (partial) command in status line.
let mapleader = ','     " remap leader
let $S = $HOME . '/vimfiles/sessions'
filetype plugin indent on  " Enable file type detection.
"set grepprg=ack
"set grepformat=%f:%l:%m
set tags=tags;~/          " Look for the file in the current directory, then south until you reach home.
set timeoutlen=300        " Quick timeouts on key combinations.

"---[ Theme / Colors ]----------------------------------------------------
set background=dark
syntax on
if has("gui_running")
  color molokai "ir_black vividchalk_nel autumnleaf vibrantink tabula eclipse nelson zenburn chocolateliquor
else
  color mustang
endif
"set guifont=Consolas:h10
set guifont=monaco\ 10

"---[ File / Bakcups ]----------------------------------------------------
set backupcopy=yes      " keep a backup file
set backupdir=/tmp
set directory=/tmp
set makeef=error.err

"---[ VIM UI]----------------------------------------------------
set lsp=0                   " space it out a little more (easier to read)
set wildmenu                " turn on wild menu
"set wildmode=list:longest
set ruler                   " Always show current positions along the bottom 
set cmdheight=2             " the command bar is 2 high
set number                  " turn on line numbers
set lz                      " do not redraw while running macros (much faster) (LazyRedraw)
set hid                     " you can change buffer without saving
"set backspace=2             " make backspace work normal
set backspace=indent,eol,start
"set backspace=indent,eol,start whichwrap+=<,>,[,]   \" set backspace=indent,eol,start      \" start,eol
set whichwrap+=<,>,h,l      " backspace and cursor keys wrap to
set mouse=a                 " use mouse everywhere
set shortmess=atI           " shortens messages to avoid 'press a key' prompt 
set report=0                " tell us when anything is changed via :...
set fillchars=vert:\ ,stl:\ ,stlnc:\      " make the splitters between windows be blank
set wmh=0                   " lineas minimas que se ven al maximizar una ventana
set t_Co=256                " Configura la consola a 256 colores
set title                   " set terminal title
"set virtualedit=all         " permite mover el cursor por todos lados en modo comando
set cursorline              " colorea la linea actual del cursor
set guioptions+=m           " menu bar
set guioptions+=g           " grey menu disabled menu items
set guioptions+=t           " tearoff menus
set guioptions-=T           " disable toolbar
set guioptions+=a           " Vim selection to OS clipboard, modeless
set guioptions+=c           " console dialogs
"set guicursor=
"	\n:block-nCursor/lCursor-blinkwait700-blinkoff250-blinkon400,
"	\c:block-Error/lCursor,
"	\o:hor50-Error,
"	\i-ci-v:block-nCursor,
"	\r-cr:block-Cursor/lCursor,
"	\sm:block-Cursor

"---[ Visual Cues ]----------------------------------------------------
set showmatch               " show matching brackets
set mat=5                   " how many tenths of a second to blink matching brackets for
set hlsearch                " highlight searchs
set incsearch               " BUT do highlight as you type you search phrase
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list
"set listchars=tab:>-,trail:·,eol:$
"set lines=45
"set columns=120
set so=10                   " Keep 10 lines (top/bottom) for scope
set novisualbell            " don't blink
set noerrorbells            " no noises
set statusline=%<%F%=\ [%M%n%R%H%W]\ %{&ff}\ %y\ %-19(%3l,%02c%03V%)[%o,%O]\ 0x%02B'%03b'  "Formato de la linea de status 
set laststatus=2            " always show the status line
set vb t_vb=            " Evita los beeps y flashear la pantalla

"---[ Text Formatting/Layout ]----------------------------------------------------
set fo=tcrqn                " See Help (complex)
"set formatoptions=qroct     " Correct indentation after opening a phpdocblock and automatic * on every line
set ai                      " autoindent
set si                      " smartindent 
set cindent                 " do c-style indenting
set tabstop=2               " tab spacing (settings below are just to unify it)
set softtabstop=2           " unify
set shiftwidth=2            " unify 
set nowrap                  " do not wrap lines  
set smarttab                " use tabs at the start of a line, spaces elsewhere
set expandtab               " tabs to spaces
set scrolljump=3            " Jump 5 lines when running out of the screen
set scrolloff=3             " Indicate jump out of the screen when 3 lines before end of the screen

"---[ Folding ]----------------------------------------------------
" Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
set foldenable              " Turn on folding
set foldmethod=indent       " Make folding indent sensitive
"set foldmethod=marker   " Enable folding by fold markers
set foldlevel=100           " Don't autofold anything (but I can still fold manually)
set foldopen-=search        " don't open folds when you search into them
set foldopen-=undo          " don't open folds when you undo stuff
set foldclose=all       " Autoclose folds, when moving out of them

"---[ File Explorer ]----------------------------------------------------
let g:explVertical=1        " should I split verticially
let g:explWinSize=40        " width of 35 pixels

"---[ Win Manager ]----------------------------------------------------
let g:winManagerWidth=35    " How wide should it be( pixels)
let g:winManagerWindowLayout = 'FileExplorer,TagsExplorer|BufExplorer' " What windows should it

"---[ CTags ]----------------------------------------------------
let Tlist_Ctags_Cmd = 'ctags'           " Location of ctags
let Tlist_Sort_Type = "name"            " order by 
let Tlist_Use_Right_Window = 1          " split to the right side of the screen
let Tlist_Compart_Format = 1            " show small meny
let Tlist_Exist_OnlyWindow = 1          " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 0      " Do not close tags for other files
let Tlist_Enable_Fold_Column = 0        " Do not show folding tree

"---[ Matchit ]----------------------------------------------------
let b:match_ignorecase = 1

"---[ Perl ]----------------------------------------------------
let perl_extended_vars=1      " highlight advanced perl vars inside strings


"no change tab characters for this files
autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

map <F2> :!irb -f<CR>
map <F3> :!ri 
map <F4> :!bash
map <F6> :set number!<CR>
map <F7> :set hlsearch!<CR>
map <F8> :set list!<CR>
"Si se esta con una session abierta, grava la sesion con los cambios que hay
map <F9> :execute 'mksession! ' . v:this_session<CR>

"----------
nmap <silent><Home>      :cal SmartHome("n")<CR>
nmap <silent><End>       :cal SmartEnd("n")<CR>
imap <silent><Home>     <C-r>=SmartHome("i")<CR>
imap <silent><End>      <C-r>=SmartEnd("i")<CR>
vmap <silent><Home> <Esc>:cal SmartHome("v")<CR>
vmap <silent><End>  <Esc>:cal SmartEnd("v")<CR> 

"-------------
imap <M-o> <C-X><Space>
imap <M-7> <C-X>/
imap <M-8> <C-X>+
imap <M-9> <C-X>-
imap <M-0> <C-X>=

"-------------
" mueve y maximiza entre ventanas
"map <C-H> <C-W>h<C-W><BAR>
"map <C-L> <C-W>l<C-W><BAR>
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_
map <c-j> <c-w>j 
map <c-k> <c-w>k 
map <c-l> <c-w>l 
map <c-h> <c-w>h


nnoremap ' `
nnoremap ` '

" Make Ctrl+J join lines in insert mode
inoremap <C-j> <C-o>J


"-------------
function! s:ToggleScratch()
  if expand('%') == g:ScratchBufferName
    quit
  else
    Sscratch
  endif
endfunction

map <silent> <leader>s :call <SID>ToggleScratch()<CR>
map <leader>t :FuzzyFinderFile<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>z :BufExplorer<CR>
map <c-z> <space>



" Autocommands
"autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
"au BufNewFile,BufRead *.asp :set ft=aspjscript " all my .asp files ARE jscript
"au BufNewFile,BufRead *.tpl :set ft=html " all my .tpl files ARE html
"au BufNewFile,BufRead *.hta :set ft=html " all my .tpl files ARE html

" Useful abbrevs
"iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
"iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

iabbrev {{DATE}} <C-R>=strftime("%A, %B %e %Y @ %H:%M")<CR>
iabbrev {{EPOCH}} <C-R>=strftime("%c")<CR>

" Cuando se carga un buffer con ruby se puede chequear la sintaxis con F11
autocmd BufEnter *.rb map <F11> :w<CR>:!ruby -c %<CR>
autocmd BufEnter *.pl map <F11> :w<CR>:!perl -c %<CR>
" Pone al vim bajo el directorio del archivo actual
autocmd BufEnter * set path=**

runtime! ftdetect/*.vim
