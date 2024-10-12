
let mapleader = " "
"imap jk <Esc>
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
nmap <F2> <Plug>(coc-rename)
nmap <C-f> <Esc>:Rg<Enter>
nmap gd <Plug>(coc-definition)
nmap gb <C-o>
let g:gitgutter_preview_win_floating = 1
" un map all keys bindings of gitgutter then will map it again
let g:gitgutter_map_keys = 0
command! -nargs=0 Prettier :CocCommand prettier.forceFormatDocument
nmap <leader>pp :Prettier<CR>
nmap đ dd

"map Ctrl + hjkl to change window
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"map Alt + jk to move line
nnoremap <M-j> :m+<CR>==
nnoremap <M-k> :m-2<CR>==
inoremap <M-j> <Esc>:m+<CR>==gi
inoremap <M-k> <Esc>:m-2<CR>==gi
vnoremap <M-j> :m'>+<CR>gv=gv
vnoremap <M-k> :m-2<CR>gv=gv

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


" Close all the buffers
map <leader>ba :bufdo bd<cr>
map <leader>bc :bdelete<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tn :tabnext<cr>

" diffview.nvim'
nmap <leader>gv :DiffviewClose<CR>
nmap <leader>go :DiffviewOpen<CR>
nmap <leader>gh :DiffviewFileHistory<CR>
"nmap <leader>gm :DiffviewOpen master<CR>

"nmap ght <Plug>(GitGutterToggle) 
nmap <leader>gp <Plug>(GitGutterPreviewHunk)
nmap <leader>gu <Plug>(GitGutterUndoHunk)   
nmap <leader>gj <Plug>(GitGutterNextHunk)
nmap <leader>gk <Plug>(GitGutterPrevHunk)
"nmap conflict
nmap <leader>ncf <Plug>(coc-git-nextconflict)
nmap <leader>pcf <Plug>(coc-git-prevconflict)
nmap <leader>nkc  <Plug>(coc-git-keepcurrent)
nmap <leader>nki  <Plug>(coc-git-keepremote)
nmap <leader>nkb  <Plug>(coc-git-keepboth)

" increase and decrease windows 
map <C-S-Right> :vertical resize +5<CR>
map <C-S-Left> :vertical resize -5<CR>
map <C-S-Up> :resize +5<CR>
map <C-S-Down> :resize -5<CR>


" disable highlight when use mouse
nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>

nnoremap <silent> <Esc> :nohl<CR> 

nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc
