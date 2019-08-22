""""""""""""""""""""""""
" YouCompleteMe settings

" Close preview window after completion
let g:ycm_autoclose_preview_window_after_completion=1

" Use <leader>g to go to definition (under cursor)
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Use python3.7 to run the ycmd server
let g:ycm_server_python_interpreter = '/opt/bb/bin/python3.7'
""""""""""""""""""""""""

""""""""""""""
" Ale Settings

" Explicitly set the python linters and fixers
let b:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {'python': ['black']}

let g:ale_lint_on_text_changed = 'never' 	" Only lint on file save
let g:ale_lint_on_enter = 0	" Don't lint on file open

" The ale_sign-s use a non-breaking space (unicode: U+00A0, entered using
" Ctrl+v x a 0)
let g:ale_sign_error = ' ✘'
let g:ale_sign_warning = ' •'

" Turn off background highlighting for ALE warnings and errors
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow
""""""""""""""

"""""""""""""""""""
" Fzf Configuration
" This is the default extra key bindings
" let g:fzf_action = {
"   \ 'ctrl-t': 'tab split',
"   \ 'ctrl-x': 'split',
"   \ 'ctrl-v': 'vsplit' }
" "
" " Default fzf layout
" " - down / up / left / right
" let g:fzf_layout = { 'down': '~40%' }
" "
" " In Neovim, you can set up fzf window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" "
" " Customize fzf colors to match your color scheme
" let g:fzf_colors =
" \ { 'fg':      ['fg', 'Normal'],
"   \ 'bg':      ['bg', 'Normal'],
"   \ 'hl':      ['fg', 'Comment'],
"   \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
"   \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
"   \ 'hl+':     ['fg', 'Statement'],
"   \ 'info':    ['fg', 'PreProc'],
"   \ 'prompt':  ['fg', 'Conditional'],
"   \ 'pointer': ['fg', 'Exception'],
"   \ 'marker':  ['fg', 'Keyword'],
"   \ 'spinner': ['fg', 'Label'],
"   \ 'header':  ['fg', 'Comment'] }
"""""""""""""""""""


" " plasticboy/vim-markdown
" let g:vim_markdown_math = 1
"
"
" " Vim-GitGutter
" let g:gitgutter_realtime = 0
" let g:gitgutter_eager = 0
"
"
" " Correct comment type used for LaTeX files
" call tcomment#type#Define('tex', '%% %s')
"
"
" " Vim-Airline Configuration
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1 
" let g:airline_theme='hybrid'
" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1 
"
"
" " Syntastic Configuration
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" "
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
"
"
" " Markdown Syntax Support
" augroup markdown
"     au!
"     au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
" augroup END
"
"
" " Neocomplete Settings
" let g:acp_enableAtStartup = 0
" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#sources#syntax#min_keyword_length = 3
" "
" " Define dictionary.
" let g:neocomplete#sources#dictionary#dictionaries = {
"     \ 'default' : '',
"     \ 'vimshell' : $HOME.'/.vimshell_hist',
"     \ 'scheme' : $HOME.'/.gosh_completions'
"         \ }
" "
" " Define keyword.
" if !exists('g:neocomplete#keyword_patterns')
"     let g:neocomplete#keyword_patterns = {}
" endif
" let g:neocomplete#keyword_patterns['default'] = '\h\w*'
" "
" function! s:my_cr_function()
"   return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
"   " For no inserting <CR> key.
"   "return pumvisible() ? "\<C-y>" : "\<CR>"
" endfunction
"
" " Close popup by <Space>.
" "inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
" "
" " AutoComplPop like behavior.
" "let g:neocomplete#enable_auto_select = 1
" "
" " Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" "
" " Enable heavy omni completion.
" if !exists('g:neocomplete#sources#omni#input_patterns')
"   let g:neocomplete#sources#omni#input_patterns = {}
" endif
" "let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
" "let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
" "let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
"
" " For perlomni.vim setting.
" " https://github.com/c9s/perlomni.vim
" let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
"
"
" "
" " Enable per-command history.
" " CTRL-N and CTRL-P will be automatically bound to next-history and
" " previous-history instead of down and up. If you don't like the change,
" " explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
" let g:fzf_history_dir = '~/.local/share/fzf-history'
"
"
" " Settings for Vim-Latex suite.
" "set grepprg=grep\ -nH\ $*
" "let g:tex_flavor='latex'
" "set sw=2
" "set iskeyword+=:
"
"
"
" """""""""""""""""""""""""""""""""""""
" " Mappings configurationn
" """""""""""""""""""""""""""""""""""""
" map <C-n> :NERDTreeToggle<CR>
" map <C-m> :TagbarToggle<CR>
"
" " Omnicomplete Better Nav
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")
"
" " Neocomplete Plugin mappins
" inoremap <expr><C-g>     neocomplete#undo_completion()
" inoremap <expr><C-l>     neocomplete#complete_common_string()
"
" " Recommended key-mappings.
" " <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"
" " <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"
" " <C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"
" " Mapping selecting Mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)
"
" " Shortcuts
" nnoremap <Leader>o :Files<CR> 
" nnoremap <Leader>O :CtrlP<CR>
" nnoremap <Leader>w :w<CR>
"
" " Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)
