map <C-a> <Esc>^ggv<S-g>$
map <C-c> "+y
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <F2> <Plug>(coc-rename)
nmap <C-f> <Esc>:Ag<Enter>
nmap gd <Plug>(coc-definition)
nmap gb <C-o>
let g:gitgutter_preview_win_floating = 1
" un map all keys bindings of gitgutter then will map it again
let g:gitgutter_map_keys = 0
" nmap ght <Plug>(GitGutterToggle) 
nmap ghp <Plug>(GitGutterPreviewHunk)
nmap ghu <Plug>(GitGutterUndoHunk)   
nmap ]c <Plug>(GitGutterNextHunk)
nmap [c <Plug>(GitGutterPrevHunk)
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
nmap <leader>pp :Prettier<CR>

nmap đ dd

