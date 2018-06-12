" Command for using the key combination 'jk' in the place of <Esc> for getting out of Insert Mode in to Command Mode which is why it is implemented using inoremap:
"
inoremap jk <Esc>


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


" In normal mode we will use ; like : so we can avoid hitting the Shift key repeatedly
nnoremap ; :


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

