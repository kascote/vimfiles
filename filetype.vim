au BufRead,BufNewFile *.rb set filetype=ruby | compiler ruby
au BufRead,BufNewFile *.rbx set filetype=ruby | compiler ruby
au BufRead,BufNewFile *.rhtml set filetype=eruby

runtime! ftdetect/*.vim
