"
" Author : Abid H. Mujtaba
"
set encoding=utf-8
scriptencoding=utf-8

set nocompatible
syntax on
set title
filetype off			" Required by vundle

set rtp+=~/.vim/bundle/Vundle.vim 		" Set the runtime path to include Vundle
call vundle#begin()						" Initialize vundle


" Let Vundle manage itself (required by Vundle)
Plugin 'VundleVim/Vundle.vim'

" Some of the plugins have been suggested in: https://dev.to/allanmacgregor/vim-is-the-perfect-ide-e80

" Utility
" Plugin 'scrooloose/nerdtree'
" Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
" Plugin 'Shougo/deoplete.nvim'
Plugin 'tmhedberg/SimpylFold'
" Loads a local '.local.vimrc' for per-project settings
Plugin 'thinca/vim-localrc'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
" Make word-boundary motion aware of camelCase and snake_case
Plugin 'chaoren/vim-wordmotion'
" Add relative jumps to jump-list so that one can jump back with Ctrl+O
Plugin 'buztard/vim-rel-jump'
Plugin 'easymotion/vim-easymotion'
Plugin 'aykamko/vim-easymotion-segments'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'haya14busa/is.vim'

" git mergetool plugin (better than vimdiff)
Plugin 'samoshkin/vim-mergetool'

" Generic Programming Support
" Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
" Plugin 'vim-syntastic/syntastic'
Plugin 'w0rp/ale'

" Specific Programming Support
Plugin 'vim-scripts/python.vim'
Plugin 'jeetsukumaran/vim-pythonsense'

" Markdown
Plugin 'tpope/vim-markdown'
Plugin 'nelstrom/vim-markdown-folding'
" Plugin 'jtratner/vim-flavored-markdown'

" Git
Plugin 'tpope/vim-fugitive'

" Theme / Interface
Plugin 'ryanoasis/vim-devicons'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'nathanaelkane/vim-indent-guides'

" Colorschemes
Plugin 'abid-mujtaba/kuroi.vim'

" Others
" Plugin 'Valloric/YouCompleteMe'
Plugin 'itchyny/lightline.vim'
" nerdcommenter
" tlib_vim
" vim-addon-mw-utils
" ? badwolf
"
" Plugin 'JuliaEditorSupport/julia-vim'
" Plugin 'lervag/vimtex'

call vundle#end()

filetype plugin indent on		" Indenting intelligence is enabled based on the syntax rules for the file type



" Add settings from other files
" source ~/.vim/urdu.vim		" Include mappings for Urdu editing
source ~/.vim/cmds.vim		" autocmds
source ~/.vim/settings.vim	" General Settings
source ~/.vim/maps.vim		" Custom key mappings
source ~/.vim/pluginsettings.vim 	" Settings for individual plugins



" Make the cursor-line transparent while holding on to the highlighted line number
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline		" highlight cursor line

set background=dark
