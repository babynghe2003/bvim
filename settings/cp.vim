if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif

" important option that should already be set!
set hidden

" available options:
" * g:split_term_style
" * g:split_term_resize_cmd
function! TermWrapper(command) abort
	if !exists('g:split_term_style') | let g:split_term_style = 'vertical' | endif
	if g:split_term_style ==# 'vertical'
		let buffercmd = 'vnew'
	elseif g:split_term_style ==# 'horizontal'
		let buffercmd = 'new'
	else
		echoerr 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'' but is currently set to ''' . g:split_term_style . ''')'
		throw 'ERROR! g:split_term_style is not a valid value (must be ''horizontal'' or ''vertical'')'
	endif
	exec buffercmd
	if exists('g:split_term_resize_cmd')
		exec g:split_term_resize_cmd
	endif
	exec 'term ' . a:command
	exec 'setlocal nornu nonu'
	exec 'startinsert'
	
endfunction


autocmd FileType cpp command! -nargs=0 CompileAndRun call TermWrapper(printf('g++ -std=c++11 %s && ./a.out', expand('%')))
autocmd FileType cpp command! -nargs=1 -complete=file CompileAndRunWithFile call TermWrapper(printf('g++ -std=c++11 %s && ./a.out < %s', expand('%'), <q-args>))
autocmd FileType cpp nnoremap fw :CompileAndRun<CR>


" For those of you that like to use -o and a specific outfile executable
" (i.e., xyz.cpp makes executable xyz, as opposed to a.out
" This C++ toolkit gives you commands to compile and/or run in different types
" of terminals for your own preference.
augroup CppToolkit
	autocmd!
	autocmd FileType cpp nnoremap <leader>fb :!g++ %:r.cpp && ./a.out<CR>
	autocmd FileType cpp nnoremap <leader>fr :!./%:r.out<CR>
 
augroup END

" (or let g:split_term_resize_cmd = 'vertical resize 40')
" options
" choose between 'vertical' and 'horizontal' for how the terminal window is split
" (default is vertical)
"let g:split_term_style = 'horizontal'


" add a custom command to resize the terminal window to your preference
" (default is to split the screen equally)
"let g:split_term_resize_cmd = 'resize 6'
" (or let g:split_term_resize_cmd = 'vertical resize 40')
let g:split_term_resize_cmd = 'vertical resize 40'
set splitright


autocmd FileType cpp nnoremap <leader>iof :vnew output.txt <bar> new input.txt <CR>

autocmd FileType cpp nnoremap <leader>cpf i#include <bits/stdc++.h><Esc>o#define X first<Esc>o#define Y second<Esc>o#define pb push_back<Esc>o#define ll long long<Esc>o#define ll long long<Esc>o#define pii pair<int, int><Esc>o#define pll pair<long long, long long><Esc>o#define vi vector<int><Esc>o#define vll vector<long long><Esc>o#define mii map<int, int><Esc>o#define si set<int><Esc>o#define sc set<char><Esc>o#define MOD 1000000007<Esc>o#define PI 3.1415926535897932384626433832795<Esc>o<Esc>ousing namespace std;<Esc>o<Esc>ovoid indef(){<Esc>o#ifndef ONLINE_JUDGE<Esc>o    freopen("input.txt","r",stdin);<Esc>o    freopen("output.txt","w",stdout);<Esc>o#endif<Esc>o}<Esc>o<Esc>ovoid solve() {<Esc>o    int n;<Esc>o    cin >> n;<Esc>o    cout << n;<Esc>o<Esc>o}<Esc>o <Esc>oint main() {<Esc>o    ios::sync_with_stdio(false);<Esc>o    cin.tie(nullptr);<Esc>o<Esc>o    indef();<Esc>o<Esc>o    int t = 1;<Esc>o    cin >> t;<Esc>o<Esc>o    while (t--) {<Esc>o        solve();<Esc>o    }<Esc>o<Esc>o    return 0;<Esc>o}

autocmd FileType cpp nnoremap <leader>cpif i#include <bits/stdc++.h><Esc>o#define X first<Esc>o#define Y second<Esc>o#define pb push_back<Esc>o#define ll long long<Esc>o#define ll long long<Esc>o#define pii pair<int, int><Esc>o#define pll pair<long long, long long><Esc>o#define vi vector<int><Esc>o#define vll vector<long long><Esc>o#define mii map<int, int><Esc>o#define si set<int><Esc>o#define sc set<char><Esc>o#define MOD 1000000007<Esc>o#define PI 3.1415926535897932384626433832795<Esc>o<Esc>ousing namespace std;<Esc>o<Esc>ovoid indef(){<Esc>o#ifndef ONLINE_JUDGE<Esc>o    freopen("input.txt","r",stdin);<Esc>o    freopen("output.txt","w",stdout);<Esc>o#endif<Esc>o}<Esc>o<Esc>ovoid solve() {<Esc>o    int n;<Esc>o    cin >> n;<Esc>o    cout << n;<Esc>o<Esc>o}<Esc>o <Esc>oint main() {<Esc>o    ios::sync_with_stdio(false);<Esc>o    cin.tie(nullptr);<Esc>o<Esc>o    indef();<Esc>o<Esc>o    int t = 1;<Esc>o    cin >> t;<Esc>o<Esc>o    while (t--) {<Esc>o        solve();<Esc>o    }<Esc>o<Esc>o    return 0;<Esc>o}<Esc>:vnew output.txt <bar> new input.txt <CR>

