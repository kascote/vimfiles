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

"hi link railsMethod             PreProc
hi link rubyDefine              Keyword
"hi link rubySymbol              Constant
hi link rubyAccess              rubyMethod
hi link rubyAttribute           rubyMethod
hi link rubyEval                rubyMethod
hi link rubyException           rubyMethod
hi link rubyRegexp              Regexp
hi link rubyRegexpDelimiter     rubyRegexp
hi link rubyNumber              Number
"hi link rubyConstant            Variable
hi link rubyStringDelimiter     String
hi link rubyString              String
hi link rubyInterpolationDelimiter Delimiter
hi link rubyInterpolation       Delimiter
hi link rubyGlobalVariable      Variable
hi link rubyClassVariable       Variable
hi link rubyInstanceVariable    Variable
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
hi link Directory               Identifier
hi link Question                MoreMsg
hi link FoldColumn              Folded

highlight Normal                guifg=#1f1f1f   guibg=White                     ctermfg=Black     ctermbg=White

highlight StatusLine            guifg=Black     guibg=#aabbee   gui=bold        ctermfg=Black     ctermbg=White       cterm=bold
highlight StatusLineNC          guifg=#444444   guibg=#aaaaaa   gui=none        ctermfg=Black     ctermbg=Grey        cterm=none
highlight StatusLine                                                            ctermbg=117

highlight WildMenu              guifg=Black     guibg=#ffff00   gui=bold        ctermfg=Black     ctermbg=Yellow      cterm=bold
highlight Cursor                guifg=White     guibg=Red                       ctermfg=White     ctermbg=Red
highlight CursorLine            guibg=#f2f2f2   guifg=NONE                      cterm=none        ctermbg=254
"highlight CursorColumn          guibg=#333333 guifg=NONE
highlight NonText               guifg=#606060   ctermfg=8
highlight SpecialKey            guifg=#606060   ctermfg=8
highlight ErrorMsg              guifg=White     guibg=Red                       ctermfg=White     ctermbg=DarkRed 
highlight Search                guifg=#1d1d1d   guibg=#a7a7a7                   ctermfg=0         ctermbg=250
highlight IncSearch             guifg=#1d1d1d   guibg=#a7a7a7                   ctermfg=0         ctermbg=250
highlight MoreMsg               guifg=#00AA00   ctermfg=Green
highlight LineNr                guifg=#DDEEFF   guibg=#222222                   ctermfg=White     ctermbg=80
highlight Title                 guifg=Magenta                                   ctermfg=Magenta
highlight VisualNOS             guifg=#000000   guibg=#444444                   ctermfg=0         ctermbg=81
highlight Visual                guifg=#000000   guibg=#555577                   ctermfg=0         ctermbg=83
highlight WarningMsg            guifg=Red                                       ctermfg=Red
highlight Folded                guifg=#aaddee   guibg=#1100aa                   ctermfg=0         ctermbg=DarkBlue
highlight Pmenu                 guifg=White     guibg=#000099   gui=bold        ctermfg=White     ctermbg=18          cterm=bold
highlight PmenuSel              guifg=White     guibg=#5555ff   gui=bold        ctermfg=White     ctermbg=39          cterm=bold
highlight PmenuSbar                             guibg=Grey                                        ctermbg=Grey
highlight PmenuThumb                            guibg=White                                       ctermbg=White
highlight TabLine               guifg=#bbbbbb   guibg=#333333   gui=underline   ctermfg=0         ctermbg=251         cterm=underline
highlight TabLineSel            guifg=White     guibg=Black                     ctermfg=White     ctermbg=Black
highlight TabLineFill           guifg=#bbbbbb   guibg=#808080   gui=underline   ctermfg=0         ctermbg=248         cterm=underline

highlight Type                  guifg=#c5060b                   gui=bold
highlight Statement             guifg=#c5060b                   gui=bold
highlight Identifier            guifg=#c5060b                   gui=bold                                              cterm=none
highlight Comment               guifg=#0066ff   guibg=#d6e5ff   gui=italic
highlight Constant              guifg=#0000cd   
highlight Number                guifg=#0000cd                                   ctermfg=7
highlight Boolean               guifg=#585cf6                   gui=bold
highlight String                guifg=#036a07   guibg=#eeffef
highlight Statement             guifg=#001b6d                   gui=bold
highlight PreProc               guifg=#ec0000   guibg=#ffdfe0   gui=italic
highlight Type                  guifg=#c5060b                   gui=bold
highlight Special               guifg=#585cf6
highlight Regexp                guifg=#036a07
highlight Keyword               guifg=#001b6d                   gui=bold
highlight Variable              guifg=#b90091
highlight Delimiter             guifg=#036a07   guibg=#b7ffb1   gui=italic

highlight rubyConstant          guifg=#ff007f
highlight rubyMethod            guifg=#9f0004
highlight rubyInclude           guifg=#c5060b                   gui=bold
highlight rubyAccess            guifg=#c5060b                   gui=bold
highlight rubySymbol            guifg=#ff5600                   gui=bold
highlight rubyBlockParameter    guifg=#0000cd
highlight railsUserClass        guifg=#4070a2                   gui=bold                                              cterm=underline
highlight railsUserMethod       guifg=#666666                   gui=italic                                            cterm=underline
highlight railsMethod           guifg=#EE1122   guibg=#ffdfe0   gui=italic                                            ctermfg=1
