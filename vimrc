"---[ Profiler ]-----------------------------------------------------------
"let g:startup_profile_csv = "/tmp/profile_vim.csv"
"runtime macros/startup_profile.vim
"---[ General ]-----------------------------------------------------------
let $LANG = 'en'
set autowrite                       " Automatically save before commands like :next and :make
set encoding=utf8
setglobal fenc=utf8
set history=50                      " keep 50 lines of command line history
set ignorecase                      " Do case insensitive search matching
set nocompatible                    " Usar modo Vim
set showcmd                         " Show (partial) command in status line.
let mapleader = ','                 " remap leader
let $S = $HOME . '/vimfiles/sessions'
filetype plugin indent on           " Enable file type detection.
"set grepprg=ack
"set grepformat=%f:%l:%m
set tags=tags,vim_tags;~/           " Look for the file in the current directory, then south until you reach home.
set timeoutlen=500                  " Quick timeouts on key combinations.

"---[ Theme / Colors ]----------------------------------------------------
set background=dark
syntax on
if has("gui_running")
  color lucius_nel "peaksea vividchalk_nel 
else
  color lucius_nel "peaksea vividchalk_nel 
endif
set guifont=monaco\ 9
"set guifont=Consolas:h10

"---[ File / Bakcups ]----------------------------------------------------
set nobackup                " remove backups after close
set backupcopy=no           " keep a backup file
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
set numberwidth=5
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
"set cursorline              " colorea la linea actual del cursor
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
set t_vb=                   " Evita los beeps y flashear la pantalla
set statusline=%<%F%=\ [%M%n%R%H%W]\ %{&ff}\ %y\ %-19(%3l,%02c%03V%)[%o,%O]\ 0x%02B'%03b'  "Formato de la linea de status 
set laststatus=2            " always show the status line

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
set pastetoggle=<F3>        "Paste toggle - when pasting something in, don't indent.

"---[ Folding ]----------------------------------------------------
" Enable folding, but by default make it act like folding is off, because folding is annoying in anything but a few rare cases
set foldenable              " Turn on folding
set foldmethod=indent       " Make folding indent sensitive
"set foldmethod=marker      " Enable folding by fold markers
set foldnestmax=10
set foldlevel=1             " Don't autofold anything (but I can still fold manually)
"set foldopen-=search       " don't open folds when you search into them
"set foldopen-=undo         " don't open folds when you undo stuff
set foldclose=all           " Autoclose folds, when moving out of them
set nofoldenable            " don't fold by default

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

"---[ VimDiff ]----------------------------------------------------
set diffopt=filler,iwhite


"no change tab characters for this files
autocmd FileType make     set noexpandtab
autocmd FileType python   set noexpandtab

map <leader>4 :!bash
map <leader>6 :set number!<CR>
map <leader>7 :set hlsearch!<CR>
map <leader>8 :set list!<CR>
map <leader>9 :execute 'mksession! ' . v:this_session<CR>

"----------
nmap <silent><Home>  :cal SmartHome("n")<CR>
nmap <silent><End>   :cal SmartEnd("n")<CR>
imap <silent><Home>  <C-r>=SmartHome("i")<CR>
imap <silent><End>   <C-r>=SmartEnd("i")<CR>
vmap <silent><Home>  <Esc>:cal SmartHome("v")<CR>
vmap <silent><End>   <Esc>:cal SmartEnd("v")<CR> 

"-------------
imap <M-6> <C-X>/
imap <M-7> <C-X>+
imap <M-8> <C-X>-
imap <M-9> <C-X>=

"-------------
" mueve y maximiza entre ventanas
map <c-j> <c-w>j 
map <c-k> <c-w>k 
map <c-l> <c-w>l 
map <c-h> <c-w>h

nnoremap ' `
nnoremap ` '

" reflow paragraph with Q in normal and visual mode
nnoremap Q gqap
vnoremap Q gq

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

function! StripWhitespace ()
      exec ':%s/ \+$//gc'
endfunction
map ,s :call StripWhitespace ()<CR>


map <silent> <leader>s :call <SID>ToggleScratch()<CR>
map <leader>f :FuzzyFinderFile<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map <leader>z :BufExplorer<CR>
map <leader>t <c-]><CR>
map <c-z> <space>
"Fast reloading of the .vimrc
map <leader>s :source ~/.vimrc<cr>
"Fast editing of .vimrc
map <leader>e :e! ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc
"Switch to current dir
map <leader>cd :cd %:p:h<cr>
"Remove the Windows ^M
noremap <Leader>rm mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
map <leader>cn :cn<cr>
map <leader>cp :cp<cr>
map <leader>c :botright cw 10<cr>


" fix meta-keys which generate <Esc>a .. <Esc>z
"let c='a'
"while c <= 'z'
"  exec "set <M-".toupper(c).">=\e".c
"  exec "imap \e".c." <M-".toupper(c).">"
"  let c = nr2char(1+char2nr(c))
"endw

" fix meta-keys which generate <Esc>0 .. <Esc>9
"let c='0'
"while c <= '9'
"  exec "set <M-".toupper(c).">=\e".c
"  exec "imap \e".c." <M-".toupper(c).">"
"  let c = nr2char(1+char2nr(c))
"endw

map 6 <M-6>
map! 6 <M-6>
map 7 <M-7>
map! 7 <M-7>
map 8 <M-8>
map! 8 <M-8>
map 9 <M-9>
map! 9 <M-9>


" STRIP -- EMPTY LINE ENDINGS
nmap _$ :% s_\s\+$__g <CR>
vmap _$ : s_\s\+$__g <CR>
" STRIP -- EMPTY LINE BEGINNINGS
nmap _^ :% s_^\s\+__g <CR>
vmap _^ : s_^\s\+__g <CR>
" STRIP -- EMPTY LINES
nmap _- :% g/^\s*$/d<CR>
vmap _- : g/^\s*$/d<CR>

"Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./


" Useful abbrevs
"iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>

" Cuando se carga un buffer con ruby se puede chequear la sintaxis con <leader>w
autocmd BufEnter *.rb map <leader>rw :w<CR>:!ruby -cw %<CR>
autocmd BufEnter *.rb map <leader>rr :w<CR>:!ruby -w %<CR>
autocmd BufEnter *.pl map <leader>w :w<CR>:!perl -wc %<CR>
" Pone al vim bajo el directorio del archivo actual
autocmd BufEnter * set path=**
autocmd BufEnter *.xml set equalprg=xmllint\ --format\ --recover\ -

au Filetype gitcommit set tw=68 spell

runtime! ftdetect/*.vim

