
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif

"nnoremap <silent> K :call CocActionAsync('doHover')<CR>

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(1, 'ShowDocIfNoDiagnostic')
endfunction

autocmd FileType js,jsx,ts,tsx CursorHoldI * :call CocActionAsync('doHover') 
autocmd FileType js,jsx,ts,tsx CursorHold * :call CocActionAsync('doHover') 

