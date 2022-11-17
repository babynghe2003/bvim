let g:airline_powerline_fonts = 1
set guifont=MesloLGS\NF:s14
let g:airline_theme = 'ayu_mirage'
" powerline symbols
"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
  "endif
  
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.colnr = ' ℅:'
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = '|'
"let g:airline_symbols.maxlinenr = ' ☰  '
"let g:airline_symbols.dirty='⚡'

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#hunks#enabled=0
"let g:airline#extensions#hunks#coc_git = 1
let g:airline_section_z = airline#section#create_right(['Ln%3l','Col%3v'])
let g:airline#extensions#whitespace#enabled = 0
