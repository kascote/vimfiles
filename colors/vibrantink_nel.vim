" Vim color scheme
"
" Name:         vibrantink.vim
" Maintainer:   Jo Vermeulen <jo.vermeulen@uhasselt.be>
" Last Change:  05 Oct 2006
"
" This scheme should work in the GUI and in xterm's 256 color mode. It won't
" work in 8/16 color terminals.
"
" I based it on John Lam's initial VibrantInk port to Vim [1]. Thanks to a
" great tutorial [2], I was able to convert it to xterm 256 color mode. And
" of course, credits go to Justin Palmer for creating the original VibrantInk
" TextMate color scheme [3].
"
" [1] http://www.iunknown.com/articles/2006/09/04/vim-can-save-your-hands-too
" [2] http://frexx.de/xterm-256-notes/
" [3] http://encytemedia.com/blog/articles/2006/01/03/textmate-vibrant-ink-theme-and-prototype-bundle

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "vibrantink"

if has("gui_running")
    "highlight Normal guifg=White   guibg=#333333
    highlight Normal guifg=White   guibg=#000000
    highlight Cursor gui=NONE guifg=#ffffff guibg=#ff9020
    highlight nCursor gui=NONE guifg=#000000 guibg=#ed5d2b

    highlight Keyword guifg=#FF6600
    highlight Define guifg=#FF6600
    highlight Delimiter guifg=#888888
    highlight Comment guifg=#B571DF
    highlight Type guifg=White gui=NONE
    highlight rubySymbol guifg=#39ADAD gui=NONE
    highlight Identifier guifg=White gui=bold
    highlight rubyStringDelimiter guifg=#66FF00
    highlight rubyInterpolation guifg=White
    highlight rubyPseudoVariable guifg=#339999
    highlight Constant guifg=#FFEE98
    highlight Function guifg=#FFCC00 gui=NONE
    highlight Include guifg=#FFCC00 gui=NONE
    highlight Statement guifg=#FF6600 gui=NONE
    highlight String guifg=#66FF00
    highlight Search guifg=#ffffff guibg=#44BEE5
    highlight StatusLine guifg=#9C3A35 guibg=#ffffff
    highlight StatusLineNC guifg=#5e2320 guibg=#ffffff
    highlight rubyClassVariable    guifg=#ADD8E6
    highlight rubyInstanceVariable guifg=#51C5EB
    highlight rubyBlockParameter   guifg=#FFBFF6
    highlight rubyGlobalVariable   guifg=#00A4D9

else
    set t_Co=256
    highlight Normal ctermfg=White ctermbg=Black 
    highlight Cursor cterm=NONE ctermfg=15       ctermbg=208
    highlight nCursor cterm=NONE ctermfg=0       ctermbg=190
    highlight Keyword ctermfg=202 
    highlight Define ctermfg=202 
    highlight Delimiter ctermfg=102
    highlight Comment ctermfg=134
    highlight Type ctermfg=15
    highlight rubySymbol ctermfg=73 cterm=NONE
    highlight Identifier ctermfg=White cterm=bold
    highlight rubyStringDelimiter ctermfg=82 
    highlight rubyInterpolation ctermfg=White 
    highlight rubyPseudoVariable ctermfg=66 
    highlight Constant ctermfg=228 
    highlight Function ctermfg=220 
    highlight Include ctermfg=220 
    highlight Statement ctermfg=202
    highlight String ctermfg=82 
    highlight Search ctermbg=White 
    highlight StatusLine ctermfg=131     ctermbg=15
    highlight StatusLineNC ctermfg=52    ctermbg=15
    highlight rubyClassVariable    ctermfg=152
    highlight rubyInstanceVariable ctermfg=80
    highlight rubyBlockParameter   ctermfg=219
    highlight rubyGlobalVariable   ctermfg=38
endif
