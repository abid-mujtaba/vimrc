"
" Author : Abid H. Mujtaba
"
set nocompatible
syntax on
set encoding=utf8
filetype off			" Required by vundle

set rtp+=~/.vim/bundle/Vundle.vim 		" Set the runtime path to include Vundle
call vundle#begin()						" Initialize vundle


set mouse=a


" Let Vundle manage itself (required by Vundle)
Plugin 'VundleVim/Vundle.vim'

" Some of the plugins have been suggested in: https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'Shougo/neocomplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'	

" Generic Programming Support
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-syntastic/syntastic'

" Markdown
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'

" Git
Plugin 'tpope/vim-fugitive'

" Theme / Interface
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'

"Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
" nerdcommenter
" tlib_vim
" vim-addon-mw-utils
" vim-surround
" ? badwolf
" Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'lervag/vimtex'

call vundle#end()
filetype plugin indent on


" Set shell to /bin/bash (since Vundle conflicts with fish shell)
set shell=/bin/bash


" Turn off modeline. This means vim won't read first and last 5 lines of files for internal configuration information. e.g. ~/.config/luakit/binds.lua on the last line
set nomodeline

" Show various keys being pressed when issuing commands in command mode. This allows for visual cues when multiple keys need to be pressed to get a command to work.
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
" Enable vim-folding i.e. cold folding.
"
set foldmethod=indent	"fold based on indents
set foldnestmax=10	"deepest fold is 10 levels
set nofoldenable	"don't fold by default
set foldlevel=1		"0 also works


" Add settings from other files
source ~/.vim/urdu.vim		" Include mappings for Urdu editing
source ~/.vim/cmds.vim		" autocmds
source ~/.vim/maps.vim		" Custom key mappings


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
set number			" always show line numbers
set ruler
set laststatus=2	" Always display the status line
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


" Settings for Vim-Latex suite.
"set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'
"set sw=2
"set iskeyword+=:


" Settings for plasticboy/vim-markdown syntax highlighter
let g:vim_markdown_math = 1
"
"
" Map Ctrl+K to issue the comma+c+space command used by NerdCommenter to
" toggle line commenting and then move to the next line.
nmap <C-K> <leader>c<Space>j
vmap <C-K> <leader>c<Space>
imap <C-K> <Esc><leader>c<Space>i


" Run make using <leader>m (where leader is ',')
nmap <leader>m <Esc>:w<CR>:!make<CR><CR>


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
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1

" Vim-GitGutter settings
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Correct comment type used for LaTeX files
call tcomment#type#Define('tex', '%% %s')


" Make the cursor-line transparent while holding on to the highlighted line number
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline		" highlight cursor line
