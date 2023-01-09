let g:airline_powerline_fonts = 1
set guifont=MesloLGS\NF:s14
let g:airline_theme = 'minimalist'
 "powerline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
  
let g:airline_section_z = airline#section#create_right(['Ln%3l','Col%3v'])

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 0

