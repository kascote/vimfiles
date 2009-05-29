" Vim color scheme
" Name:         vividchalk.vim
" Author:       Tim Pope <vimNOSPAM@tpope.info>
" GetLatestVimScripts: 1891 1 :AutoInstall: vividchalk.vim
" $Id: vividchalk.vim,v 1.7 2007/05/30 23:30:50 tpope Exp $

" Based on the Vibrank Ink theme for TextMate

"if has("gui_running")
    set background=light
"endif
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "gmatelight"

hi link railsMethod             PreProc
hi link rubyDefine              Keyword
hi link rubySymbol              Constant
hi link rubyAccess              rubyMethod
hi link rubyAttribute           rubyMethod
hi link rubyEval                rubyMethod
hi link rubyException           rubyMethod
hi link rubyInclude             rubyMethod
hi link rubyStringDelimiter     rubyString
hi link rubyRegexp              Regexp
hi link rubyRegexpDelimiter     rubyRegexp
hi link rubyConstant            Variable
"hi link rubyGlobalVariable      Variable
"hi link rubyClassVariable       Variable
"hi link rubyInstanceVariable    Variable
hi link javascriptRegexpString  Regexp
hi link javascriptNumber        Number
hi link javascriptNull          Constant
hi link javascript              Normal
hi link javascriptFunction      Function
hi link javascriptSpecial       Special
hi link javascriptType          Constant
hi      javascriptMember        guifg=#ff0000
hi      javascriptParens        guifg=#00ff00
hi link javascriptValue         Constant

highlight Normal                guifg=#1f1f1f   guibg=White                     ctermfg=15        ctermbg=White

highlight StatusLine            guifg=Black     guibg=#aabbee   gui=bold        ctermfg=Black     ctermbg=White       cterm=bold
highlight StatusLineNC          guifg=#444444   guibg=#aaaaaa   gui=none        ctermfg=Black     ctermbg=Grey        cterm=none
highlight StatusLine                                                            ctermbg=117

highlight WildMenu              guifg=Black     guibg=#ffff00   gui=bold        ctermfg=Black     ctermbg=Yellow      cterm=bold
highlight Cursor                guifg=White     guibg=Red                       ctermfg=White     ctermbg=Red
highlight CursorLine            guibg=#f2f2f2   guifg=NONE                      cterm=none        ctermbg=254
"highlight CursorColumn          guibg=#333333 guifg=NONE
highlight NonText               guifg=#606060   ctermfg=8
highlight SpecialKey            guifg=#606060   ctermfg=8
highlight Directory             none
high link Directory             Identifier
highlight ErrorMsg              guibg=Red       guifg=NONE                      ctermfg=NONE      ctermbg=DarkRed 
highlight Search                guifg=#000000   guibg=#555555                   ctermfg=0         ctermbg=250
highlight IncSearch             guifg=White     guibg=Black                     ctermfg=White     ctermbg=Black
highlight MoreMsg               guifg=#00AA00   ctermfg=Green
highlight LineNr                guifg=#DDEEFF   guibg=#222222                   ctermfg=White     ctermbg=80
highlight Question              none
high link Question              MoreMsg
highlight Title                 guifg=Magenta   ctermfg=Magenta
highlight VisualNOS             guifg=#000000   guibg=#444444                   ctermfg=0         ctermbg=81
highlight Visual                guifg=#000000   guibg=#555577                   ctermfg=0         ctermbg=83
highlight WarningMsg            guifg=Red                                       ctermfg=Red
highlight Folded                guifg=#aaddee   guibg=#1100aa                   ctermfg=0         ctermbg=DarkBlue
highlight FoldColumn            none
high link FoldColumn            Folded
highlight Pmenu                 guifg=White     guibg=#000099   gui=bold        ctermfg=White     ctermbg=18          cterm=bold
highlight PmenuSel              guifg=White     guibg=#5555ff   gui=bold        ctermfg=White     ctermbg=39          cterm=bold
highlight PmenuSbar             guibg=Grey                                                        ctermbg=Grey
highlight PmenuThumb            guibg=White                                                       ctermbg=White
highlight TabLine               guifg=#bbbbbb   guibg=#333333   gui=underline   ctermfg=0         ctermbg=251         cterm=underline
highlight TabLineSel            guifg=White     guibg=Black                     ctermfg=White     ctermbg=Black
highlight TabLineFill           guifg=#bbbbbb   guibg=#808080   gui=underline   ctermfg=0         ctermbg=248         cterm=underline

highlight Type                                                 gui=none
highlight railsUserClass                                       gui=italic                                             cterm=underline
highlight railsUserMethod                                      gui=italic                                             cterm=underline
highlight Statement                                            gui=none
highlight Identifier                                                                                                  cterm=none
highlight Comment               guifg=#0066ff   guibg=#d6e5ff   gui=italic
highlight Constant              guifg=#c5060b                   gui=bold

highlight rubyNumber            guifg=#0000cd                                   ctermfg=7
highlight String                guifg=#036a07   guibg=#eeffef
highlight Identifier            guifg=#318495
highlight Statement             guifg=#c5060b                   gui=bold
highlight PreProc               guifg=#aaffff
highlight railsUserMethod       guifg=#aaccff
highlight Type                  guifg=#c5060b                   gui=bold
highlight railsUserClass        guifg=#AAAAAA
highlight Special               guifg=#585cf6
highlight Regexp                guifg=#036a07
highlight rubyMethod            guifg=#9f0004

"highlight railsMethod   guifg=#EE1122 ctermfg=1
