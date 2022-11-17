source $HOME/.config/nvim/settings/airlines.vim
source $HOME/.config/nvim/settings/tree.vim
set nospell
set mouse=a
set autoindent
set wrap
if !has('gui_running')
    set t_Co=256
endif
set number
set clipboard=unnamedplus
syntax on
set autowrite
set tabstop=3
set shiftwidth=3
set hidden

nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>


set nobackup
set nowritebackup
colorscheme sonokai

augroup autoSave
    autocmd!
    autocmd TextChanged,InsertLeave,FocusLost * silent! wall
 augroup END

au FileType c,cpp,objc,objcpp call rainbow#load()
let g:rainbow_active = 1

let g:rainbow_load_separately = [
      \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
      \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
      \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
      \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
      \ ]

let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

hi Search ctermfg=250 ctermbg=237 guifg=#e2e2e3 guibg=#3b3e48

nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc
