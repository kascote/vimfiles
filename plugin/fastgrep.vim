" FastGrep:     External grep search customized for Ruby on Rails search 
" Maintainer:   Nelson Fernandez <crasftsman [at] netflux.com.ar>
" Date:         Aug 13, 2008
" Version:      0.1
" Licence:      MIT Licence
" Language:     vim
" Remark:       Simple solution to search for an string in a project.
" Remark:       Please, if you update this code send it to me to upgrade
" Remark:       the master repository ;)
" Remark:       Some code borrow from Specky!
" Remark:       http://vim.sourceforge.net/scripts/script.php?script_id=2286
" Remark:       and from this TM bundle
" Remark:       http://gist.github.com/4291/

" Flag to open a vertical window, if not exists open a horizontal one
let g:fgVertSplit = 1
" Here can change the path to the search routine
"let g:fgGrepCmd = 'ruby /opt/projects/ruby/grep2.rb'
" Example to map the FastGrep function to a hotkey
execute 'map <F12> :call FastGrep()<CR>'

function! FastGrep()"{{{


	let l:spec   = bufname('%')
	let l:buf    = 'fastgrep:fggreprun'
	let l:bufnum = bufnr( l:buf )

  call inputsave()
  let l:grip = input('Search: ')
  call inputrestore()

  if l:grip == ""
    return
  end
 
	" Squash the old buffer, if it exists.
	"
	if buflisted( l:buf )
		execute 'bd! ' . l:buf
	endif

  execute ( exists('g:fgVertSplit') ? 'vert new ' : 'new ') . l:buf
	setlocal buftype=nofile bufhidden=delete noswapfile filetype=fggreprun
	set foldtext='--'.getline(v:foldstart).v:folddashes

	" Set up some convenient keybindings.
	"
	nnoremap <silent> <buffer> q :close<CR>
	nnoremap <silent> <buffer> e :call <SID>FindGrep('')<CR>
	nnoremap <silent> <buffer> r :call <SID>FindGrep('b')<CR>
	nnoremap <silent> <buffer> f gF<CR>


	" Default cmd for grep
	"
	if !exists( 'g:fgGrepCmd' )
		let g:fgGrepCmd = 'ruby ~/.vim/scripts/fastgrep.rb'
	endif

	" Call spec and gather up the output
	"
	let l:cmd    =  g:fgGrepCmd . ' ' . l:grip
	let l:output = system( l:cmd )
	call append( 0, split( l:output, "\n" ) )
	call append( 0, '' )
	call append( 0, 'Output of: ' . l:cmd  )
	normal gg
  
	" Lockdown the buffer
	"
	setlocal nomodifiable

  "match fastgPlain /specky\c/
  exe 'match Question /' . l:grip . '\c/'

endfunction

" {{{ FindSpecError
"
" Move between results
"
function! <SID>FindGrep(way)
  call search( '\_^\d\+)\s', a:way . 'ew' )
endfunction
" }}}
" 
"}}}

