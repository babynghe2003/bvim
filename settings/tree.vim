nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

"" Hiện file ẩn
let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree | wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

"" Mở cùng NERDTree cho tab mới, mặc định là mỗi tab sẽ mở 1 cái mới
autocmd BufWinEnter * silent NERDTreeMirror

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" Tìm file đang mở trong thư mục bên NERDTree (mặc định không sync với nhau)
map <leader>r :NERDTreeFind<cr>

"if has("conceal")
    "syntax clear NERDTreeOpenable
    "syntax clear NERDTreeClosable
    "let s:dirArrows = escape(g:NERDTreeDirArrowCollapsible, '~]\-').escape(g:NERDTreeDirArrowExpandable, '~]\-')
    "exec 'syntax match MarkIndents #\(  \)\{-}\zs \ze \(  \)*\(['.s:dirArrows.' ] \)\?'.g:NERDTreeNodeDelimiter.'# containedin=ALL conceal cchar=|'
"endif

"let g:webdevicons_conceal_nerdtree_brackets = 0
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
