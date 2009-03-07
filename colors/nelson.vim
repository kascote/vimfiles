
set background=dark
hi clear          
if exists("syntax_on")
    syntax reset
endif

hi Boolean              guifg=#80a0ff
hi Character            guifg=#00ff00 gui=bold ctermfg=green
hi Comment              guifg=#B571DF ctermfg=gray 
hi rubyDocumentation    guifg=#E6BEFF
"hi Conditional          guifg=#FF0000 gui=bold
hi Constant             guifg=#A52A2A gui=bold
hi Cursor               gui=NONE guifg=#ffffff guibg=#ff9020
hi nCursor              gui=NONE guifg=#000000 guibg=#D1FF20
hi CursorLine           gui=NONE guibg=#444444
"hi Debug                guifg=#dca3a3 gui=bold
hi Define               guifg=#FFB631 gui=bold ctermfg=red
hi Delimiter            guifg=#888888
"hi DiffAdd              guifg=#709080 guibg=#313c36 gui=bold
"hi DiffChange           guibg=#333333
"hi DiffDelete           guifg=#333333 guibg=#464646
"hi DiffText             guifg=#ecbcbc guibg=#41363c gui=bold
hi Directory            guifg=#fefefe gui=bold
hi ErrorMsg             guifg=#ffffff guibg=#ff5555 gui=bold
"hi Exception            guifg=#c3bf9f gui=bold
hi Float                guifg=#929EEA
"hi FoldColumn           guifg=#93b3a3 guibg=#3f4040
"hi Folded               guifg=#93b3a3 guibg=#505050
"+++
"#EC5050 
hi Function             guifg=#ffffff ctermfg=white
hi Identifier           guifg=#ffffff gui=bold
hi IncSearch            guibg=#ffffff guifg=#44BEE5
hi Keyword              guifg=#FFA500 gui=bold
hi Label                guifg=#FFA500 gui=underline
hi LineNr               guifg=#aaaaaa guibg=#555555
"hi Macro                guifg=#ffcfaf gui=bold
hi ModeMsg              guifg=#444444 guibg=#B2FFB2 gui=none
hi MoreMsg              guifg=#00dd00 gui=bold
hi Normal               guifg=#cccccc guibg=#111111
hi Number               guifg=#929EEA
"hi Operator             guifg=#D5F5FF
"hi PreCondit            guifg=#dfaf8f gui=bold
hi PreProc              guifg=#ffcfaf gui=bold
hi Question             guifg=#000000 guibg=#90EE90 gui=bold
"hi Repeat               guifg=#ffd7a7 gui=bold
hi Search               guifg=#ffffff guibg=#44BEE5
"hi SpecialChar          guifg=#dca3a3 gui=bold
"hi SpecialComment       guifg=#82a282 gui=bold
"hi Special              guifg=#C6E9C6
"+++
"hi Statement            guifg=#e3ceab guibg=#3f3f3f gui=none
hi StatusLine           guifg=#9C3A35 guibg=#ffffff ctermfg=red ctermbg=lightred
hi StatusLineNC         guifg=#5e2320 guibg=#ffffff
"hi StorageClass         guifg=#c3bf9f guibg=#ff0000 gui=bold
"hi String               guifg=#00ff00
hi String               guifg=#00ff00 gui=bold ctermfg=green
"hi Structure            guifg=#efefaf gui=bold
"hi Tag                  guifg=#dca3a3 gui=bold
"hi Title                guifg=#efefef guibg=#3f3f3f gui=bold
hi Todo                 guifg=#4D4D4D guibg=#F7D28E gui=bold ctermfg=black ctermbg=yellow
"hi Typedef              guifg=#FFC0CB gui=bold
hi Type                 guifg=#FFFFFF gui=bold ctermfg=magenta
"hi Underlined           guifg=#dcdccc guibg=#3f3f3f gui=underline
hi VertSplit            guifg=#5e2320 guibg=#aaaaaa
hi Visual               guifg=#333333 guibg=#E6E6FA gui=bold
hi VisualNOS            guifg=#FF3333 guibg=#558c96 gui=bold,underline
hi WarningMsg           guifg=#ffffff guibg=#00ff00 gui=bold
"hi WildMenu             guibg=#2c302d guifg=#cbecd0 gui=underline

" Colores para Ruby
" =================================================
hi rubyBoolean          guifg=#80a0ff
hi rubyClassVariable    guifg=#ADD8E6 ctermfg=blue
hi rubyInstanceVariable guifg=#51C5EB ctermfg=blue
hi rubyBlockParameter   guifg=#FFBFF6 ctermfg=magenta
hi rubyGlobalVariable   guifg=#00A4D9
hi rubySymbol           guifg=#80a0ff 
hi rubyPseudoVariable   guifg=#80a0ff
