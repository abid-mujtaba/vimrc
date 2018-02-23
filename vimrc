"
" Author : Abid H. Mujtaba
"
set nocompatible
filetype off			" Required by vundle

set rtp+=~/.vim/bundle/Vundle.vim 		" Set the runtime path to include Vundle
call vundle#begin()						" Initialize vundle


set mouse=a
syntax on


" Let Vundle manage itself (required by Vundle)
Plugin 'VundleVim/Vundle.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'itchyny/lightline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
" nerdcommenter
" tlib_vim
" vim-addon-mw-utils
" vim-markdown
" vim-surround
" ? badwolf

call vundle#end()

syntax on


" Set shell to /bin/bash (since Vundle conflicts with fish shell)
set shell=/bin/bash

"
"
"Prevent vim from automatically inserting a new line after 80 characters.
"
"set textwidth=0
"set formatoptions-=roc
"
"
" Turn off modeline. This means vim won't read first and last 5 lines of files for internal configuration information. e.g. ~/.config/luakit/binds.lua on the last line
"
set nomodeline
"
"set spell
"
" Show various keys being pressed when issuing commands in command mode. This allows for visual cues when multiple keys need to be pressed to get a command to work.
"
set showcmd
"
" 
" Keep 2 lines above or below your current position (if possible) to maintain context while scrolling. (Scroll Offset)
"
set scrolloff=2
"
" Standard tab completion behaviour for filenames inside vim
"
set wildmode=longest,list
"
"
" Command for using the key combination 'jk' in the place of <Esc> for getting out of Insert Mode in to Command Mode which is why it is implemented using inoremap:
"
inoremap jk <Esc>
"
"
" Make the space key in normal mode insert a single letter. Simply navigate to the position you want to insert (not replace) a single character and then type space followed by the letter you want to insert.
"
" Explanation : Pressing space triggers the sequece 'i_<esc>r' which means first i is pressed to enter insert mode, then a single underscore character is entered as a visible place-holder. Then <esc> is pressed to exit insert mode and then 'r' is pressed in normal mode which allows one to over-write the single underscore character with the next key that is pressed. Simple and elegant.
"
nmap <space> i_<esc>r
"
"
" Enable vim-folding i.e. cold folding.
"
set foldmethod=indent	"fold based on indents
set foldnestmax=10	"deepest fold is 10 levels
set nofoldenable	"don't fold by default
set foldlevel=1		"0 also works
"
"
" Specify autospell to be off and numbering to be on for .c (C program) and .py (Python script) files.
"
"autocmd BufRead,BufNewFile  *.c  set number nospell
"autocmd BufRead,BufNewFile  *.py  set number nospell
"
"
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
"
" Create a cython filetype:
"
"au! Syntax cython source /usr/local/share/vim/vim73/syntax/cython.vim
"
"
" Setting cython style syntax highlighting for .spyx and .pyx files:
"
"autocmd BufRead,BufNewFile *.spyx,*.pyx set filetype=cython
"
"
" Settings for vim-latex suite. Note: Some of the shortcuts (F5 and F7 in particular) are over-written by latex-suite and will need to be fixed by commenting out the relevant lines (referring to remapping F5 and F7) from ~/.vim/ftplugin/.... (can be found by grepping ~/.vim recursively for F5 and F7)
"
"filetype plugin on
"set grepprg=grep\ -nH\ $*
"filetype indent on
"filetype on
"let g:tex_flavor='latex'
"set iskeyword+=:
"
" Set tab length to just 4 spaces, better for tex files:
"
autocmd BufRead,BufNewFile *.tex set shiftwidth=4
"
" Turn on spell check for tex files and specify spell checking for ALL environments:
"
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType tex syntax spell toplevel
"
"
" Map shorter key combinations (following a colon) to larger tab controlling sequences in insert and normal mode:
"
imap <C-Tab> :tabnext<CR>
imap <C-S-Tab> :tabprev<CR>

