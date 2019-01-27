" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indent instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab

" show line numbers, same as 'set numbers'
" disable with 'set {nonu, nonumbers}
set nu

" show line numbers relative to current line
"set relativenumber

" Uncomment the following to have Vim jump to the last position when                                                       
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Highlight all string matching search
set hlsearch
" Disable 'set nohlsearch'

" Make Ctrl + <direction> navigate 5 lines/columns in that direction for faster navigation
nnoremap <C-j> 5j
nnoremap <C-k> 5k
nnoremap <C-h> 5h
nnoremap <C-l> 5l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Various tools to remember:
"
" Toggle case "HellO" to "hELLo" with g~ then a movement.
" Uppercase "HellO" to "HELLO" with gU then a movement.
" Lowercase "HellO" to "hello" with gu then a movement.
"
" I = insert at front of line
" A = insert at back of line
" Visual block select + [I/A] + <text> + ESC = insert <text> at the start/end of every line selected
"
" Substitute
" :%s/find/replace/g <- the 'g' means every line in the file.
"
" :w %:p.bak = writes the file to a <filename>.bak file. Keeps the original file open in vim though
