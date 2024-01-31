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
	exec 'term ' . a:command
	exec 'setlocal nornu nonu'
	exec 'startinsert'
endfunction

autocmd FileType verilog command! -nargs=0 CompileAndRun call TermWrapper(printf('iverilog -o %s.vpp %s.v && vvp %s.vpp && gtkwave %s.vcd', expand('%:r'), expand('%:r'), expand('%:r'), expand('%:r')))
autocmd FileType verilog nnoremap fw :CompileAndRun<CR>

let g:split_term_resize_cmd = 'vertical resize 60'
set splitright

autocmd FileType verilog nnoremap <leader>ftb i`timescale 1ns/100ps<Esc>o <Esc>omodule half_adder(a,b,Sum,Carry);<Esc>o<Esc>oinput a, b;<Esc>ooutput Sum, Carry;<Esc>o<Esc>oassign Sum = a ^ b;<Esc>oassign Carry = a & b;<Esc>o<Esc>oendmodule<Esc>o<Esc>omodule half_adder_tb;<Esc>o<Esc>oreg a, b;<Esc>owire Sum, Carry;<Esc>o<Esc>ohalf_adder add1(a,b,Sum, Carry);<Esc>o<Esc>oinitial<Esc>obegin<Esc>o$dumpfile("half_adder.vcd");<Esc>o$dumpvars(0,half_adder_tb);<Esc>o<Esc>o #1<Esc>oa = 0; b = 0; // Sum = 0, Carry = 0<Esc>o#1<Esc>oa = 0; b = 1;<Esc>o#1<Esc>oa = 1; b = 0;<Esc>o#1<Esc>oa = 1; b = 1;<Esc>oend<Esc>o<Esc>oendmodule<Esc>o



