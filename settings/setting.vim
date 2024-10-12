if !has('gui_running')
  set t_Co=256
endif

set nospell
set mouse=a
set autoindent
set wrap
set number
set relativenumber
set clipboard+=unnamedplus
syntax on
set autowrite
set tabstop=4
set shiftwidth=4
set hidden
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

" Autoclose Tags
let g:closetag_filenames = '*.html,*.xhtml,*.js,*.jsx,*.hbs'
let g:closetag_emptyTags_caseSensitive = 1

let g:gitgutter_async=0
let g:gitgutter_diff_base = 'HEAD~0'
:command Gmaster let g:gitgutter_diff_base = 'master' | GitGutter
:command Gmain let g:gitgutter_diff_base = 'main' | GitGutter
:command Gb let g:gitgutter_diff_base = 'HEAD~0' | GitGutter

let g:coc_global_extensions = ['coc-css','coc-eslint8', 'coc-html' , 'coc-tsserver','coc-snippets', 'coc-pairs', 'coc-clangd', 'coc-pyright', 'coc-git', 'coc-prettier']

let g:indentLine_enabled = 0
let g:indentLine_char = '│ '
let g:indentLine_color_term = 248
let g:indentLine_showFirstIndentLevel = 0
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

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
"autocmd BufEnter * EnableBlameLine

let g:startify_custom_header= startify#center([
      \"",
      \"",
      \"",
      \"",
      \"",
      \"",
      \"███╗   ███╗██╗███╗   ██╗██╗  ██╗    ██████╗ ██╗  ██╗██╗",
      \"████╗ ████║██║████╗  ██║██║  ██║    ██╔══██╗██║  ██║██║",
      \"██╔████╔██║██║██╔██╗ ██║███████║    ██████╔╝███████║██║",
      \"██║╚██╔╝██║██║██║╚██╗██║██╔══██║    ██╔═══╝ ██╔══██║██║",
      \"██║ ╚═╝ ██║██║██║ ╚████║██║  ██║    ██║     ██║  ██║██║",
      \"╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝╚═╝",
      \ ])


" set to 1, nvim will open the preview window after entering the Markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when changing
" from Markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, Vim will refresh Markdown when saving the buffer or
" when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be used for all files,
" by default it can be use in Markdown files only
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, the preview server is available to others in your network.
" By default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page.
" Useful when you work in remote Vim and preview on local browser.
" For more details see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" for path with space
" valid: `/path/with\ space/xxx`
" invalid: `/path/with\\ space/xxx`
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page URL in command line when opening preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom Vim function name to open preview page
" this function will receive URL as param
" default is empty
let g:mkdp_browserfunc = ''

" options for Markdown rendering
" mkit: markdown-it options for rendering
" katex: KaTeX options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: whether to disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: means the cursor position is always at the middle of the preview page
"   top: means the Vim top viewport always shows up at the top of the preview page
"   relative: means the cursor position is always at relative positon of the preview page
" hide_yaml_meta: whether to hide YAML metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0,
    \ 'toc': {}
    \ }

" use a custom Markdown style. Must be an absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style. Must be an absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or empty for random
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" use a custom location for images
" recognized filetypes
" these filetypes will have MarkdownPreview... commands
let g:mkdp_filetypes = ['markdown']

" set default theme (dark or light)
" By default the theme is defined according to the preferences of the system
let g:mkdp_theme = 'dark'

" combine preview window
" default: 0
" if enable it will reuse previous opened preview window when you preview markdown file.
" ensure to set let g:mkdp_auto_close = 0 if you have enable this option
let g:mkdp_combine_preview = 0

" auto refetch combine preview contents when change markdown buffer
" only when g:mkdp_combine_preview is 1
let g:mkdp_combine_preview_auto_refresh = 1

" normal/insert
"<Plug>MarkdownPreview
"<Plug>MarkdownPreviewStop
"<Plug>MarkdownPreviewToggle

" example
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle
let g:indentLine_fileTypeExclude = [ 'startify' ]
