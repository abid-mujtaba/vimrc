" Specify autospell to be on only for text files and markdown files:
"
autocmd BufRead,BufNewFile  *.txt  set spell
autocmd BufRead,BufNewFile  *.md   set spell
"
"
" Setting django syntax highlighting for (x)html templates:
"
autocmd BufRead,BufNewFile *.html set filetype=htmldjango
autocmd BufRead,BufNewFile *.xhtml set filetype=htmldjango
"
"
" Setting python style syntax highlighting for sage scripts:
"
"autocmd BufRead,BufNewFile *.sage,*.spyx,*.pyx set filetype=python
autocmd BufRead,BufNewFile *.sage set filetype=python

"
" Set tab length to just 4 spaces, better for tex files:
"
" autocmd BufRead,BufNewFile *.tex set shiftwidth=4
"
" Turn on spell check for tex files and specify spell checking for ALL environments:
"
" autocmd FileType tex setlocal spell spelllang=en_us
" autocmd FileType tex syntax spell toplevel
"
"
