" Command for using the key combination 'jk' in the place of <Esc> for getting out of Insert Mode in to Command Mode which is why it is implemented using inoremap:
"
inoremap jk <Esc>


" Use Ctrl+{h,j,k,l} to move between panes
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


" Make the space key in normal mode insert a single letter. Simply navigate to the position you want to insert (not replace) a single character and then type space followed by the letter you want to insert.
"
" Explanation : Pressing space triggers the sequece 'i_<esc>r' which means first i is pressed to enter insert mode, then a single underscore character is entered as a visible place-holder. Then <esc> is pressed to exit insert mode and then 'r' is pressed in normal mode which allows one to over-write the single underscore character with the next key that is pressed. Simple and elegant.
"
nmap <space> i_<esc>r


" Map shorter key combinations (following a colon) to larger tab controlling sequences in insert and normal mode:
"
imap <C-Tab> :tabnext<CR>
imap <C-S-Tab> :tabprev<CR>

nmap tn :tabnext<CR>
nmap tp :tabprev<CR>
nmap tf :tabfirst<CR>
nmap tl :tablast<CR>


" Toggle numbering of lines with F9 (Note: toggline is done by inserting an exclamation point at the end of the setting) (Note: number? means the new state of the setting is displayed in the status bar)
"
nmap <F9> :set number! number?<CR>
imap <F9> <Esc>:set number! number?<CR>i


" Toggle hightlighting of searched items:
"
nmap <F8> :set hlsearch! hlsearch?<CR>
imap <F8> :set hlsearch! hlsearch?<CR>


" Toggle spell-checker:
"
nmap <F3> :set spell! spell?<CR>
imap <F3> <Esc>:set spell! spell?<CR>i


" The following allows j and k to move up and down within wrapped lines
nnoremap j gj
nnoremap k gk


" Change search regex from Vim to the Python/Perl standard
nnoremap / /\v
vnoremap / /\v


" Assign <leader> followed by space key (,<space>) to clear highlighting of search items on request
nnoremap <leader><space> :noh<cr>


" Leader commands (user-specified custom commands launched with the mapleader which we have specified is ','
"
" Change the <leader> key from \ to , for easier access to leaders
let mapleader=","   
"
" <leader>1 will copy the current line, paste it below, select it and then replace all characters with the '=' character. Useful for editing rst files
nnoremap <leader>1 yypVr=


" Run make using <leader>m (where leader is ',')
nmap <leader>m <Esc>:w<CR>:!make<CR><CR>


" Map <leader>b (,b) to surround the current word (in normal mode) with \textbf{   } to make it
" bold
" nmap <leader>b <Esc>:call NormalTextBFWrap()<CR>
"
" Define the function for wrapping visual selection with \textbf{   }
function! NormalTextBFWrap()
    " In normal mode 'e' jumps to end of word, 'a' enters insert mode after current character (last of word) and then '}' is inserted
    exe "normal ea}"
    " In normal 'b' jumps to start of word, 'i' enter insert mode before
    " current character and then \textbf{ is inerted
    exe "normal bi\\textbf{"
endfunction

" Terminal maps:
"
" Use <Esc> to exit the terminal-mode
:tnoremap <Esc> <C-\><C-n>


" easymotion maps:
"
" Make single <leader> the default prefix for the 'easymotion' plugin.
" This map should be near the bottom otherwise it will get over-ridden
map <Leader> <Plug>(easymotion-prefix)


" fzf maps:
"
" GFiles will only search through files NOT ignored by git
nmap <leader><leader>e :GFiles<CR>
nmap <leader><leader>E :Files<CR>
nmap <leader><leader>b :Buffers<CR>
nmap <leader><leader>h :History<CR>
nmap <leader><leader>t :BTags<CR>
" BLines only searches in current folders
nmap <leader><leader>l :BLines<CR>
" Lines searches in all loaded buffers
nmap <leader><leader>L :Lines<CR>
" Fuzzy search for text in the entire project
nmap <leader><leader>a :Ag<CR>
" Fuzzy search command, search history
nmap <leader><leader>: :History:<CR>
nmap <leader><leader>/ :History/<CR>
" Fuzzy search maps
nmap <leader><leader>M :Maps<CR>


" ALE maps:
"
nmap <leader><leader>f :ALEFix<CR>


" In INSERT mode use <leader>+semi-colon for auto-complete
imap <leader>; <C-N>
