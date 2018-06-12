" Settings for Vim-Latex suite.
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'
"set sw=2
"set iskeyword+=:


" Settings for plasticboy/vim-markdown syntax highlighter
let g:vim_markdown_math = 1


" Vim-GitGutter settings
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Correct comment type used for LaTeX files
call tcomment#type#Define('tex', '%% %s')

