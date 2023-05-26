if !has('gui_running')
  set t_Co=256
endif

set nospell
set mouse=a
set autoindent
set wrap
set number
set relativenumber
set clipboard=unnamedplus
syntax on
set autowrite
set tabstop=2
set shiftwidth=2
set hidden
set formatoptions-=cro
set encoding=utf-8
set fileencoding=utf-8                  " The encoding written to file
set fileencodings=utf-8
set fileformats=unix
set nobackup
set nowritebackup
"set smartindent
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

hi Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi Search ctermfg=250 ctermbg=237 guifg=#e2e2e3 guibg=#3b3e48

augroup autoSave
  autocmd!
  autocmd BufWritePre,FocusLost * silent! Prettier
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


nmap <expr> <silent> <C-d> <SID>select_current_word()
function! s:select_current_word()
  if !get(b:, 'coc_cursors_activated', 0)
    return "\<Plug>(coc-cursors-word)"
  endif
  return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
endfunc
" Autoclose Tags
let g:closetag_filenames = '*.html,*.xhtml,*.js,*.jsx,*.hbs'
let g:closetag_emptyTags_caseSensitive = 1

let g:gitgutter_async=0
let g:gitgutter_diff_base = 'main'
:command Gmaster let g:gitgutter_diff_base = 'master' | GitGutter
:command Gmain let g:gitgutter_diff_base = 'main' | GitGutter
:command Gb let g:gitgutter_diff_base = 'HEAD~0' | GitGutter

let g:coc_global_extensions = ['coc-css','coc-eslint8', 'coc-html' , 'coc-json', 'coc-tsserver','coc-stylelintplus','coc-snippets', 'coc-pairs', 'coc-clangd', 'coc-python', 'coc-git', 'coc-prettier']

let g:indentLine_char = '│ '
let g:indentLine_color_term = 248
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_setColors = 0
let g:indent_blankline_char = '│ '

let g:fzf_preview_window =  'right:50%'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }
let g:fzf_colors = { 'fg': ['fg', 'Normal'], 'bg': ['bg', 'Normal'], 'hl': ['fg', 'Search'], 'fg+': ['fg', 'CursorLine', 'CursorColumn', 'Normal'], 'bg+': ['bg', 'CursorLine', 'CursorColumn'], 'hl+': ['fg', 'Statement'], 'info': ['fg', 'PreProc'], 'border': ['fg', 'Ignore'], 'prompt': ['fg', 'Conditional'], 'pointer': ['fg', 'Exception'], 'marker': ['fg', 'Keyword'], 'spinner': ['fg', 'Label'], 'header': ['fg', 'Comment'] }

let g:neomake_c_cxx_enabled_makers = ['clang']
let g:neomake_c_cxx_clang_maker = {
      \ 'exe': 'clang',
      \ 'args': ['-fsyntax-only', '-Wall', '-Wextra', '-Werror', '-std=c++11'],
      \ 'errorformat':
      \ '%E%f:%l:%c: %m,' .
      \ '%E%f:%l: %m,' .
      \ '%W%f:%l: %m,' .
      \ '%-G%.%#'
      \ }

let g:neomake_c_enabled_makers = ['clang']
let g:neomake_c_clang_maker = {
      \ 'exe': 'clang',
      \ 'args': ['-fsyntax-only', '-Wall', '-Wextra', '-Werror', '-std=c11'],
      \ 'errorformat':
      \ '%E%f:%l:%c: %m,' .
      \ '%E%f:%l: %m,' .
      \ '%W%f:%l: %m,' .
      \ '%-G%.%#'
      \ }

let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {
      \ 'exe': 'clang++',
      \ 'args': ['-fsyntax-only', '-Wall', '-Wextra', '-Werror', '-std=c++11'],
      \ 'errorformat':
      \ '%E%f:%l:%c: %m,' .
      \ '%E%f:%l: %m,' .
      \ '%W%f:%l: %m,' .
      \ '%-G%.%#'
      \ }
autocmd BufEnter * EnableBlameLine

let g:startify_custom_header=[
      \"███╗   ███╗██╗███╗   ██╗██╗  ██╗    ██████╗ ██╗  ██╗██╗",
      \"████╗ ████║██║████╗  ██║██║  ██║    ██╔══██╗██║  ██║██║",
      \"██╔████╔██║██║██╔██╗ ██║███████║    ██████╔╝███████║██║",
      \"██║╚██╔╝██║██║██║╚██╗██║██╔══██║    ██╔═══╝ ██╔══██║██║",
      \"██║ ╚═╝ ██║██║██║ ╚████║██║  ██║    ██║     ██║  ██║██║",
      \"╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝╚═╝",
      \"                                                       ",
      \"███╗   ██╗██╗   ██╗██╗███╗   ███╗                      ",
      \"████╗  ██║██║   ██║██║████╗ ████║                      ",
      \"██╔██╗ ██║██║   ██║██║██╔████╔██║                      ",
      \"██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║                      ",
      \"██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║                      ",
      \"╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝                      ",
      \ ]


