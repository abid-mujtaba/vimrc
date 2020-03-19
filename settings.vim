" Settings to make python completion work in vim
"
"filetype plugin on
"let g:pydiction_location = '/home/abid/.vim/ftplugins/pydiction/complete-dict'

" General Settings
" Partially based on: http://nvie.com/posts/how-i-boosted-my-vim/

set encoding=utf8
set mouse=a
set hidden
"set nowrap		" don't wrap lines
set textwidth=0     " Don't wrap lines physically
set tabstop=4	" a tab is 4 spaces
set backspace=indent,eol,start		" allow backspacing over eveything in insert mode
set autoindent		" always set autoindenting on
set copyindent		" copy the previous indentation on autoindenting
set number			" always show line numbers
set relativenumber	" show relative line numbers (when used with 'set number' switches to hybrid mode which shows the absolute line number (only) on the current line)
set ruler
set laststatus=2	" Always display the status line
set shiftwidth=4	" number of spaces to use for autoindenting
set shiftround		" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch		" set show matching parenthesis
" set ignorecase		" ignore case when searching
set smartcase		" ignore case if search pattern is all lowercase, case-sensitive otherwise
" set smarttab		" insert tabs on the start of a line according to shiftwidth, not tabstop
" set expandtab		" Expand tabs in to spaces
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
set shell=/bin/bash		" Set shell to /bin/bash (since Vundle conflicts with fish shell)
set nomodeline		" Turn off modeline. This means vim won't read first and last 5 lines of files for internal configuration information. e.g. ~/.config/luakit/binds.lua on the last line
set showcmd		" Show various keys being pressed when issuing commands in command mode. This allows for visual cues when multiple keys need to be pressed to get a command to work.
set scrolloff=2			" Keep 2 lines above or below your current position (if possible) to maintain context while scrolling. (Scroll Offset)
set wildmode=longest,list		" Standard tab completion behaviour for filenames inside vim
set pastetoggle=<F2>		" Use <F2> to toggle paste mode on and off
"
" Enable vim-folding i.e. cold folding.
"
set foldmethod=indent	"fold based on indents
set foldnestmax=10	"deepest fold is 10 levels
set nofoldenable	"don't fold by default
set foldlevel=1		"0 also works


" Set colorscheme
colorscheme kuroi

" Change search highlight color
highlight Search cterm=None ctermfg=black ctermbg=lightyellow

" Change bad spelling highlight color
highlight clear SpellBad
highlight SpellBad cterm=standout

" Set default view type for netrw (file explorer) to 'tree'
let g:netrw_liststyle = 3

" Turn on persistent undo and set separate folder for storing undo files
set undofile
set undodir=~/.vim/undodir

" Set tabstop for comdb2 schema files and Makefiles
autocmd BufRead,BufNewFile *.csc2 set tabstop=8
autocmd BufRead,BufNewFile Makefile,*.mk set tabstop=8 textwidth=88

" Set python settings for markdown files (which usually contain python code)
autocmd BufRead,BufNewFile *.md set tabstop=4 shiftwidth=4 expandtab textwidth=88

" Make python files pep-8 (and black) compliant
au BufNewFile,BufRead *.py
	\ set tabstop=4 |
	\ set softtabstop=4 |
	\ set shiftwidth=4 |
	\ set textwidth=88 |
	\ set expandtab |
	\ set autoindent |
	\ set fileformat=unix |
	\ set foldmethod=indent

" Configure tab = 4 spaces for Jenkinsfile
au BufNewFile,BufRead Jenkinsfile
	\ set tabstop=4 |
	\ set expandtab

" Flag unnecessary whitespace
" highlight BadWhitespace ctermbg=red guibg=darkred
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Enable maximal highlighting for python
let python_highlight_all=1
