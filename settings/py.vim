function! TermWrapper(command) abort
	if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
	if g:split_term_style ==# 'vertical'
		let buffercmd = 'vnew'
	elseif g:split_term_style ==# 'horizontal'
		let buffercmd = 'new'
	else
		echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
		throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
	endif
	exec buffercmd
	if exists('g:split_term_resize_cmd')
		exec g:split_term_resize_cmd
	endif

  let venv_path = Find_venv()
  if !empty(venv_path)
      let venv_path = 'source ./venv/bin/activate && '
    endif

  exec 'term ' . venv_path . a:command 
	exec 'setlocal nornu nonu'
	exec 'startinsert'
	autocmd BufEnter <buffer> startinsert
endfunction

function! Find_venv() abort
    let cwd = getcwd()
    let venv_path = cwd . '/venv'
    if isdirectory(venv_path) && filereadable(venv_path . '/bin/activate')
        return venv_path
    else
        return ''
    endif
endfunction

command! -nargs=0 CompileAndRunPython call TermWrapper(printf('python3 %s', expand('%')))
command! -nargs=1 -complete=file CompileAndRunWithFilePython call TermWrapper(printf('python3 %s >> %s', expand('%'), <q-args>))
autocmd FileType python nnoremap fw :CompileAndRunPython<CR>

let g:split_term_resize_cmd = 'vertical resize 60'

set splitright



