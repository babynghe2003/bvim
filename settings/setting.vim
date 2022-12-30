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
set tabstop=4
set shiftwidth=4
set hidden

nnoremap <silent> <2-LeftMouse> :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<cr>:set hls<cr>

set formatoptions-=cro  
set encoding=utf-8
set fileencoding=utf-8                  " The encoding written to file
set fileencodings=utf-8
set fileformats=unix
set nobackup
set nowritebackup
set smartindent
"" Enable CursorLine
set cursorline
highlight CursorLine gui=underline
command! FixWhitespace :%s/\s\+$//e
colorscheme sonokai
set noshowmode

set expandtab 
" Searching
set ignorecase                            " ignore Upper or Lowercase
set smartcase                             " depend of pattern lower or Upper

" set hlsearch                              " hightlight search \
" set incsearch                             " set increment next search result
" https://vimhelp.org/options.txt.html#%27statusline%27
"set tabline=%f\ \|\ %L

"hi! Normal ctermbg=NONE guibg=NONE 
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

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
" Autoclose Tags
let g:closetag_filenames = '*.html,*.xhtml,*.js,*.jsx,*.hbs'
" <Link></Link>  & <link></link> interger 0 | 1
let g:closetag_emptyTags_caseSensitive = 1
" /Autoclose Tags

let g:gitgutter_async=0
let g:gitgutter_diff_base = 'main'
:command Gmaster let g:gitgutter_diff_base = 'master' | GitGutter
:command Gmain let g:gitgutter_diff_base = 'main' | GitGutter
:command Gb let g:gitgutter_diff_base = 'HEAD~0' | GitGutter

let g:coc_global_extensions = ['coc-css','coc-eslint8', 'coc-html' , 'coc-json', 'coc-tsserver','coc-stylelintplus','coc-snippets', 'coc-pairs', 'coc-clangd', 'coc-python', 'coc-git', 'coc-prettier']



