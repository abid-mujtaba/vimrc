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
set ruler
set laststatus=2	" Always display the status line
set shiftwidth=4	" number of spaces to use for autoindenting
set shiftround		" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch		" set show matching parenthesis
set ignorecase		" ignore case when searching
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
"
" Enable vim-folding i.e. cold folding.
"
set foldmethod=indent	"fold based on indents
set foldnestmax=10	"deepest fold is 10 levels
set nofoldenable	"don't fold by default
set foldlevel=1		"0 also works

" Change search highlight color
highlight Search cterm=None ctermfg=black ctermbg=lightblue
