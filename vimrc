"
" Author : Abid H. Mujtaba
"
set nocompatible
syntax on
filetype off			" Required by vundle

set rtp+=~/.vim/bundle/Vundle.vim 		" Set the runtime path to include Vundle
call vundle#begin()						" Initialize vundle


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

filetype plugin indent on		" Indenting intelligence is enabled based on the syntax rules for the file type



" Add settings from other files
source ~/.vim/urdu.vim		" Include mappings for Urdu editing
source ~/.vim/cmds.vim		" autocmds
source ~/.vim/maps.vim		" Custom key mappings
source ~/.vim/settings.vim	" General Settings
source ~/.vim/pluginsettings.vim 	" Settings for individual plugins



" Make the cursor-line transparent while holding on to the highlighted line number
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline		" highlight cursor line
