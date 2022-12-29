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
nmap <leader>ncf <Plug>(coc-git-nextconflict)
nmap <leader>pcf <Plug>(coc-git-prevconflict)
nmap <leader>kc  <Plug>(coc-git-keepcurrent)
nmap <leader>ki  <Plug>(coc-git-keepremote)
nmap <leader>kb  <Plug>(coc-git-keepboth)
nmap đ dd

"map Ctrl + hjkl to change window
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"map Alt + jk to move line
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>