nmap tn :tabnext<CR>
nmap tp :tabprev<CR>
nmap tf :tabfirst<CR>
nmap tl :tablast<CR>
"
"
" Tab control while in Insert mode:
"
" Same controls used in normal mode:
"
"nmap <C-q> :tabprev<CR>
nmap <C-a> :tabnext<CR>
"
"
" Toggle numbering of lines with F9 (Note: toggline is done by inserting an exclamation point at the end of the setting) (Note: number? means the new state of the setting is displayed in the status bar)
"
nmap <F9> :set number! number?<CR>
imap <F9> <Esc>:set number! number?<CR>i
"
"
" Toggle hightlighting of searched items:
"
nmap <F8> :set hlsearch! hlsearch?<CR>
imap <F8> :set hlsearch! hlsearch?<CR>
"
"
" Toggle spell-checker:
"
nmap <F3> :set spell! spell?<CR>
imap <F3> <Esc>:set spell! spell?<CR>i
"
"
" Run make using the F5 key
" First save the file and then run 'make'
nmap <F5> :w<CR>:!make<CR><CR>
" In insert mode we first escape out of it, then save the file using ':w' and
" then run make
imap <F5> <Esc>:w<CR>:!make<CR><CR>
"
"
" Mappings when using Urdu in Vim:
"
" Using جک to leave insert mode and enter normal (command) mode just as 'jk' does in English layout
"
inoremap جک <Esc>
"
"
" Mapping Urdu س to English s for substituion
"
nmap :س :s
vmap :س :s
"
"
" Mapping Urdu و to English w for writing the file
"
nmap :و :w
"
"
" Various mappings to emulate normal-mode keys while using Urdu
"
nnoremap ی i
nnoremap ِ I

nnoremap د d

nnoremap گ g
nnoremap غ G

nnoremap ا a
nnoremap آ A

"nnoremap 4 $
"nnoremap 6 ^

nnoremap ب b
nnoremap ع e
nnoremap و w

nnoremap ج j
nnoremap ح h
nnoremap ک k
nnoremap ل l

nnoremap ر r
nnoremap ڑ R

nnoremap ہ o
nnoremap ۃ O

nnoremap پ p

nnoremap ش x
"
"
" Settings to make python completion work in vim
"
"filetype plugin on
"let g:pydiction_location = '/home/abid/.vim/ftplugins/pydiction/complete-dict'

" Further configuration options based on: http://nvie.com/posts/how-i-boosted-my-vim/

set hidden

"set nowrap		" don't wrap lines
set textwidth=0     " Don't wrap lines physically
set tabstop=4	" a tab is 4 spaces
set backspace=indent,eol,start		" allow backspacing over eveything in insert mode
set autoindent		" always set autoindenting on
set copyindent		" copy the previous indentation on autoindenting
"set number			" always show line numbers
set shiftwidth=4	" number of spaces to use for autoindenting
set shiftround		" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch		" set show matching parenthesis
set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab			" insert tabs on the start of a line according to shiftwidth, not tabstop
"set expandtab
set hlsearch		" highlight search terms 
set incsearch		" show search matches as you type
set history=1000	" remember more commands and search history
set undolevels=1000	" use more levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class.*.aux,*.log,*.pdf		" Ignore these files when matching
set title			" change the terminal's title
set visualbell		" don't beep
set t_vb=           " Disables visual bell which is a super-annoying flashing of the screen.
set noerrorbells	" don't beep

set nobackup		" Stop vim from creating backup files. In Git we trust.
set noswapfile

"filetype plugin indent on		" Indenting intelligence is enabled based on the syntax rules for the file type

" In normal mode we will use ; like : so we can avoid hitting the Shift key repeatedly
nnoremap ; :

" The following allows j and k to move up and down within wrapped lines
nnoremap j gj
nnoremap k gk

" Change the <leader> key from \ to , for easier access to leaders
let mapleader=","   

" Change search regex from Vim to the Python/Perl standard
nnoremap / /\v
vnoremap / /\v

" Assign <leader> followed by space key (,<space>) to clear highlighting of search items on request
nnoremap <leader><space> :noh<cr>


" Leader commands (user-specified custom commands launched with the mapleader which we have specified is ','

" <leader>1 will copy the current line, paste it below, select it and then replace all characters with the '=' character. Useful for editing rst files
nnoremap <leader>1 yypVr=

" Settings for Vim-Latex suite.
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'
"set sw=2
"set iskeyword+=:


" Settings for plasticboy/vim-markdown syntax highlighter
let g:vim_markdown_math = 1
"
"
" Map Ctrl+N to issue the comma+c+space command used by NerdCommenter to
" toggle line commenting and then move to the next line.
nmap <C-K> <leader>c<Space>j
vmap <C-K> <leader>c<Space>
imap <C-K> <Esc><leader>c<Space>i


" Map <leader>b (,b) to surround the current word (in normal mode) with \textbf{   } to make it
" bold
nmap <leader>b <Esc>:call NormalTextBFWrap()<CR>
"
" Define the function for wrapping visual selection with \textbf{   }
function! NormalTextBFWrap()
    " In normal mode 'e' jumps to end of word, 'a' enters insert mode after current character (last of word) and then '}' is inserted
    exe "normal ea}"
    " In normal 'b' jumps to start of word, 'i' enter insert mode before
    " current character and then \textbf{ is inerted
    exe "normal bi\\textbf{"
endfunction
"
"
" YouCompleteMe settings to close function preview window on insertion
let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1

" Vim-GitGutter settings
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
