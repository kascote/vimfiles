"
" fastgrep: syntax highlighting for search output
"

syntax match fastgPlain /^\d\+)/
highlight link fastgPlain Comment

syntax match fastgLine /^\d\+)\(.*\)/
highlight link fastgLine Comment

let b:current_syntax = "fggreprun"

