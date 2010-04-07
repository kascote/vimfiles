" Vim color file
"
" Author: Anthony Carapetis <anthony.carapetis@gmail.com>
"
" Note: Based on github's syntax highlighting theme
"       Used Brian Mock's darkspectrum as a starting point/template
"       Thanks to Ryan Heath for an easy list of some of the colours:
"       http://rpheath.com/posts/356-github-theme-for-syntax-gem

hi clear

set background=light
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
    syntax reset
    endif
endif
let g:colors_name="github"

hi Normal                       guifg=#000000   guibg=#F8F8FF                   ctermfg=16    ctermbg=231

" {{{ Cursor
hi Cursor                       guifg=#F8F8FF   guibg=#000000                   ctermfg=16    ctermbg=231
hi CursorLine                                   guibg=#D8D8DD                                 ctermbg=253   cterm=none
hi CursorColumn                                 guibg=#E8E8EE                                 ctermbg=254
" }}}
" {{{ Diff
hi DiffAdd                      guifg=#003300   guibg=#DDFFDD   gui=none
hi DiffChange                   guibg=#ececec   gui=none
hi DiffText                     guifg=#000033   guibg=#DDDDFF   gui=none
hi DiffDelete                   guifg=#DDCCCC   guibg=#FFDDDD   gui=none
" }}}
" {{{ Folding / Line Numbering / Status Lines
hi Folded                       guifg=#808080   guibg=#ECECEC   gui=bold        ctermfg=244   ctermbg=255
hi vimFold                      guifg=#808080   guibg=#ECECEC   gui=bold        ctermfg=244   ctermbg=255
hi FoldColumn                   guifg=#808080   guibg=#ECECEC   gui=bold        ctermfg=244   ctermbg=255

hi LineNr                       guifg=#A0A0A0   guibg=#ECECEC                   ctermfg=247   ctermbg=255
hi NonText                      guifg=#808080   guibg=#ECECEC                   ctermfg=244   ctermbg=255
hi Folded                       guifg=#808080   guibg=#ECECEC   gui=bold        ctermfg=244   ctermbg=255
hi FoldeColumn                  guifg=#808080   guibg=#ECECEC   gui=bold        ctermfg=244   ctermbg=255

hi VertSplit                    guibg=#dddddd   guifg=#dddddd   gui=none        ctermfg=251   ctermbg=251
hi StatusLine                   guibg=#dddddd   guifg=#404040   gui=bold        ctermfg=254   ctermbg=241
hi StatusLineNC                 guibg=#dddddd   guifg=#404040   gui=italic      ctermfg=254   ctermbg=241   cterm=italic
" }}}
" {{{ Misc
hi ModeMsg		                guifg=#990000                                   ctermfg=124
hi MoreMsg		                guifg=#990000                                   ctermfg=124

hi Title		                guifg=#ef5939                                   ctermfg=160
hi WarningMsg	                guifg=#ef5939                                   ctermfg=160
hi SpecialKey                   guifg=#177F80                   gui=italic      ctermfg=27

hi MatchParen	                guifg=#000000   guibg=#cdcdfd                   ctermfg=16    ctermbg=69
hi Underlined	                guifg=#000000                   gui=underline   ctermfg=16                  cterm=underline
hi Directory	                guifg=#990000                                   ctermfg=124
" }}}
" {{{ Search, Visual, etc
hi Visual		                guifg=#FFFFFF   guibg=#3465a4   gui=none        ctermfg=231   ctermbg=27
hi VisualNOS                    guifg=#FFFFFF   guibg=#204a87   gui=none        ctermfg=231   ctermbg=18
hi IncSearch	                guifg=#000000   guibg=#cdcdfd   gui=italic      ctermfg=16    ctermbg=69
hi Search		                guifg=#000000   guibg=#cdcdfd   gui=italic      ctermfg=16    ctermbg=69
" }}}

" {{{ Syntax groups
hi Ignore		                guifg=#808080                                   ctermfg=238
hi Identifier	                guifg=#0086B3                                   ctermfg=32
hi PreProc		                guifg=#000000                   gui=bold        ctermfg=16                  cterm=bold
hi Comment		                guifg=#999988                   gui=italic      ctermfg=244
hi Constant		                guifg=#177F80                   gui=none        ctermfg=38                  cterm=none
hi String		                guifg=#D81745                                   ctermfg=161
hi Function		                guifg=#990000                   gui=bold        ctermfg=124                 cterm=bold
hi Statement	                                                gui=bold                                    cterm=bold
hi Type			                guifg=#445588                   gui=bold        ctermfg=17                  cterm=bold
hi Number		                guifg=#1C9898                                   ctermfg=31
hi Todo			                guifg=#FFFFFF   guibg=#990000   gui=bold        ctermfg=231   ctermbg=124   cterm=bold
hi Special		                guifg=#159828                                   ctermfg=28
hi rubySymbol                   guifg=#960B73                                   ctermfg=129
hi Error                        guifg=#ff1100   guibg=#f8f8ff   gui=undercurl   ctermfg=196   ctermbg=218   cterm=undercurl
hi Todo                         guifg=#ff1100   guibg=#f8f8ff   gui=underline   ctermfg=196   ctermbg=218   cterm=underline
" }}}

" {{{ Completion menus
hi WildMenu                     guifg=#7fbdff   guibg=#425c78   gui=none

hi Pmenu                        guifg=#ffffff   guibg=#808080   gui=bold        ctermfg=231   ctermbg=238
hi PmenuSel                     guifg=#000000   guibg=#cdcdfd   gui=italic      ctermfg=16    ctermbg=69
hi PmenuSbar                    guifg=#444444   guibg=#000000                   ctermfg=238   ctermbg=16
hi PmenuThumb                   guifg=#aaaaaa   guibg=#aaaaaa                   ctermfg=250   ctermbg=250
" }}}
" {{{ Spelling
hi spellBad                     guisp=#fcaf3e
hi spellCap                     guisp=#73d216
hi spellRare                    guisp=#fcaf3e
hi spellLocal                   guisp=#729fcf
" }}}
" {{{ Aliases
hi link   cppSTL          Function
hi link   cppSTLType      Type
hi link   Character       Number
hi link   htmlTag         htmlEndTag
"hi link  htmlTagName     htmlTag
hi link   htmlLink        Underlined
hi link   pythonFunction  Identifier
hi link   Question        Type
hi link   CursorIM        Cursor
hi link   VisualNOS       Visual
hi link   xmlTag          Identifier
hi link   xmlTagName      Identifier
hi link   shDeref         Identifier
hi link   shVariable      Function
hi link   rubySharpBang   Special
hi link   perlSharpBang   Special
hi link   schemeFunc      Statement
"hi link shSpecialVariables Constant
"hi link bashSpecialVariables Constant
" }}}

" {{{ Tabs (non-gui0
hi TabLine                      guifg=#404040   guibg=#dddddd   gui=none        ctermfg=244   ctermbg=250
hi TabLineFill                  guifg=#404040   guibg=#dddddd   gui=none        ctermfg=244   ctermbg=250
hi TabLineSel                   guifg=#404040                   gui=bold        ctermfg=244                 cterm=bold
" }}}
"
" vim: sw=4 ts=4 foldmethod=marker
