let g:vimtex_view_method = 'zathura'
"let g:vimtex_syntax_conceal = []
let g:vimtex_syntax_conceal_disable = 1

let g:vimtex_syntax_packages = {'minted': {'load': 2}}

let g:vimtex_compiler_latexmk = {
            \ 'options' : [
                \   '-shell-escape',
                \   '-verbose',
                \   '-file-line-error',
                \   '-synctex=1',
                \   '-interaction=nonstopmode',
                \ ],
                \}

" Auto close tag $$ and \[\]
inoremap $$ $$<Left>
"inoremap \[ \[\]<Left><Left>


" put \begin{} \end{} tags tags around the current word
imap  <C-B> <ESC>yypi\end{<ESC>lx<S-A>}<ESC>k<S-I>\begin{<ESC>lxA}<ESC>o 
nmap  <C-B> yypi\end{<ESC>lx<S-A>}<ESC>k<S-I>\begin{<ESC>lxA}<ESC>o 

